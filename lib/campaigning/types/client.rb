# Client is defined in default.rb which is automatically generated.
# In this file we add additional methods to the Client class.
module Campaigning
  
class Client  
  attr_accessor :clientID
  attr_accessor :name  

  def initialize(clientID = nil, name = nil)
    @cm = Connection.new
    @clientID = clientID
    @name = name
  end
  
  
  def create
    hash = {
      :companyName => @company_name,
      :contactName => @contact_name,
      :emailAddress => @email_address,
      :country => @country,
      :timezone => @time_zone
    }
    
    # generate a hash
    # send @cm.createClient request to campaign monitor
    #@clientID = response.client_CreateResult
  end
  

  def lists
    response = @cm.soap.getClientLists(:apiKey => CAMPAIGN_MONITOR_API_KEY, :clientID => @clientID)
    Connection.handle_request response.client_GetListsResult # TODO: handle the request
  end
  
  
  # TODO: Refactor this method and increase performance? 
  # TODO: Tha campaign monitor permit two users with the same name, what to do? 
  def self.find_by_name(name)
    response = Connection.new.soap.getClients(:apiKey => CAMPAIGN_MONITOR_API_KEY)
    client_list = Connection.handle_request response.user_GetClientsResult
    client_found = client_list.collect.detect { |client| client.name == name }
    Client.new(client_found.clientID, client_found.name) if client_found
  end
  
  
  def self.create(params)
    response = Connection.new.soap.createClient(:apiKey => CAMPAIGN_MONITOR_API_KEY,
      :companyName => params[:company_name],
      :contactName => params[:contact_name],
      :emailAddress => params[:email_address],
      :country => params[:country],
      :timezone => params[:time_zone]
    )
    new_client_id = Connection.handle_request response.client_CreateResult # TODO: handle the request
    Client.new(new_client_id)
  end
  
  
  def delete
    Client.delete(@clientID)
  end
  
  def self.delete(client_id)
    response = Connection.new.soap.deleteClient(:apiKey => CAMPAIGN_MONITOR_API_KEY, :clientID => client_id)
    Connection.handle_request response.client_DeleteResult
  end
  
  
  def segments
    response = @cm.soap.getClientSegments(:apiKey => CAMPAIGN_MONITOR_API_KEY, :clientID => @clientID )
    Connection.handle_request response.client_GetSegmentsResult
  end
  
  def campaigns
    response = @cm.soap.getClientCampaigns(:apiKey => CAMPAIGN_MONITOR_API_KEY, :clientID => @clientID )
    Connection.handle_request response.client_GetSegmentsResult
    
  end

  
end

end
