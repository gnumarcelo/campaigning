  module Helpers
    
    def handle_request(response)
      Helpers.handle_request response
    end
    
    def Helpers.handle_request(response)
      if (response.class == Campaigning::Result && response.code != 0)
         raise response.code.to_s + " - " + response.message
      end
      response
    end
    
  end