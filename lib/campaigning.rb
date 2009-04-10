require 'soap/wsdlDriver'
require 'net/http'

require File.join(File.dirname(__FILE__), 'campaigning/client.rb')

class Campaigning
 
  attr_reader :api_key, :api_url
  
  # Replace this API key with your own (http://www.campaignmonitor.com/api/)
  def initialize(api_key=CAMPAIGN_MONITOR_API_KEY)
    @api_key = api_key
    @api_url = 'http://api.createsend.com/api/api.asmx'
  end 


  def clients
    response = soap do |driver|
       driver.GetClients(:ApiKey => @api_key)
    end
    #response.user_GetClientsResult.client.each{ |c| Client.new(c["ClientID"], c["Name"])}
    if(response.user_GetClientsResult.client.is_a?(Array))
      response.user_GetClientsResult.client.each{ |c| Client.new(c["ClientID"], c["Name"])}
    elsif !response.empty?
      [Client.new(response.user_GetClientsResult.client.clientID, response.user_GetClientsResult.client.name)]
    else
      []
    end

  end


  def lists(client_id)
    response = soap do |driver|
       driver.GetClientLists(:ApiKey => @api_key, :ClientID => client_id)
    end
    #response.client_GetListsResult.list.each{ |l| puts "quanto???"}
    if(response.client_GetListsResult.list.is_a?(Array))
      puts "retornou um monte de listas!"
    else
      puts "retornou soh uma lista"
    end
  end


  def soap
    driver = wsdl_driver_factory.create_rpc_driver
    response = yield(driver)
    driver.reset_stream
    
    response
  end
  
  protected

    def wsdl_driver_factory
      SOAP::WSDLDriverFactory.new("#{api_url}?wsdl")
    end
end
