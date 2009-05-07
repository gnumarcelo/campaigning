require File.expand_path(File.dirname(__FILE__)) + '/generated/defaultDriver.rb'
require 'singleton'

module Campaigning
  class SOAPDriver #It could be a module
    include Singleton
    DefaultEndpointUrl = "http://api.createsend.com/api/api.asmx"
    
    def get_driver
      @driver ||= Campaigning::ApiSoap.new(DefaultEndpointUrl)
    end
    
    def setup_debug_mode(dev)
      dev = STDERR if dev == true
      @driver.wiredump_dev = dev
    end
    
  end
end