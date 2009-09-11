require 'test_helper'

# Replace this API key with your own (http://www.campaignmonitor.com/api/)
CAMPAIGN_MONITOR_API_KEY  = '__PUT_YOUR_API_KEY_HERE__'

class CampaigningTest < Test::Unit::TestCase


  def setup
    #Campaigning.set_endpoint_url "http://127.0.0.1:8088/mockapiSoap"
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
  
  def test_client_lists
    client = Campaigning::Client.find_by_name("Client One Company")    
    assert client.lists.length > 0
  end


end
