#!/usr/bin/env python
import sys
import httplib
import json
import crc16
from base64 import b64encode
from hashlib import sha256
from datetime import datetime
from BaseHTTPServer import HTTPServer
from BaseHTTPServer import BaseHTTPRequestHandler
import urlparse



######################## CALLSIGN SETTINGS ########################

callsign = "LetFik3"

###################################################################



def get_query_field(url, field):
    """
    Given a URL, return a list of values for the given ``field`` in the
    URL's query string.
    
    >>> get_query_field('http://example.net', field='foo')
    []
    
    >>> get_query_field('http://example.net?foo=bar', field='foo')
    ['bar']
    
    >>> get_query_field('http://example.net?foo=bar&foo=baz', field='foo')
    ['bar', 'baz']
    """
    try:
        return urlparse.parse_qs(urlparse.urlparse(url).query)[field]
    except KeyError:
        return []

def make_sentence(sentence, checksum_bool): # Function which takes NMEA sentence as an argument
                                            # and returns sentence suitable for uploading to DB
    if sentence[:6] != "$GPGGA":
        return "parse_error"
    try:
        try: 
            if checksum_bool == False:
                parsed = pynmea2.parse(sentence[:-4], checksum_bool)
            else:
                parsed = pynmea2.parse(sentence)
        except pynmea2.ChecksumError:
            return "checksum_error"
    except pynmea2.nmea.ParseError:
        return "parse_error"
    
    if None in (parsed.timestamp, parsed.lat, parsed.lat_dir, parsed.lon, parsed.lon_dir, parsed.altitude, parsed.num_sats):
        return "gps_no_fix" 

    if parsed.lat_dir == 'S':
        parsed.lat = str(float(parsed.lat) * (-1))
    if parsed.lon_dir == 'W':
        parsed.lon = str(float(parsed.lon) * (-1))

    # Creates new sentence in format configured on Habitat's webpage
    new_sentence = callsign + ",%s,%s,%s,%s,%s,%s,%s" % (parsed.timestamp, parsed.lat, parsed.lon, parsed.altitude, parsed.num_sats, noise, flux)
    new_sentence = "$$" + new_sentence + "*" + str(checksum(new_sentence)) + '\n'
    return(new_sentence)

def make_data(sentence, callsign): # Creates data in format suitable for upload to DB
    sentence = b64encode(sentence) 
    data = {
        "type": "payload_telemetry",
        "data": {
            "_raw": sentence
            },
        "receivers": {
            callsign: {
                "time_created": get_date(True),
                "time_uploaded": get_date(True),
                },
            },
    }
    return data

def checksum(sentence): # Returns crc16-citt checksum of ASCII string
    crc = crc16.crc16xmodem(sentence, 0xffff)
    return ('{:04X}'.format(crc))


def get_date(format_bool):
    if format_bool == True:
        return (datetime.utcnow().isoformat("T") + "Z")
    else:
        return datetime.now().strftime("%Y-%m-%dT%H:%M:%S")


def sigfox_decode(sigfoxmsg):

    lat = int(sigfoxmsg[0:6], 16) 
    lon = int(sigfoxmsg[6:12], 16)
    h = int(sigfoxmsg[12:16], 16)
    tmcu = int(sigfoxmsg[16:20], 16)
    vaccu = int(sigfoxmsg[20:24], 16)
    
    tmcu =  0.171417*tmcu - 279.38
    vaccu = (5.681*3.3 / 4096.0) * vaccu
    lat = lat * 360.0 / 16777216.0
    lon = lon * 360.0 / 16777216.0
    
    return({"latitude":lat,"longitude":lon, "elevation":h, "MCU_temp":tmcu, "bat_voltage":vaccu})


class GetHandler(BaseHTTPRequestHandler):

    def do_GET(self):
        parsed_path = urlparse.urlparse(self.path)

        telemetry_data = sigfox_decode(get_query_field(self.path,field='data')[0])

        time = get_date(False)
        latitude = telemetry_data["latitude"]
        longtitude = telemetry_data["longitude"]
        altitude = telemetry_data["elevation"] 


        web_message = '\n'.join([
            'CLIENT VALUES:',
            'client_address=%s (%s)' % (self.client_address,
                self.address_string()),
            'command=%s' % self.command,
            'query_value=%s' % get_query_field(self.path,field='data'),
            'request_version=%s' % self.request_version,
            'time=%s' % time,
            'latitude=%s' % latitude,
            'longitude=%s' % longtitude,
            'altitude=%s' % altitude,
            '',
            'SERVER VALUES:',
            'server_version=%s' % self.server_version,
            'sys_version=%s' % self.sys_version,
            'protocol_version=%s' % self.protocol_version,
            '',
            ])
        self.send_response(200)
        self.end_headers()
        self.wfile.write(web_message)

        print("Sending: " + sentence.rstrip('\n'))    # Prints sentence uploading to DB to the terminal              
        
        """for x in range(0,4):
            try:
                c = httplib.HTTPConnection("habitat.habhub.org") # DB uploader
                c.request(
                    "PUT",
                    "/habitat/_design/payload_telemetry/_update/add_listener/%s" % sha256(b64encode(sentence)).hexdigest(),
                    json.dumps(make_data(sentence, callsign)),  # BODY
                    {"Content-Type": "application/json"}  # HEADERS
                    )

                response = c.getresponse() # Prints response from DB

                print "Status:", response.status, response.reason, "\n" # Prints response from DB and creates log entry
                printer.write('{:05}'.format(index) + "," + gps_output + "," + str(response.reason) + "\n")
                printer_raw.write('{:05}'.format(index_raw) + "," + gps_output + "," + str(response.reason) + "\n")
                index_raw += 1
                index += 1
                break

            except Exception:
                if x < 3:
                    print "No internet connection. Repeating upload... [" + str(x + 1) +"/3]" # In case of no internet connection repeats upload three times
                else:
                    print "Error! No internet connection - sentence not sent\n" # If after three tries is sentence not uploaded, create log entry and continue
                    printer.write('{:05}'.format(index) + "," + gps_output + "," + "Upload_error" + "\n")
                    printer_raw.write('{:05}'.format(index_raw) + "," + gps_output + "," + "Upload_error" + "\n")
                    index_raw += 1
                    index += 1

        """
        return

if len(sys.argv) < 2: # Terminate program, if run without defining port as an argument
    print "Usage: python %s [callsign]" % sys.argv[0]
    sys.exit()

callsign = sys.argv[1]
date = get_date(False)

printer = open(date + "_parsed_balloon_output_log", 'w') # Creates logfile of sucesfully parsed sentences with current date and time in its name
printer_raw = open(date + "_raw_balloon_output_log.txt", 'w') # Creates logfile of all received data

 # Writes HEADER to the logffile
printer.write("Entry_id,GPS_message_type,Time,Lat,Lat_dir,Lon,Lon_dir,GPS_equal,Num_sats,Horizontal_dil,Altitude,Altitude_units,Geo_sep,Geo_sep_units,Age_gps_data,Ref_station_id,Upload_status\n")
printer_raw.write("Entry_id,GPS_message_type,Time,Lat,Lat_dir,Lon,Lon_dir,GPS_equal,Num_sats,Horizontal_dil,Altitude,Altitude_units,Geo_sep,Geo_sep_units,Age_gps_data,Ref_station_id,Upload_status\n")


server = HTTPServer(('', 8080), GetHandler)
print 'Starting server at http://localhost:8080'
server.serve_forever()
