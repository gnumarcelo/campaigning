require 'rubygems'
require 'campaigning'

CAMPAIGN_MONITOR_API_KEY  = '__PUT__YOUR__API__KEY__HERE__'

# The first action you have to do to use the API is creating a new Campaign Monitor Base Class
camp_monitor = Campaigning::Base.new


# SETUP FOR THIS SAMPLE ---------------------------------------------------------------------
#Creating a Client for this sample execution
client = Campaigning::Client.create(
  :company_name => "Client to Sample",
  :contact_name => "Marcus Cesar",
  :email_address => "og3@example.com",
  :country => "Ireland",
  :time_zone => "(GMT) Casablanca" #alternatively you can use "Campaigning.time_zones" to get valid time zones list
)
puts "New Client created is: #{client.inspect}"
list = Campaigning::List.create(
  :client_id => client.clientID,
  :title => "List from Sample Exec",
  :unsubscribe_page => "http://www.mycompany.com/campaign/ubsubscribe.html", #If not suplied or equals blank (""), default value will be used
  :comfirm_opt_in => false,
  :confirmation_success_page => "" #Default value will be used
)
# /SETUP FOR THIS SAMPLE ---------------------------------------------------------------------




# Here is how to create a campaign
client = Campaigning::Client.find_by_name("Client to Sample")
campaign = Campaigning::Campaign.create(
  :clientID => client.clientID,
  :campaignName => "Campaign created for Campaign Sample",
  :campaignSubject => "Campaign by myself - OK",
  :fromName => "Mr. Gordon2",
  :fromEmail => "gordon2@example.com",
  :replyTo => "no-reply@example.com",
  :htmlUrl => "http://marcosz.com.br/",
  :textUrl => "http://www.google.com.br",
  :subscriberListIDs => [list.listID],
  :listSegments => client.segments
)
puts "New Campaign created is: #{campaign.inspect}"



#Here is how to find a Campaign by subject.
#Return: It will return an Array of Campaign Objects
client = Campaigning::Client.find_by_name("Client to Sample")
campaigns = client.find_campaigns_by_subject("Campaign by myself - OK")    
puts "Campaigns found are: #{campaigns.inspect}"


# Here is how to get all the bounces from a client Campaign
client = Campaigning::Client.find_by_name("Client to Sample")
client.campaigns.each do |campaign|
  puts campaign.subject
  puts campaign.bounces.inspect
end
# OR you could filter your campaigns by subject (Unortunately there is no way to get a campaign by his name, wich would be better):
client = Campaigning::Client.find_by_name("Client to Sample")
campaigns = client.find_campaigns_by_subject("Campaign by myself - OK")
puts "Bounces from a given campaign:"
campaigns.each do |campaign|
  puts campaign.subject
  puts campaign.bounces.inspect
end


#Here is how to get the Lists bellonging to a client Campaign
client = Campaigning::Client.find_by_name("Client to Sample")
campaigns = client.find_campaigns_by_subject("Campaign by myself - OK")
puts "Lists belonging to a given campaign: "
campaigns.each do |campaign|
  puts campaign.subject
  puts campaign.lists.inspect
end


#Here is how to get a list of all subscribers who opened a given campaign, and the number of times they opened the campaign
client = Campaigning::Client.find_by_name("Client One Company")
campaigns = client.find_campaigns_by_subject("Campaign by myself - OK") 
subs_open = client.campaigns[0].opens
puts "Who opened a given campaign: #{subs_open.inspect}"



#Gets a list of all subscribers who clicked a link for a given campaign, the ID of the list they belong to,
#the links they clicked, and the number of times they clicked the link.
client = Campaigning::Client.find_by_name("Client to Sample")
subscriber_clicks = client.campaigns[0].subscriber_clicks
puts "Subscriber Clicks for a given campaign: #{subscriber_clicks.inspect}"


#Gets a statistical summary, including number of recipients and open count, for a given campaign.
client = Campaigning::Client.find_by_name("Client to Sample")
campaign = client.campaigns[1].summary
puts "Summary for a given campaign: #{campaign.inspect}"


#Gets a list of all subscribers who unsubscribed for a given campaign.  
client = Campaigning::Client.find_by_name("Client to Sample")
campaign = client.campaigns[0].unsubscribes
puts "all subscribers who unsubscribed for a given campaign: #{campaign.inspect}"


# Here is how to schedule an existing campaign for sending.
#The campaign must be imported with defined recipients.
#For campaigns with more than 5 recipients the user must have sufficient credits or their credit card details saved
#within the application for the campaign to be sent via the API.
#For campaigns with 5 recipients or less the user must have enough test campaigns remaining in their API account.
client = Campaigning::Client.find_by_name("Client to Sample")
campaigns = client.find_campaigns_by_subject("Campaign by myself - OK")
puts client.campaigns[0].send(
  :confirmation_email => "userhdhd@example.com",
  :send_date => DateTime.now # Date format YYYY-MM-DD HH:MM:SS.
) 



# TEARDOWN FOR THIS SAMPLE --------------------------------------------------------------------
# Deleting a client created for this sample
client = Campaigning::Client.find_by_name("Client to Sample")
result = Campaigning::Client.delete(client.clientID)  
puts "Client deleted successfuly? #{result.message}"
