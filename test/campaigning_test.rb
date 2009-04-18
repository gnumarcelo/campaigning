require 'test_helper'

# Replace this API key with your own (http://www.campaignmonitor.com/api/)
CAMPAIGN_MONITOR_API_KEY  = '54cae7f3aa1f35cb3bb5bc41756d8b7f'
CLIENT_ID = 'd7acfd4cd2ffffc2d86b8903d18a1276'

class CampaigningTest < Test::Unit::TestCase
  
  def setup
    @cm = Campaigning.new
  end
  
  def test_clients
    clients = @cm.clients
    puts clients[0].methods
    assert clients.length > 0
    clients.each{ |c| puts c.clientID + " - " + c.name }
  end

  def test_client_lists
    client = Client.new(CLIENT_ID)
    assert client.lists.length > 0
  end
  
  def test_system_date
    sys_date = @cm.system_date
    assert !sys_date.nil?
    puts sys_date
  end
  
end
