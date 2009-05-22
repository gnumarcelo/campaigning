require 'rubygems'
require 'campaigning'

CAMPAIGN_MONITOR_API_KEY  = '__PUT__YOUR__API__KEY__HERE__'


#Here is how to create a brand new subscriber list
client = Campaigning::Client.find_by_name("Client One Company")
list = Campaigning::List.create(
  :client_id => client.clientID,
  :title => "List from Sample Exec",
  :unsubscribe_page => "http://www.mycompany.com/campaign/ubsubscribe.html", #If not suplied or equals blank (""), default value will be used
  :comfirm_opt_in => false,
  :confirmation_success_page => "" #Default value will be used
)
puts "Here is the new created List: #{list.name} #{list.listID}"
#OR you can remove both optional parameters from the method call like below and default values will be used as well:
list2 = Campaigning::List.create(
  :client_id => client.clientID,
  :title => "List from Sample Exec2",
  :comfirm_opt_in => false
)
puts "Here is my second new created List (without some params): #{list.name} #{list.listID}"


# SETUP FOR THIS SAMPLE ---------------------------------------------------------------------

EMAIL_1 = "another@example.com"
EMAIL_2 = "mrgree@example.com"

#Here is how to add a subscriber (email address, name) to an existing subscriber list.
subscriber = Campaigning::Subscriber.new(EMAIL_1, "Robert Franklin Jr.")
result = subscriber.add(list.listID)
puts "Was the subscriber add tho the list: #{result.message}"

#Here is how to add and resubscribe a Subscriber to an existing subscriber list.
subscriber = Campaigning::Subscriber.new(EMAIL_2, "Nora Green Mor")
result = subscriber.add_and_resubscribe(list.listID)
puts "Was the subscriber add and resubscribed tho the list: #{result.message}"

# /SETUP FOR THIS SAMPLE ---------------------------------------------------------------------



#Here is how to create a new custom field for a list
client = Campaigning::Client.find_by_name("Client One Company")
puts client.inspect
list = client.find_list_by_name "List from Sample Exec"
result = list.create_custom_field(
  :field_name => "Color" ,
  :data_type => "MultiSelectOne", #This must be one of Text, Number, MultiSelectOne, or MultiSelectMany
  :options => %w[Blue Red Orange]
)
#Let's create one more custom field
result1 = list.create_custom_field(
  :field_name => "Contact Type" ,
  :data_type => "MultiSelectOne",
  :options => %w[email post telephone]
)
puts "Was my Color custom field created successfuly? #{result.message}"
puts "Was my Contact Type custom field created successfuly? #{result1.message}"


#Here is how to get all the Custom Fields available for a list
client = Campaigning::Client.find_by_name("Client One Company")
list = client.find_list_by_name "List from Sample Exec"
result = list.custom_fields
puts result.inspect
puts "Here is all my Custom fields from the given list:  #{result.inspect}"
  
  
#How to delete a custom field from a list
client = Campaigning::Client.find_by_name("Client One Company")
list = client.find_list_by_name "List from Sample Exec"    
result = list.delete_custom_field("Color")
puts "Was my Color custom field deleted successfuly? #{result.message}"
#Deleting my Contact Type custom Field
result = list.delete_custom_field("ContactType")
puts "Was my Contact Type custom field deleted successfuly? #{result.message}"  
  
  
#Here is how to get a list of all ACTIVE subscribers for a list that have been added since the specified date.
client = Campaigning::Client.find_by_name("Client One Company")
list = client.find_list_by_name "List from Sample Exec"
subscriber_list = list.find_active_subscribers(DateTime.new(y=2009,m=5,d=01, h=01,min=00,s=00))
result = subscriber_list.inspect


#Here is how to get all ACTIVE subscribers since ever
subscriber_list = list.get_all_active_subscribers
result = subscriber_list.inspect
puts "Here is all active subscribers from the list: #{result}"
  

#Here is how to get a range of subscribers by regular expression
subscriber_list = list.get_all_active_subscribers
subs_list_found = subscriber_list.find_all{|subscriber| subscriber.emailAddress =~ /[\w]+@example.com/}
puts "Here is how to get a range of subscribers by regular expression: #{subs_list_found.inspect}"


#Here is how to get a range of subscribers by string matching
subscriber_list = list.get_all_active_subscribers
subs_list_found = subscriber_list.find_all{|subscriber| subscriber.name == "Robert Franklin Jr."}
puts "Here is how to get a range of subscribers by regular expression: #{subs_list_found.inspect}"  
  
  
#Here is how to get a list’s configuration detail
client = Campaigning::Client.find_by_name("Client One Company")
list = client.find_list_by_name "List from Sample Exec"
result = list.details
puts "Here is my list configuration details:  #{result.inspect}"


#Here is hot to update a subscriber list’s details
client = Campaigning::Client.find_by_name("Client One Company")
list = client.find_list_by_name "List from Sample Exec"
result = list.update(
  :title => "My new list created by ruby list_sample",
  :unsubscribe_page => "", # Default will be used
  :comfirm_opt_in => false,
  :confirmation_success_page => "" #Default will be used
)
puts "Was my list updated successfully?  #{result.message}"


#Gets a list of all subscribers for a list that have unsubscribed since the specified date.
client = Campaigning::Client.find_by_name "Client One Company"
list = client.find_list_by_name "My new list created by ruby list_sample"
subscriber_list = list.find_unsubscribed(DateTime.new(y=2009,m=4,d=01, h=01,min=00,s=00))
puts "All subscriber that have unsubscribed from the list: #{subscriber_list.inspect}"


#This method returns all of a particular subscribers details, including email address, name, active/inactive status
#and all custom field data.
client = Campaigning::Client.find_by_name "Client One Company"
list = client.find_list_by_name "My new list created by ruby list_sample"
subscriber = list.find_single_subscriber(EMAIL_2)
puts "Subscriber details: #{subscriber.inspect}"


#Here is how to delete a list
client = Campaigning::Client.find_by_name("Client One Company")
list = client.find_list_by_name "My new list created by ruby list_sample"
result = Campaigning::List.delete(list.listID)
puts "Was my list deleted successfully?  #{result.message}"


#Deleting another list (instance method)
list = client.find_list_by_name "List from Sample Exec2" 
list.delete
puts "Was my second list deleted successfully: #{list.listID}"


