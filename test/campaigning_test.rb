require 'test_helper'

# Replace this API key with your own (http://www.campaignmonitor.com/api/)
CAMPAIGN_MONITOR_API_KEY  = '__PUT__YOUR__API__KEY__HERE__'
CLIENT_ID = 'd7acfd4cd2ffffc2d86b8903d18a1276'
CLIENT_TWO_ID = '730acd1e8d27d56bdb87e88685613d72'

class CampaigningTest < Test::Unit::TestCase
  
  def setup
    @cm = Campaigning::Base.new
  end
 
  # def test_clients
  #   clients = @cm.clients
  #   assert clients.length > 0
  #   clients.each{ |c| puts c.clientID + " - " + c.name }
  # end
  #  
  #  
  # def test_client_lists
  #   client = Campaigning::Client.new(CLIENT_ID)
  #   assert client.lists.length > 0
  # end
  # 
  #  
  # def test_client_create
  #   client_created = Campaigning::Client.create(
  #    :company_name => "Orange Company 15",
  #    :contact_name => "Oswald Green15",
  #    :email_address => "og15@user.com",
  #    :country => "Ireland",
  #    :time_zone => @cm.time_zones[1]
  #   )
  #   assert client_created.clientID != nil
  # end
  # 
  # 
  # def test_client_delete
  #   response = Campaigning::Client.delete("50a1893ea0a02fc94f2ee9563766e539")  
  #   puts response.inspect
  # end
  # 
  # def test_client_delete_itself
  #   client = Campaigning::Client.find_by_name("Orange Company 7")
  #   client.delete
  # end
  # 
  # def test_client_segments
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   assert client.segments.length > 0
  #   puts client.segments.inspect
  # end
  # 
  # 
  def test_find_client_by_name
    client = Campaigning::Client.find_by_name("Client One Company")
    puts client.inspect
    # assert client != nil && client.name == "Client One Company"
  end
  # 
  # 
  # def test_get_client_campaigns
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   puts client.campaigns.inspect
  # end
   
  # def test_get_client_details
  #   client = Campaigning::Client.find_by_name("Client Two ")
  #   puts client.details.inspect
  # end 
  # 
  # def test_get_client_suppression_list
  #   client = Campaigning::Client.find_by_name("Client Two ")
  #   puts client.suppression_list
  # end
  # 
  # def test_client_update_access_and_billing
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   response = client.update_access_and_billing(
  #      :access_level => 5 ,
  #      :username => "client_one",
  #      :password => "1234560",
  #      :billing_type => "UserPaysOnClientsBehalf",
  #      :currency => "USD",
  #      :delivery_fee => 6.5,
  #      :cost_per_recipient => 1.5 ,
  #      :design_and_spam_test_fee => 5
  #     )
  #   assert response.code == 0
  # end
  # 
  # def test_client_update_basics
  #   client = Campaigning::Client.find_by_name("Client Two ")
  #   response = client.update_basics(
  #     :company_name => "My new Company",
  #     :contact_name => "Mr. Gordon Newman",
  #     :email_address => "gordon-newman@test.com",
  #     :country => "Ireland",
  #     :time_zone => @cm.time_zones[1]
  #   )
  #   assert response.code == 0
  # end
  # 
  # def test_client_find_list_by_name
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   list = client.find_list_by_name "My Friends"
  #   puts list.inspect
  #   assert list.nil? == false
  # end

  
  # 
  #  def test_user_get_time_zones
  #    time_zones = @cm.time_zones
  #    assert !time_zones.nil?
  #  end 
  #    
  #    
  #  def test_system_date
  #    sys_date = @cm.system_date
  #    assert !sys_date.nil?
  #    puts sys_date
  #  end 
  #   
  # 
  # def test_campaign_create
  #   client = Campaigning::Client.find_by_name("Client One Company")    
  #   response = Campaigning::Campaign.create(
  #     :clientID => client.clientID,
  #     :campaignName => "Campaign by myself RUBY TO DELETE - CODEEEEE",
  #     :campaignSubject => "Campaign by myself - OK - CODEEEEE",
  #     :fromName => "Mr. Gordon2",
  #     :fromEmail => "gordon2@test.com",
  #     :replyTo => "no-reply@test.com",
  #     :htmlUrl => "http://www.campaignmonitor.com/api/method/campaign-create/",
  #     :textUrl => "http://www.google.com.br",
  #     :subscriberListIDs => ["ac52b645c048888a44c87b5f1ecf6b7d"],
  #     :listSegments => client.segments
  #   )
  #   puts response.inspect
  # end
  # 
  # 
  # def test_campaign_bounces
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   puts client.campaigns[1].bounces.inspect
  # end
  #  
  # def test_campaign_lists
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   puts client.campaigns[2].lists.inspect
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
  # def test_campaign_subscriber_clicks
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   puts client.campaigns[0].subscriber_clicks
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
  #   response = Campaigning::Campaign.create(
  #     :clientID => client.clientID,
  #     :campaignName => "Campaign by myself RUBY NEW CREATED",
  #     :campaignSubject => "Campaign by myself - OK",
  #     :fromName => "Mr. Gordon2",
  #     :fromEmail => "gordon2@test.com",
  #     :replyTo => "no-reply@test.com",
  #     :htmlUrl => "http://www.campaignmonitor.com/api/method/campaign-create/",
  #     :textUrl => "http://www.google.com",
  #     :subscriberListIDs => ["ac52b645c048888a44c87b5f1ecf6b7d"],
  #     :listSegments => client.segments
  #   )
  #   
  #   puts client.campaigns[0].send(
  #     :confirmation_email => "userhdhd@test.com",
  #     :send_date => "2009-04-30 11:55:01" # Date format YYYY-MM-DD HH:MM:SS.
  #   ) 
  # end
  
  # def test_subscriber_add
  #   subscriber = Campaigning::Subscriber.new("robertf@test.com", "Robert Franklin")
  #   response = subscriber.add("ac52b645c048888a44c87b5f1ecf6b7d")
  #   assert response.code == 0
  # end
  # 
  # def test_subscriber_add_and_resubscribe
  #   subscriber = Campaigning::Subscriber.new("norag@test.com", "Nora Green")
  #   response = subscriber.add_and_resubscribe("ac52b645c048888a44c87b5f1ecf6b7d")
  #   assert response.code == 0
  # end
  
  
  # def test_subscriber_add_and_resubscribe_with_custom_fields
  #   subscriber = Campaigning::Subscriber.new("user_custon@test.com", "Mr. Custon")
  #   response = subscriber.add_and_resubscribe_with_custom_fields("ac52b645c048888a44c87b5f1ecf6b7d", :CityName => "Dublin", :SponsorName => "Some Sponsor")
  #   assert response.code == 0
  # end
  # 
  # def test_subscriber_add_with_custom_fields
  #   subscriber = Campaigning::Subscriber.new("user_custon2@test.com", "Mr. Custon")
  #   response = subscriber.add_with_custom_fields("ac52b645c048888a44c87b5f1ecf6b7d", :CityName => "London", :SponsorName => "Some Sponsor from London")
  #   assert response.code == 0    
  # end
  # 
  # def test_subscriber_unsubscribe
  #   subscriber = Campaigning::Subscriber.new("user_to_test@test.com") # TODO: Change to get the Subscriber, not to CREATE a new one
  #   response = subscriber.unsubscribe("ac52b645c048888a44c87b5f1ecf6b7d")
  #   puts response.inspect
  #   assert response.code == 0    
  # end
  # 
  # def test_subscriber_actives
  #   subscriber_list = Campaigning::Subscriber.active_subscribers("ac52b645c048888a44c87b5f1ecf6b7d", DateTime.new(y=2009,m=5,d=01, h=01,min=00,s=00))
  #   puts subscriber_list.inspect
  #   assert subscriber_list.length > 0    
  # end
  # 
  # def test_subscriber_is_subscribed
  #   subscriber = Campaigning::Subscriber.new("user_to_test@test.com") # TODO: Change to get the Subscriber, not to CREATE a new one
  #   response = subscriber.is_subscribed?("ac52b645c048888a44c87b5f1ecf6b7d")
  #   puts response.inspect
  #   assert response == false
  # end
  # 
  # def test_subscriber_get_single_subscriber
  #   subscriber = Campaigning::Subscriber.get_single_subscriber("ac52b645c048888a44c87b5f1ecf6b7d", "user_custon2@test.com")
  #   puts subscriber.inspect
  #   assert subscriber.name != nil
  # end
  # 
  # def test_subscriber_get_unsubscribed
  #   subscriber_list = Campaigning::Subscriber.get_unsubscribed("ac52b645c048888a44c87b5f1ecf6b7d", DateTime.new(y=2009,m=4,d=01, h=01,min=00,s=00))
  #   puts subscriber_list.inspect
  #   assert subscriber_list.length > 0    
  # end
  # 
  # 
  # def test_list_create
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   list = Campaigning::List.create(
  #     :client_id => client.clientID,
  #     :title => "New list to test",
  #     :unsubscribe_page => "",
  #     :comfirm_opt_in => false,
  #     :confirmation_success_page => ""
  #   )
  #   assert list.listID != nil
  # end
  # 
  # def test_list_create_custom_field
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   list = client.find_list_by_name "My Friends"
  #   result = list.create_custom_field(
  #     :field_name => "Country" ,
  #     :data_type => "MultiSelectOne",
  #     :options => %w[Brazil Ireland England]
  #   )
  #   assert result.code == 0
  # end
  # 
  # def test_list_delete
  #   result = Campaigning::List.delete("916797045feddc92df10a4722f819771")
  #   puts result.inspect
  # end
  # 
  # def test_list_delete_custom_field
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   list = client.find_list_by_name "My Friends"    
  #   result = list.delete_custom_field("Country")
  #   assert result.code == 0
  # end
  # 
  # def test_list_custom_fields
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   list = client.find_list_by_name "My Friends"
  #   result = list.custom_fields
  #   puts result.inspect
  # end
  # 
  # def test_list_details
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   list = client.find_list_by_name "My Friends"
  #   result = list.details
  #   puts result.inspect
  # end
  # 
  # def test_list_update
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   list = client.find_list_by_name "My Friends"
  #   result = list.update(
  #     :title => "NEW TITLE : My new list created by ruby list.create",
  #     :unsubscribe_page => "",
  #     :comfirm_opt_in => false,
  #     :confirmation_success_page => ""
  #   )
  #   assert result.code == 0
  # end
    
  
end
