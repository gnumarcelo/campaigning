# Client is defined in default.rb which is automatically generated.
# In this file we add additional methods to the Client class.
class Client
  attr_accessor :clientID
  attr_accessor :name

  def initialize(clientID = nil, name = nil)
    @cm = Campaigning.new
    self.clientID = clientID
    self.name = name
  end
  
  # TODO: Refactor this method!
  def lists
    response = @cm.soap.getClientLists(:apiKey => CAMPAIGN_MONITOR_API_KEY, :clientID => self.clientID)
    response.client_GetListsResult
  end
  
end