require 'test_helper'

# Replace this API key with your own (http://www.campaignmonitor.com/api/)
CAMPAIGN_MONITOR_API_KEY  = '__PUT_YOUR_API_KEY_HERE__'

class ClientTest < Test::Unit::TestCase


  def setup
    #Campaigning.set_endpoint_url "http://127.0.0.1:8088/mockapiSoap"
    Campaigning.set_debug_mode(:on)
  end

  def test_client_create!
    client_created = Campaigning::Client.create!(
    :companyName => "My test clients22",
    :contactName => "Oswald Green15s25",
    :emailAddress => "og1524s@example.com",
    :country => "Ireland",
    :timezone => Campaigning.timezones[1]
    )
    assert !client_created.clientID.nil?
  end

  def test_client_delete
    response = Campaigning::Client.delete!(client_created.clientID)  
    assert response.code == 0
  end

  def test_client_delete_itself
    client = Campaigning::Client.find_by_name("Orange Company 7")
    client.delete!
  end

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

  def test_client_update_access_and_billing!
    client = Campaigning::Client.find_by_name("Client One Company")
    response = client.update_access_and_billing!(
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
  
  def test_client_update_basics!
    client = Campaigning::Client.find_by_name("Client Two")
    response = client.update_basics!(
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

end