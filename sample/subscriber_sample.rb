require 'rubygems'
require 'campaigning'

CAMPAIGN_MONITOR_API_KEY  = '__PUT__YOUR__API__KEY__HERE__'


# SETUP FOR THIS SAMPLE ---------------------------------------------------------------------
#Creating a list for sample execution
client = Campaigning::Client.find_by_name("Client One Company")
list = Campaigning::List.create!(
  :clientID => client.clientID,
  :title => "List for Subscriber Sample Exec",
  :confirmOptIn => false
)
LIST_ID = list.listID
puts "New list created: #{list.name} #{list.listID}"
#Creating a Custom Field for sample execution
client = Campaigning::Client.find_by_name("Client One Company")
list = client.find_list_by_name "List for Subscriber Sample Exec"
result = list.create_custom_field!(:fieldName => "City Name", :dataType => "Text")
puts "Custom field City Name created successfuly?: #{result.message}"
result = list.create_custom_field!(:fieldName => "Sponsor Name", :dataType => "Text")
puts "Custom field Sponsor Name created successfuly?: #{result.message}"
# /SETUP FOR THIS SAMPLE ---------------------------------------------------------------------





EMAIL_1 = "em4@example.com"
EMAIL_2 = "em5@example.com"
EMAIL_3 = "em6@example.com"

#Here is how to add a subscriber (email address, name) to an existing subscriber list.
subscriber = Campaigning::Subscriber.new(EMAIL_1, "Robert Franklin")
result = subscriber.add!(LIST_ID)
puts "Was the subscriber add tho the list: #{result.message}"


#Here is how to add and resubscribe a Subscriber to an existing subscriber list.
subscriber = Campaigning::Subscriber.new(EMAIL_2, "Nora Green")
result = subscriber.add_and_resubscribe!(LIST_ID)
puts "Was the subscriber add and resubscribed tho the list: #{result.message}"


#Here is how to add a subscriber WITH CUSTOM FIELDS to an existing subscriber list.
subscriber = Campaigning::Subscriber.new(EMAIL_3, "Mr. Custon")
result = subscriber.add!(
  LIST_ID,
  :CityName => "London", :SponsorName => "Some Sponsor from London" #<-- Both Custom Fields for "City Name" and "Sponsor Name"
)
puts "Was the subscriber WITH custom fields add tho the list: #{result.message}"



#Here is how to add and resubscribe a Subscriber WITH CUSTOM FIELDS to an existing subscriber list.
subscriber = Campaigning::Subscriber.new(EMAIL_3, "Mr. Custon")
result = subscriber.add_and_resubscribe!(
  LIST_ID, 
  :CityName => "Dublin", :SponsorName => "Some Sponsor" #<-- Both Custom Fields for "City Name" and "Sponsor Name"
)
puts "Was the subscriber WITH custom fields add and resubscribed tho the list: #{result.message}"


#Here is how to change the status of an Active Subscriber to an Unsubscribed Subscriber who will no longer
#receive campaigns sent to that Subscriber List.
result = Campaigning::Subscriber.unsubscribe!(EMAIL_2, LIST_ID)
#Or you can use a instance method like:
subscriber = Campaigning::Subscriber.new(EMAIL_1)
result = subscriber.unsubscribe!(LIST_ID)
puts "Was the subscriber unsubscribed from the list: #{result.message}"


#Returns True or False as to the existence of the given email address in the list supplied. 
result = Campaigning::Subscriber.is_subscribed?(EMAIL_2, LIST_ID)
#Or you can use a instance method like:
subscriber = Campaigning::Subscriber.new(EMAIL_3)
result = subscriber.is_subscribed?(LIST_ID)
puts "Was the email subscribed in the list? #{result}"




# TEARDOWN FOR THIS SAMPLE --------------------------------------------------------------------
#Just deleting a list created for sample execution
list = client.find_list_by_name "List for Subscriber Sample Exec"
result = Campaigning::List.delete!( list.listID )
puts "Was the list deleted successfully?  #{result.message}"