module Campaigning
module Helpers #:nodoc:
  #Method responsable to handle all response from the API server and raising an exception when
  #the API returns an error code (different from 0 (zero) ).
  def handle_request(response)
    Helpers.handle_request response
  end
  
  #Method responsable to handle all response from the API server and raising an exception when
  #the API returns an error code (different from 0 (zero) ).
  def Helpers.handle_request(response)
    if (response.class == Campaigning::Result && response.code != 0)
       raise response.code.to_s + " - " + response.message
    end
    response
  end
  
end
end