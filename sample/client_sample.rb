require 'rubygems'
require 'campaigning'

CAMPAIGN_MONITOR_API_KEY  = '54cae7f3aa1f35cb3bb5bc41756d8b7f'

# The first action you have to do to use the API is creating a new Connection
camp_monitor = Connection.new


# Here is how to get a list of all clients...
puts "\n Here is how to get a list of all clients: \n"
camp_monitor.clients
puts camp_monitor.clients.inspect


# Here is how to create a new client
puts "\n Here is how to create a new client: \n"
client = Campaigning::Client.create(
  :company_name => "Orange Company",
  :contact_name => "Oswald Green",
  :email_address => "og@example.com",
  :country => "Ireland",
  :time_zone => "(GMT) Casablanca" #alternatively you can use "Campaigning.time_zones" to get valid time zones list
)
puts "New Client is: #{client.inspect}"


# Here is how to delete a client
puts "\n Here is how to delete a client: \n"
response = Campaigning::Client.delete(:client_id => "095d676330923fd57a661d7f84d118e0")  
puts response.inspect


#How to get a system Date from the API server
puts "\n How to get a system Date from the API server: \n"
date_time = camp_monitor.system_date
puts date_time.inspect


#How to find a client by his name
puts "\n How to find a client by his name: \n"
client = Campaigning::Client.find_by_name("Client One Company")
puts client.inspect


#How to get all lists belonging to a client
puts "\n How to get all lists belonging to a client: \n"
client = Campaigning::Client.find_by_name("Client One Company")
puts client.lists.inspect


# client = Campaigning::Client.new
# client.company_name = "Orange Company"
# 
# client.create