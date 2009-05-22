require File.expand_path(File.dirname(__FILE__)) + '/generated/defaultDriver.rb'
require 'singleton'

module Campaigning
  #A SOAPDriver is a singleton object responsable to supply a way to interact with the SOAP::RPC::Driver object.
  class SOAPDriver #It could be a module
    include Singleton
    DefaultEndpointUrl = "http://api.createsend.com/api/api.asmx"
    
    #Return a unique Campaigning::SOAP::ApiSoap instance for the whole API client, which provides access to
    #all the Campaign Monitor API methods.
    def get_driver
      @driver ||= Campaigning::ApiSoap.new(DefaultEndpointUrl)
    end
    
    #This method turns the API debug mode to _on_ and _off_.
    #When method called with _true_ argument, it will switch to _on_ mode, the API will display at the console all
    #SOAP requests made to the API server.
    def setup_debug_mode(dev)
      dev = STDERR if dev == true
      @driver.wiredump_dev = dev
    end
    
  end
end