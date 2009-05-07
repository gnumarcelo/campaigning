require 'rubygems'
require 'campaigning'

CAMPAIGN_MONITOR_API_KEY  = '54cae7f3aa1f35cb3bb5bc41756d8b7f'

# The first action you have to do to use the API is creating a new Campaign Monitor Base Class
camp_monitor = Campaigning::Base.new


# Here is how to create a campaign
client = Campaigning::Client.find_by_name("Client One Company")
response = Campaigning::Campaign.create(
  :clientID => client.clientID,
  :campaignName => "Campaign created for Campaign Sample",
  :campaignSubject => "Campaign by myself - OK",
  :fromName => "Mr. Gordon2",
  :fromEmail => "gordon2@test.com",
  :replyTo => "no-reply@test.com",
  :htmlUrl => "http://marcosz.com.br/",
  :textUrl => "http://www.google.com.br",
  :subscriberListIDs => ["ac52b645c048888a44c87b5f1ecf6b7d"],
  :listSegments => client.segments
)
puts response.inspect


#Here is how to find a Campaign by subject.
#Return: It will return an Array of Campaign Objects
client = Campaigning::Client.find_by_name("Client One Company")
campaigns = client.find_campaigns_by_subject("Campaign to BOUNCE")    
puts campaigns.inspect


# Here is how to get all the bounces from a client Campaign
client = Campaigning::Client.find_by_name("Client One Company")
client.campaigns.each do |campaign|
  puts campaign.subject
  puts campaign.bounces.inspect
end
# OR you could filter your campaigns by subject (Unortunately there is no way to get a campaign by his name, wich would be better):
client = Campaigning::Client.find_by_name("Client One Company")
campaigns = client.find_campaigns_by_subject("Campaign Client One")
campaigns.each do |campaign|
  puts campaign.subject
  puts campaign.bounces.inspect
end


#Here is how to get the Lists bellonging to a client Campaign
client = Campaigning::Client.find_by_name("Client One Company")
campaigns = client.find_campaigns_by_subject("Campaign Client One")
campaigns.each do |campaign|
  puts campaign.subject
  puts campaign.lists.inspect
end


#Here is how to get a list of all subscribers who opened a given campaign, and the number of times they opened the campaign
client = Campaigning::Client.find_by_name("Client One Company")
campaigns = client.find_campaigns_by_subject("Campaign Client One") 
puts client.campaigns[0].opens


#Gets a list of all subscribers who clicked a link for a given campaign, the ID of the list they belong to,
#the links they clicked, and the number of times they clicked the link.
client = Campaigning::Client.find_by_name("Client One Company")
puts client.campaigns[0].subscriber_clicks


#Gets a statistical summary, including number of recipients and open count, for a given campaign.
client = Campaigning::Client.find_by_name("Client One Company")
puts client.campaigns[1].summary


#Gets a list of all subscribers who unsubscribed for a given campaign.  
client = Campaigning::Client.find_by_name("Client One Company")
puts client.campaigns[0].unsubscribes


# Here is how to schedule an existing campaign for sending.
#The campaign must be imported with defined recipients.
#For campaigns with more than 5 recipients the user must have sufficient credits or their credit card details saved
#within the application for the campaign to be sent via the API.
#For campaigns with 5 recipients or less the user must have enough test campaigns remaining in their API account.
client = Campaigning::Client.find_by_name("Client One Company")
campaigns = client.find_campaigns_by_subject("Campaign Client One")
puts client.campaigns[0].send(
  :confirmation_email => "userhdhd@test.com",
  :send_date => "2009-04-30 11:55:01" # Date format YYYY-MM-DD HH:MM:SS.
) 