# ruby-json-whm
A simple ruby script to connect to WHM and dump DNS Zone configuration of a specified domain

Created script as the current WHM/Cpanel API documentation does not provide any examples for Ruby

Script will connect to WHM using remote access key, then outputs DNS configuration of specified domain to terminal using the dumpzone API call

Script could easily be modified to use any supported API call in JSON format
