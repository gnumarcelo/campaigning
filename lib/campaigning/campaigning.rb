gem "soap4r", "~> 1.5.0"
require File.expand_path(File.dirname(__FILE__)) + '/soap/soap_driver.rb'
require File.expand_path(File.dirname(__FILE__)) + '/types/client.rb'
require File.expand_path(File.dirname(__FILE__)) + '/types/campaign.rb'
require File.expand_path(File.dirname(__FILE__)) + '/types/subscriber.rb'
require File.expand_path(File.dirname(__FILE__)) + '/types/list.rb'
require File.expand_path(File.dirname(__FILE__)) + '/helpers/helpers.rb'

module Campaigning
class Base
  include Helpers
  attr_reader :api_key 

  def initialize(options = {})
    options = {
      :api_key => CAMPAIGN_MONITOR_API_KEY,
      :debug => false
    }.merge(options)
    @api_key = options[:api_key]
    @soap = Campaigning::SOAPDriver.instance.get_driver
    setup_debug_mode options[:debug]
  end

  def clients
    response = @soap.getClients(:apiKey => @api_key)
    clients = handle_request response.user_GetClientsResult
    clients.collect {|client| Client.new(client.clientID, client.name)}
  end

  def system_date
    handle_request @soap.getSystemDate(:apiKey => @api_key).user_GetSystemDateResult
  end
  
  def time_zones
    handle_request @soap.getTimezones(:apiKey => @api_key).user_GetTimezonesResult
  end
  
  def setup_debug_mode(dev)
    Campaigning::SOAPDriver.instance.setup_debug_mode dev
  end
    
end
end
