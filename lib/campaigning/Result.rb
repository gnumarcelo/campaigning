# {http://api.createsend.com/api/}Result
#   code - SOAP::SOAPInt
#   message - SOAP::SOAPString
class Result
  attr_accessor :code
  attr_accessor :message

  def initialize(code = nil, message = nil)
    @code = code
    @message = message
  end
end