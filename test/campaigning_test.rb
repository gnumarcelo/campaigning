require 'test_helper'

# Replace this API key with your own (http://www.campaignmonitor.com/api/)
CAMPAIGN_MONITOR_API_KEY  = '____PUT__YOUR__MONITOR__API__KEY__HERE____'

class FirstGemTest < Test::Unit::TestCase
  
  def setup
    @cm = Campaigning.new    
  end
   
  def test_clients
    clients = @cm.clients
    assert clients.size > 0
  end
end
