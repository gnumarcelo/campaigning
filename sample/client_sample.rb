require 'rubygems'
require 'campaigning'

CAMPAIGN_MONITOR_API_KEY  = '__PUT__YOUR__API__KEY__HERE__'

# The first action you have to do to use the API is creating a new Connection
camp_monitor = Campaigning::Base.new


# Here is how to get a list of all clients...
clients = camp_monitor.clients
puts "All my clients: #{clients.inspect}"


# Here is how to create a new client
client = Campaigning::Client.create(
  :company_name => "Company to Sample Client",
  :contact_name => "Oswald Green Sample",
  :email_address => "og2@example.com",
  :country => "Ireland",
  :time_zone => "(GMT) Casablanca" #alternatively you can use "Campaigning.time_zones" to get valid time zones list
)
puts "New Client created is: #{client.inspect}"



# SETUP FOR THIS SAMPLE ---------------------------------------------------------------------
#Creating a list for this sample execution
client = Campaigning::Client.find_by_name("Company to Sample Client")
list = Campaigning::List.create(
  :client_id => client.clientID,
  :title => "List people from Chicago",
  :comfirm_opt_in => false
)
# /SETUP FOR THIS SAMPLE ---------------------------------------------------------------------


#How to find a client by his name
client = Campaigning::Client.find_by_name("Company to Sample Client")
puts "Client retrieved by his name: #{client.inspect}"


#How to get all Lists belonging to a client
client = Campaigning::Client.find_by_name("Company to Sample Client")
lists = client.lists
puts "Lists belonging to the client: #{lists.inspect}"


#How to get a List by it's name and belonging to a client
client = Campaigning::Client.find_by_name("Company to Sample Client")
list = client.find_list_by_name("List people from Chicago")
puts "Lists belonging by his name: #{lists.inspect}"


#How to get all campaigns belonging to a client
client = Campaigning::Client.find_by_name("Company to Sample Client")
campaigns = client.campaigns
puts "All Campaigns belonging to a Client: #{campaigns.inspect}"


# Here is how to delete a client
result = Campaigning::Client.delete(client.clientID)  
puts "Client deleted successfuly? #{result.message}"

