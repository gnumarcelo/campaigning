gem "soap4r", "~> 1.5.0"
require File.expand_path(File.dirname(__FILE__)) + '/defaultDriver.rb'

class Campaigning
  DefaultEndpointUrl = "http://api.createsend.com/api/api.asmx"
  attr_reader :api_key
    
  #mattr_accessor :soap
  #self.soap = ::ApiSoap.new(DefaultEndpointUrl)
  # TODO: Consider change this to use something like "mattr_accessor" getter/setter methods at the class or module level.
  @@soap = ::ApiSoap.new(DefaultEndpointUrl)  
  
  # Replace this API key with your own (http://www.campaignmonitor.com/api/)
  def initialize(api_key=CAMPAIGN_MONITOR_API_KEY)
    @api_key = api_key
  end 


  # Return a list of Clients 
  # 
  # Given an apiKey this method return a list of Clients for that user(apiKey).
  #
  # sample:
  #
  # cm = Campaigning.new(:apiKey => "54cae7f3aa1f35cb3bb5bc41756d8b7f")
  # clients = cm.clients
  # clients.each{ |c| puts c.clientID + " - " + c.name }
  def clients
    response = @@soap.getClients(:apiKey => @api_key)
    handle_request response.user_GetClientsResult
  end

  
  def lists(client_id)
    response = @@soap.getClientLists(:apiKey => @api_key, :clientID => client_id)
    handle_request response.client_GetListsResult
  end
  
  
  def system_date
    handle_request @@soap.getSystemDate(:apiKey => @api_key).user_GetSystemDateResult
  end
  

  def handle_request(response)
    if (response.is_a? Result)
       raise response.code.to_s + " - " + response.message
    end
    response
  end


  def endpoint_url(url)
    @@soap.endpoint_url = url
  end
    
end