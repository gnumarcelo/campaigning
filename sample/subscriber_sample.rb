require 'rubygems'
require 'campaigning'

CAMPAIGN_MONITOR_API_KEY  = '54cae7f3aa1f35cb3bb5bc41756d8b7f'

# The first action you have to do to use the API is creating a new Campaign Monitor Base Class
camp_monitor = Campaigning::Base.new

#
#Creating a list for sample execution
client = Campaigning::Client.find_by_name("Client One Company")
list = Campaigning::List.create(
  :client_id => client.clientID,
  :title => "List for Subscriber Sample Exec",
  :comfirm_opt_in => false
)
LIST_ID = list.listID
puts "New list created: #{list.name} #{list.listID}"

#Creating a Custom Field for sample execution
client = Campaigning::Client.find_by_name("Client One Company")
list = client.find_list_by_name "List for Subscriber Sample Exec"
result = list.create_custom_field(
  :field_name => "City Name" ,
  :data_type => "Text"
)
puts "Custom field City Name created successfuly?: #{result.message}"

result = list.create_custom_field(
  :field_name => "Sponsor Name" ,
  :data_type => "Text"
)
puts "Custom field Sponsor Name created successfuly?: #{result.message}"



EMAIL_1 = "em4@test.com.br"
EMAIL_2 = "em5@test.com.br"
EMAIL_3 = "em6@test.com.br"

#Here is how to add a subscriber (email address, name) to an existing subscriber list.
subscriber = Campaigning::Subscriber.new(EMAIL_1, "Robert Franklin")
result = subscriber.add(LIST_ID)
puts "Was the subscriber add tho the list: #{result.message}"


#Here is how to add and resubscribe a Subscriber to an existing subscriber list.
subscriber = Campaigning::Subscriber.new(EMAIL_2, "Nora Green")
result = subscriber.add_and_resubscribe(LIST_ID)
puts "Was the subscriber add and resubscribed tho the list: #{result.message}"


#Here is how to add a subscriber WITH CUSTOM FIELDS to an existing subscriber list.
subscriber = Campaigning::Subscriber.new(EMAIL_3, "Mr. Custon")
result = subscriber.add_with_custom_fields(
  LIST_ID,
  :CityName => "London", :SponsorName => "Some Sponsor from London" #<-- Both Custom Fields for "City Name" and "Sponsor Name"
)
puts "Was the subscriber WITH custom fields add tho the list: #{result.message}"



#Here is how to add and resubscribe a Subscriber WITH CUSTOM FIELDS to an existing subscriber list.
subscriber = Campaigning::Subscriber.new(EMAIL_3, "Mr. Custon")
result = subscriber.add_and_resubscribe_with_custom_fields(
  LIST_ID, 
  :CityName => "Dublin", :SponsorName => "Some Sponsor" #<-- Both Custom Fields for "City Name" and "Sponsor Name"
)
puts "Was the subscriber WITH custom fields add and resubscribed tho the list: #{result.message}"


#Here is how to change the status of an Active Subscriber to an Unsubscribed Subscriber who will no longer
#receive campaigns sent to that Subscriber List.
result = Campaigning::Subscriber.unsubscribe(EMAIL_2, LIST_ID)
#Or you can use a instance method like:
subscriber = Campaigning::Subscriber.new(EMAIL_1)
result = subscriber.unsubscribe(LIST_ID) # <-- List_ID
puts "Was the subscriber unsubscribed from the list: #{result.message}"


#Here is how to get a list of all active subscribers for a list that have been added since the specified date.
subscriber_list = Campaigning::Subscriber.active_subscribers(LIST_ID, DateTime.new(y=2009,m=5,d=01, h=01,min=00,s=00))
result = subscriber_list.inspect
puts "Here is all active subscribers from the list: #{result}"


#Returns True or False as to the existence of the given email address in the list supplied. 
result = Campaigning::Subscriber.is_subscribed?(EMAIL_2, LIST_ID)
#Or you can use a instance method like:
subscriber = Campaigning::Subscriber.new(EMAIL_3)
result = subscriber.is_subscribed?(LIST_ID)
puts "Was the email subscribed in the list? #{result}"



#This method returns all of a particular subscribers details, including email address, name, active/inactive status
#and all custom field data.
subscriber = Campaigning::Subscriber.get_single_subscriber(LIST_ID, EMAIL_3)
puts "All subscriber details: #{subscriber.inspect}"



#Gets a list of all subscribers for a list that have unsubscribed since the specified date.
subscriber_list = Campaigning::Subscriber.get_unsubscribed(LIST_ID, DateTime.new(y=2009,m=4,d=01, h=01,min=00,s=00))
puts "All subscriber that have unsubscribed from the list: #{subscriber_list.inspect}"


##
#Just deleting a list created for sample execution
list = client.find_list_by_name "List for Subscriber Sample Exec"
result = Campaigning::List.delete( list.listID )
puts "Was the list deleted successfully?  #{result.message}"