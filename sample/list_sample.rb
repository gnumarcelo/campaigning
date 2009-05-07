require 'rubygems'
require 'campaigning'

CAMPAIGN_MONITOR_API_KEY  = '__PUT__YOUR__API__KEY__HERE__'

# The first action you have to do to use the API is creating a new Campaign Monitor Base Class
camp_monitor = Campaigning::Base.new(:debug => true)


#Here is how to create a brand new subscriber list
#For mor information about parameter, please check at http://www.campaignmonitor.com/api/method/list-create/
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


#Here is how to delete a list
list = client.find_list_by_name "My new list created by ruby list_sample"
result = Campaigning::List.delete( list.listID )
puts "Was my list deleted successfully?  #{result.message}"


#Deleting another list
list = client.find_list_by_name "List from Sample Exec2" 
result = Campaigning::List.delete( list.listID )
puts "Was my second list deleted successfully?  #{result.message}"


