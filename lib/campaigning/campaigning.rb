gem "soap4r", "~> 1.5.0"
require File.expand_path(File.dirname(__FILE__)) + '/soap/defaultDriver.rb'
require File.expand_path(File.dirname(__FILE__)) + '/types/client.rb'
require File.expand_path(File.dirname(__FILE__)) + '/types/campaign.rb'
require File.expand_path(File.dirname(__FILE__)) + '/types/subscriber.rb'
require File.expand_path(File.dirname(__FILE__)) + '/types/list.rb'
require File.expand_path(File.dirname(__FILE__)) + '/helpers/helpers.rb'

class Connection
  include Helpers
  DefaultEndpointUrl = "http://api.createsend.com/api/api.asmx"
  attr_reader :api_key 
  attr_reader :soap

  def initialize(api_key=CAMPAIGN_MONITOR_API_KEY)
    @api_key = api_key
    @soap = Campaigning::ApiSoap.new(DefaultEndpointUrl)
    setup_debug_mode true
  end

  def clients
    response = soap.getClients(:apiKey => @api_key)
    handle_request response.user_GetClientsResult
  end

  def system_date
    handle_request soap.getSystemDate(:apiKey => @api_key).user_GetSystemDateResult
  end
  
  def time_zones
    handle_request soap.getTimezones(:apiKey => @api_key).user_GetTimezonesResult
  end
  
  def setup_debug_mode(dev)
    dev = STDERR if dev == true
    soap.wiredump_dev = dev
  end

  def endpoint_url(url)
    soap.endpoint_url = url
  end
    
end
