require 'test_helper'

# Replace this API key with your own (http://www.campaignmonitor.com/api/)
CAMPAIGN_MONITOR_API_KEY  = '__PUT_YOUR_API_KEY_HERE__'

class CampaigningTest < Test::Unit::TestCase


  def setup
    #Campaigning.set_endpoint_url "http://127.0.0.1:8088/mockapiSoap"
    #Campaigning.setup_debug_mode(true)
  end

  def test_campaigning_system_date
    date = Campaigning.system_date
    assert !date.nil?
  end

  def test_user_get_timezones
    timezones = Campaigning.timezones
    assert !timezones.nil?
  end 

  def test_user_countries
    countries = Campaigning.countries
    assert !countries.nil?
  end

  def test_client_get_all_clients
    clients = Campaigning::Client.get_all_clients
    assert clients.length > 0
    #clients.each{ |c| puts c.clientID + " - " + c.name }
  end

  def test_client_lists
    client = Campaigning::Client.find_by_name("Client One Company")    
    assert client.lists.length > 0
  end

  #   
  #  def test_client_create
  #    client_created = Campaigning::Client.create(
  #     :companyName => "My test client",
  #     :contactName => "Oswald Green15",
  #     :emailAddress => "og15@user.com",
  #     :country => "Ireland",
  #     :timezone => Campaigning.timezones[1]
  #    )
  #    assert !client_created.clientID.nil?
  #  end
  # 
  # def test_client_delete
  #   response = Campaigning::Client.delete(client_created.clientID)  
  #   assert response.code == 0
  # end
  # 
  # def test_client_delete_itself
  #   client = Campaigning::Client.find_by_name("Orange Company 7")
  #   client.delete
  # end

  def test_client_segments
    client = Campaigning::Client.find_by_name("Client One Company")
    assert client.segments.length > 0
  end


  def test_find_client_by_name
    client = Campaigning::Client.find_by_name("Client One Company")
    assert !client.nil? && client.name == "Client One Company"
  end


  def test_get_client_campaigns
    client = Campaigning::Client.find_by_name("Client One Company")
    puts client.campaigns.inspect
  end

  def test_get_client_details
    client = Campaigning::Client.find_by_name("Client One Company")
    # client_details = client.details
    # basic_details = client_details.basicDetails
    # access_and_billing_details = client_details.accessAndBilling
    # puts "Basic details:"
    # puts "Client ID: #{basic_details.clientID} - \n
    #       Company: #{basic_details.companyName} - \n
    #       Contact: #{basic_details.contactName} - \n
    #       Country: #{basic_details.country} - \n
    #       Timezone: #{basic_details.timezone}"
    # 
    # puts "Access and Billing Details:"
    # puts "Username: #{access_and_billing_details.username} - \n 
    #       Password: #{access_and_billing_details.password} - \n
    #       Billing Type: #{access_and_billing_details.billingType} - \n
    #       Currency: #{access_and_billing_details.currency} - \n
    #       Delivery Fee: #{access_and_billing_details.deliveryFee} - \n
    #       Cost per Recipient: #{access_and_billing_details.costPerRecipient} - \n
    #       Design and Span test Fee: #{access_and_billing_details.designAndSpamTestFee} - \n
    #       Access Level: #{access_and_billing_details.accessLevel}"

    assert !client.details.nil?

  end 

  def test_get_client_suppression_list
    client = Campaigning::Client.find_by_name("Client One Company")
    puts client.suppression_list.inspect
  end

  def test_client_update_access_and_billing
    client = Campaigning::Client.find_by_name("Client One Company")
    response = client.update_access_and_billing(
    :accessLevel => 5 ,
    :username => "client_one",
    :password => "1234560",
    :billingType => "UserPaysOnClientsBehalf",
    :currency => "USD",
    :deliveryFee => 6.5,
    :costPerRecipient => 1.5 ,
    :designAndSpamTestFee => 5
    )
    assert response.code == 0
  end

  def test_client_update_basics
    client = Campaigning::Client.find_by_name("Client Two")
    response = client.update_basics(
    :companyName => "My new Company",
    :contactName => "Mr. Gordon Newman",
    :emailAddress => "gordon-newman@test.com",
    :country => "Ireland",
    :timezone => Campaigning.timezones[1]
    )
    assert response.code == 0
  end

  def test_client_find_list_by_name
    client = Campaigning::Client.find_by_name("Client One Company")
    list = client.find_list_by_name "My Friends"
    assert list.nil? == false
  end


  # def test_campaign_create
  #   client = Campaigning::Client.find_by_name("Client One Company")    
  #   response = Campaigning::Campaign.create(
  #   :clientID => client.clientID,
  #   :campaignName => "Campaign by myself RUBY TO DELETE - CODEEEEE",
  #   :campaignSubject => "Campaign by myself - OK - CODEEEEE",
  #   :fromName => "Mr. Gordon2",
  #   :fromEmail => "gordon2@test.com",
  #   :replyTo => "no-reply@test.com",
  #   :htmlUrl => "http://www.campaignmonitor.com/api/method/campaign-create/",
  #   :textUrl => "http://www.google.com.br",
  #   :subscriberListIDs => ["ac52b645c048888a44c87b5f1ecf6b7d"],
  #   :listSegments => client.segments
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
  #   response = Campaigning::Campaign.create(
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
  #   puts client.campaigns[0].send(
  #   :confirmationEmail => "userhdhd@test.com",
  #   :sendDate => "2009-04-30 11:55:01" # Date format YYYY-MM-DD HH:MM:SS.
  #   ) 
  # end
  # 
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
  # 
  # 
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
  # 
  # def test_subscriber_is_subscribed
  #   subscriber = Campaigning::Subscriber.new("user_to_test@test.com") # TODO: Change to get the Subscriber, not to CREATE a new one
  #   response = subscriber.is_subscribed?("ac52b645c048888a44c87b5f1ecf6b7d")
  #   puts response.inspect
  #   assert response == false
  # end
  # 
  # 
  # def test_list_find_single_subscriber
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   list = client.find_list_by_name "My Friends"
  #   subscriber = list.find_single_subscriber("user_custon2@test.com")
  #   puts subscriber.inspect
  #   assert subscriber.name != nil
  # end 
  # 
  # def test_list_find_unsubscribed
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   list = client.find_list_by_name "My Friends"
  #   subscriber_list = list.find_unsubscribed(DateTime.new(y=2009,m=4,d=01, h=01,min=00,s=00))
  #   puts subscriber_list.inspect
  #   assert subscriber_list.length > 0    
  # end
  # 
  # def test_list_find_active_subscribers
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   list = client.find_list_by_name "My Friends"
  #   subscriber_list = list.find_active_subscribers(DateTime.new(y=2009,m=5,d=01, h=01,min=00,s=00))        
  #   assert subscriber_list.length > 0
  # end
  # 
  # def test_list_get_all_active_subscribers
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   list = client.find_list_by_name "My Friends"
  #   subscriber_list = list.get_all_active_subscribers  
  #   puts subscriber_list.inspect
  #   assert subscriber_list.length > 0
  # end 
  # 
  # 
  # 
  # def test_list_create
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   list = Campaigning::List.create(
  #   :clientID => client.clientID,
  #   :title => "New list to test",
  #   :unsubscribePage => "",
  #   :confirmOptIn => false,
  #   :confirmationSuccessPage => ""
  #   )
  #   assert list.listID != nil
  # end
  # 
  # def test_list_create_custom_field
  #   client = Campaigning::Client.find_by_name("Client One Company")
  #   list = client.find_list_by_name "My Friends"
  #   result = list.create_custom_field(
  #   :fieldName => "Country" ,
  #   :dataType => "MultiSelectOne",
  #   :options => %w[Brazil Ireland England]
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
  #   :title => "NEW TITLE : My new list created by ruby list.create",
  #   :unsubscribePage => "",
  #   :confirmOptIn => false,
  #   :confirmationSuccessPage => ""
  #   )
  #   assert result.code == 0
  # end


end
