gem "soap4r", "~> 1.5.0"
require File.expand_path(File.dirname(__FILE__)) + '/soap/soap_driver.rb'
require File.expand_path(File.dirname(__FILE__)) + '/types/client.rb'
require File.expand_path(File.dirname(__FILE__)) + '/types/campaign.rb'
require File.expand_path(File.dirname(__FILE__)) + '/types/subscriber.rb'
require File.expand_path(File.dirname(__FILE__)) + '/types/list.rb'
require File.expand_path(File.dirname(__FILE__)) + '/helpers/helpers.rb'

module Campaigning
  include Helpers

  #Gets the server system time for your time zone.
  #This is handy for when you are syncing your {Campaign Monitor}[http://www.campaignmonitor.com] lists with some other in-house list,
  #allowing you accurately determine the time on our server when you carry out the synchronization.
  def self.system_date
    response = Campaigning::SOAPDriver.instance.get_driver.getSystemDate(:apiKey => CAMPAIGN_MONITOR_API_KEY)
    dateTime = Helpers.handle_request response.user_GetSystemDateResult
  end
  
  #This method returns an Array of Strings representing all the available timezones.
  def self.time_zones
    Helpers.handle_request Campaigning::SOAPDriver.instance.get_driver.getTimezones(:apiKey => CAMPAIGN_MONITOR_API_KEY).user_GetTimezonesResult
  end
  
  #This method returns an Array of Strings representing all the available countries.
  def self.countries
    response = Campaigning::SOAPDriver.instance.get_driver.getCountries(:apiKey => CAMPAIGN_MONITOR_API_KEY)
    dateTime = Helpers.handle_request response.user_GetCountriesResult
  end
  
  #This method turns on and off the API debug mode, which will display at the console all SOAP requests made to the API server.
  #
  def self.setup_debug_mode(dev)
    Campaigning::SOAPDriver.instance.setup_debug_mode dev
  end    
end
