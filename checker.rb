require 'uri'
require 'net/http'
require 'pp'
require 'ap'

uri = URI.parse("http://sivabudh.com/")
http = Net::HTTP.new(uri.host, uri.port)
request = Net::HTTP::Post.new("/api/v1/login/")
request.add_field('Authorization', 'Basic MDAwMDphYmNk')
response = http.request(request)
puts response.body
