require 'test_helper'

# Replace this API key with your own (http://www.campaignmonitor.com/api/)
CAMPAIGN_MONITOR_API_KEY  = '54cae7f3aa1f35cb3bb5bc41756d8b7f'
CLIENT_ID = 'd7acfd4cd2ffffc2d86b8903d18a1276'
CLIENT_TWO_ID = '730acd1e8d27d56bdb87e88685613d72'

class CampaigningTest < Test::Unit::TestCase
  
  def setup
    @cm = Connection.new
  end
    
   
  def test_clients
    clients = @cm.clients
    assert clients.length > 0
    clients.each{ |c| puts c.clientID + " - " + c.name }
  end
   
   
  def test_client_lists
    client = Campaigning::Client.new(CLIENT_ID)
    assert client.lists.length > 0
  end
  
   
  def test_client_create
    client_created = Campaigning::Client.create(
     :company_name => "Orange Company 11",
     :contact_name => "Oswald Green11",
     :email_address => "og13@user.com",
     :country => "Ireland",
     :time_zone => @cm.time_zones[1]
    )
  end
  
  
  def test_client_delete
    response = Campaigning::Client.delete("50a1893ea0a02fc94f2ee9563766e539")  
    puts response.inspect
  end
  
  
  def test_client_segments
    client = Campaigning::Client.new(CLIENT_TWO_ID)
    assert client.segments.length > 0
    puts client.segments.inspect
  end
  
  
  def test_find_client_by_name
    client = Campaigning::Client.find_by_name("Client One Company")
    assert client != nil && client.name == "Client One Company"
  end


  def test_user_get_time_zones
    time_zones = @cm.time_zones
    assert !time_zones.nil?
  end 
    
    
  def test_system_date
    sys_date = @cm.system_date
    assert !sys_date.nil?
    puts sys_date
  end 
   

  # 
  # def test_campaign_create
  #   camp = Campaigning::Campaign.new
  #   response = camp.create(
  #     :clientID => "730acd1e8d27d56bdb87e88685613d72",
  #     :campaignName => "NEEEEW  CELOMAR",
  #     :campaignSubject => "My new Campaign Subj",
  #     :fromName => "Mr. Gordon",
  #     :fromEmail => "gordon@user.com",
  #     :replyTo => "no-reply@user.com",
  #     :htmlUrl => "http://www.uol.com.br",
  #     :textUrl => "http://www.uol.com.br",
  #     :subscriberListIDs => ["df11fb1f67bb0ca23fd3e88575464144"],
  #     :listSegments => []
  #   )
  #   puts response.inspect
  # end
  #  
  
  
end
