require 'test_helper'

# Replace this API key with your own (http://www.campaignmonitor.com/api/)
CAMPAIGN_MONITOR_API_KEY  = '54cae7f3aa1f35cb3bb5bc41756d8b7f'

class CampaignTest < Test::Unit::TestCase


  def setup
    #Campaigning.set_endpoint_url "http://127.0.0.1:8088/mockapiSoap"
    Campaigning.set_debug_mode(:on)
  end

  def test_campaign_create
    client = Campaigning::Client.find_by_name("Client One Company")    
    response = Campaigning::Campaign.create!(
    :clientID => client.clientID,
    :campaignName => "Campaign by Campaigning TO DELETE - CODEE",
    :campaignSubject => "Campaign by myself - OK - CODEE",
    :fromName => "Mr. Gordon23",
    :fromEmail => "gordon23@test.com",
    :replyTo => "no-reply@test.com",
    :htmlUrl => "http://www.google.com.br",
    :textUrl => "http://www.google.com.br",
    :subscriberListIDs => ["ac52b645c048888a44c87b5f1ecf6b7d"],
    :listSegments => client.segments
    )
    Campaigning::Campaign.delete!(response)
    puts response.inspect
  end
  
  
  # def test_campaign_delete!
  #   client = Campaigning::Client.find_by_name("Client One Company")    
  #   response = Campaigning::Campaign.delete!(response)
  #   puts response.inspect
  # end
  
  # def test_campaign_bounces
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   puts client.campaigns[1].bounces.inspect
  # end
  # 
  # def test_campaign_lists
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   client.campaigns[0].lists
  # end
  # 
  # def test_campaign_opens
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   puts client.campaigns[0].opens
  # end
  # 
  # def test_campaign_find_campaigns_by_subject
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   campaigns = client.find_campaigns_by_subject("Campaign to BOUNCE")    
  #   assert campaign.length > 0
  # end
  # 
  # 
  # def test_campaign_summary
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   # client.campaigns[2].subscriber_clicks.each do |subscriber|
  #   #   puts "Subscriber: #{subscriber.emailAddress}"
  #   #   subscriber.clickedLinks.each { |clicked| puts "Link: #{clicked.link} - Number of clicks: #{clicked.clicks}"}
  #   # end
  #   assert client.campaigns[2].subscriber_clicks != nil
  #   assert client.campaigns[2].subscriber_clicks != []
  # 
  # end
  # 
  # 
  # def test_campaign_summary
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   puts client.campaigns[1].summary
  # end
  # 
  # def test_campaign_unsubscribes
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   puts client.campaigns[0].unsubscribes
  # end
  # 
  # def test_campaign_send
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   response = Campaigning::Campaign.create!(
  #   :clientID => client.clientID,
  #   :campaignName => "Campaign by myself RUBY NEW CREATED",
  #   :campaignSubject => "Campaign by myself - OK",
  #   :fromName => "Mr. Gordon2",
  #   :fromEmail => "gordon2@test.com",
  #   :replyTo => "no-reply@test.com",
  #   :htmlUrl => "http://www.campaignmonitor.com/api/method/campaign-create/",
  #   :textUrl => "http://www.google.com",
  #   :subscriberListIDs => ["ac52b645c048888a44c87b5f1ecf6b7d"],
  #   :listSegments => client.segments
  #   )
  # 
  #   puts client.campaigns[0].send!(
  #   :confirmationEmail => "userhdhd@test.com",
  #   :sendDate => "2009-04-30 11:55:01" # Date format YYYY-MM-DD HH:MM:SS.
  #   ) 
  # end
end