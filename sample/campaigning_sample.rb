require 'rubygems'
require 'campaigning'

CAMPAIGN_MONITOR_API_KEY  = '__PUT__YOUR__API__KEY__HERE__'


#How to get a system Date from the API server
date_time = Campaigning.system_date

puts "API get the system date from the API server: #{date_time.inspect}"


#Here is how to set the debug mode for the SOAP requests
timezones = Campaigning.setup_debug_mode true
puts "API set debug mode to true"


#Here is how to get all the timezones
timezones = Campaigning.timezones
puts "All the timezones supported: #{timezones.inspect}"


#Here is how to get all countries supported by the API
countries = Campaigning.countries
puts "All supported countries: #{countries.inspect}"