#!/usr/bin/ruby

require "net/https"
require "uri"

# Enter server address, username, and remote access key from WHM
@server_url = ""
@username = ""
@hash = ""

# Enter domain you want the DNS Zone information for
@domain = ""

uri = URI.parse("https://#{@server_url}:2087/json-api/dumpzone?api.version=1&domain=#{@domain}")
headers = { 'Authorization' => "WHM #{@username}:#{@hash}" }
http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE
request = Net::HTTP::Get.new(uri.request_uri, headers)
response = http.request(request)
puts response.body
