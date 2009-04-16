# Client is defined in default.rb which is automatically generated.
# In this file we add additional methods to the Client class.
class Client
  attr_accessor :clientID
  attr_accessor :name

  def initialize(clientID = nil, name = nil)
    @@cm = Campaigning.new
    @clientID = clientID
    @name = name
  end
  
  def lists
    cm.lists(self.clientID)
  end
end