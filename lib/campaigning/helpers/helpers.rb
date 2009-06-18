module Campaigning
  module Helpers #:nodoc:
    def self.included(base)
      base.extend(ClassMethods) # Make all ClassMethods methods avaiable to the object including this module.
      private :handle_response
    end
     
    def handle_response(response)
      self.class.handle_response(response)
    end
    
    # All methods above will became Object methods
    module ClassMethods #:nodoc:
      
      #Method responsable to handle all response from the API server and raising an exception when
      #the API returns an error code (different from 0 (zero) ).
      def handle_response(response)
        if (response.class == Campaigning::Result && response.code != 0)
          raise response.code.to_s + " - " + response.message
        end
        response
      end
      
    end

  end
end