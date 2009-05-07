require 'rubygems'
require 'campaigning'

CAMPAIGN_MONITOR_API_KEY  = '__PUT__YOUR__API__KEY__HERE__'



# The first action you have to do to use the API is creating a new Connection
camp_monitor = Campaigning::Base.new(:debug => true)
puts "API set debug mode to TRUE"


#How to get a system Date from the API server
date_time = camp_monitor.system_date
puts "API get the system date from the API server: #{date_time.inspect}"


# Here is how to get a list of all clients...
clients = camp_monitor.clients
puts "All my clients: #{clients.inspect}"


#Here is how to set the debug mode for the SOAP requests
time_zones = camp_monitor.setup_debug_mode false
puts "API set debug mode to false"


#Here is how to get ll the time_zones
time_zones = camp_monitor.time_zones
puts "All the time_zones supported: #{clients.inspect}"
