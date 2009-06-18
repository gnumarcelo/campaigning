require 'rubygems'
require 'campaigning'

CAMPAIGN_MONITOR_API_KEY  = '__PUT__YOUR__API__KEY__HERE__'


# Here is how to get a list of all clients...
clients = Campaigning::Client.get_all_clients
puts "All my clients: #{clients.inspect}"


# Here is how to create a new client
client = Campaigning::Client.create(
  :companyName => "Company to Sample Client",
  :contactName => "Oswald Green Sample",
  :emailAddress => "og233@example.com",
  :country => "Ireland",
  :timezone => "(GMT) Greenwich Mean Time : Dublin, Edinburgh, Lisbon, London" #alternatively you can use "Campaigning.timezones" to get valid time zones list
)
puts "New Client created is: #{client.inspect}"

client_two = Campaigning::Client.create(
  :companyName => "Company Gordon",
  :contactName => "Mr. Gordon",
  :emailAddress => "gordon3@example.com",
  :country => "Ireland",
  :timezone => "(GMT) Greenwich Mean Time : Dublin, Edinburgh, Lisbon, London" #alternatively you can use "Campaigning.timezones" to get valid time zones list
)
puts "Other new Client created is: #{client_two.inspect}"



# SETUP FOR THIS SAMPLE ---------------------------------------------------------------------
#Creating a list for this sample execution
client = Campaigning::Client.find_by_name("Company to Sample Client")
list = Campaigning::List.create(
  :clientID => client.clientID,
  :title => "List people from Chicago",
  :confirmOptIn => false
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


#How to get a list of all campaigns that have been sent for a client.
client = Campaigning::Client.find_by_name("Company to Sample Client")
campaigns = client.campaigns
puts "Campaigns that have been sent for a client: #{campaigns.inspect}"


#How to get a list of all subscriber segments for a client.
client = Campaigning::Client.find_by_name("Company to Sample Client")
puts "All subscriber segments for a client: #{client.segments.inspect}"


#How to get all subscribers in the client-wide suppression list.
client = Campaigning::Client.find_by_name("Company to Sample Client")
puts "Client suppression list: #{client.suppression_list}"


#How to update the access and billing settings of an existing client, leaving the basic details untouched.
#Consult the API website for more information: http://www.campaignmonitor.com/api/method/client-updateaccessandbilling/
client = Campaigning::Client.find_by_name("Company to Sample Client")
response = client.update_access_and_billing(
   :accessLevel => 5 ,
   :username => "client_comp_s",
   :password => "1234560",
   :billingType => "UserPaysOnClientsBehalf",
   :currency => "USD",
   :deliveryFee => 6.5,
   :costPerRecipient => 1.5 ,
   :designAndSpamTestFee => 5
  )
puts "Was the Client successfuly updated?: #{response.message}"


#How to get the complete account and billing details for a particular client.
client = Campaigning::Client.find_by_name("Company to Sample Client")
#puts "Client details: #{client.details.inspect}"
puts "Client details: "
client_details = client.details
basic_details = client_details.basicDetails
access_and_billing_details = client_details.accessAndBilling
puts "Basic details:"
puts "Client ID: #{basic_details.clientID}\n
      Company: #{basic_details.companyName}\n
      Contact: #{basic_details.contactName}\n
      Country: #{basic_details.country}\n
      Timezone: #{basic_details.timezone}"

puts "Access and Billing Details:"
puts "Username: #{access_and_billing_details.username}\n 
      Password: #{access_and_billing_details.password}\n
      Billing Type: #{access_and_billing_details.billingType}\n
      Currency: #{access_and_billing_details.currency}\n
      Delivery Fee: #{access_and_billing_details.deliveryFee}\n
      Cost per Recipient: #{access_and_billing_details.costPerRecipient}\n
      Design and Span test Fee: #{access_and_billing_details.designAndSpamTestFee}\n
      Access Level: #{access_and_billing_details.accessLevel}"



#How to update the basic details of an existing client.
#Please note that the client’s existing access and billing details will remain unchanged by a call to Client.update_basics.
client_two = Campaigning::Client.find_by_name("Company Gordon")
response = client.update_basics(
  :companyName => "My new Company",
  :contactName => "Mr. Gordon Newman",
  :emailAddress => "gordon-newman43@example.com",
  :country => "Ireland",
  :timezone => "(GMT) Greenwich Mean Time : Dublin, Edinburgh, Lisbon, London"
)
puts "Was the other Client successfuly updated?: #{response.message}"


# Here is how to delete a client
result = Campaigning::Client.delete(client.clientID)  
puts "Client deleted successfuly? #{result.message}"
#Or you can use a instance method like:
client = Campaigning::Client.find_by_name("My new Company")
result = client.delete
puts "Client two deleted successfuly? #{result.message}"

