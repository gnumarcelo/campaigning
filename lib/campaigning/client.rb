# {http://api.createsend.com/api/}Client
#   clientID - SOAP::SOAPString
#   name - SOAP::SOAPString
class Client
  attr_accessor :clientID
  attr_accessor :name

  def initialize(clientID = nil, name = nil)
    @clientID = clientID
    @name = name
  end
end