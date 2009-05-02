require 'rubygems'
require 'campaigning'

CAMPAIGN_MONITOR_API_KEY  = '54cae7f3aa1f35cb3bb5bc41756d8b7f'

# The first action you have to do to use the API is creating a new Connection
camp_monitor = Connection.new

# Here is how to create a campaign
client = Campaigning::Client.find_by_name("Client One Company")
response = Campaigning::Campaign.create(
  :clientID => client.clientID,
  :campaignName => "Campaign by myself RUBY TO DELETE",
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










