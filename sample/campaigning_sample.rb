require 'rubygems'
require 'campaigning'

CAMPAIGN_MONITOR_API_KEY  = '__PUT__YOUR__API__KEY__HERE__'


#How to get a system Date from the API server
date_time = Campaigning.system_date

puts "API get the system date from the API server: #{date_time.inspect}"


#Here is how to set the debug mode for the SOAP requests
time_zones = Campaigning.setup_debug_mode true
puts "API set debug mode to true"


#Here is how to get all the time_zones
time_zones = Campaigning.time_zones
puts "All the time_zones supported: #{time_zones.inspect}"


#Here is how to get all countries supported by the API
countries = Campaigning.countries
puts "All supported countries: #{countries.inspect}"