gem "soap4r", "~> 1.5.0"
require File.expand_path(File.dirname(__FILE__)) + '/soap/defaultDriver.rb'
require File.expand_path(File.dirname(__FILE__)) + '/types/client.rb'
require File.expand_path(File.dirname(__FILE__)) + '/types/campaign.rb'

class Connection
  DefaultEndpointUrl = "http://api.createsend.com/api/api.asmx"
  attr_reader :api_key 
  attr_reader :soap


  def initialize(api_key=CAMPAIGN_MONITOR_API_KEY)
    @api_key = api_key
    @soap = Campaigning::ApiSoap.new(DefaultEndpointUrl)
  end


  def clients
    response = soap.getClients(:apiKey => @api_key)
    Connection.handle_request response.user_GetClientsResult
  end

    
  def system_date
    Connection.handle_request soap.getSystemDate(:apiKey => @api_key).user_GetSystemDateResult
  end
  
  def time_zones
    Connection.handle_request soap.getTimezones(:apiKey => @api_key).user_GetTimezonesResult
  end
  
  # TODO: Define this method in a another file like a helper???
  def Connection.handle_request(response)
    if (response.class == Campaigning::Result && response.code != 0)
       raise response.code.to_s + " - " + response.message
    end
    response
  end
  

  def setup_debug_mode(dev)
    if dev == true
      dev = STDERR
    end
    soap.wiredump_dev = dev
  end


  def endpoint_url(url)
    soap.endpoint_url = url
  end
    
end
