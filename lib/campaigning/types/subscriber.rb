# Subscriber is defined in default.rb which is automatically generated.
# In this file we add additional methods to the Subscriber class.
require File.expand_path(File.dirname(__FILE__)) + '/../helpers/helpers'

module Campaigning

class Subscriber
  include Helpers   
  attr_accessor :emailAddress
  attr_accessor :name
  attr_accessor :date
  attr_accessor :state
  attr_accessor :customFields

  def initialize(emailAddress = nil, name = nil, date = nil, state = nil, customFields = nil)
    @emailAddress = emailAddress
    @name = name
    @date = date
    @state = state
    @customFields = customFields
    @soap = Campaigning::SOAPDriver.instance.get_driver
  end
  
  def add(list_id)
    response = @soap.addSubscriber(
      :apiKey => CAMPAIGN_MONITOR_API_KEY,
      :listID => list_id,
      :email => @emailAddress,
      :name => @name
     )
    handle_request response.subscriber_AddResult
  end
  
  def add_and_resubscribe(list_id)
    response = @soap.addAndResubscribe(
      :apiKey => CAMPAIGN_MONITOR_API_KEY,
      :listID => list_id,
      :email => @emailAddress,
      :name => @name
     )
    handle_request response.subscriber_AddAndResubscribeResult
  end
  
  def add_and_resubscribe_with_custom_fields(list_id, custom_fields)
    response = @soap.addAndResubscribeWithCustomFields(
    :apiKey => CAMPAIGN_MONITOR_API_KEY,
    :listID => list_id,
    :email => @emailAddress,
    :name => @name,
    :customFields => custom_fields_array(custom_fields)
    )
    handle_request response.subscriber_AddAndResubscribeWithCustomFieldsResult
  end
 
  def add_with_custom_fields(list_id, custom_fields)
    response = @soap.addSubscriberWithCustomFields(
    :apiKey => CAMPAIGN_MONITOR_API_KEY,
    :listID => list_id,
    :email => @emailAddress,
    :name => @name,
    :customFields => custom_fields_array(custom_fields)
    )
    handle_request response.subscriber_AddWithCustomFieldsResult
  end 
 
  def unsubscribe(list_id)
    Subscriber.unsubscribe(@emailAddress, list_id)
  end
  
  def self.unsubscribe(email, list_id)
    response = Campaigning::SOAPDriver.instance.get_driver.unsubscribe(
    :apiKey => CAMPAIGN_MONITOR_API_KEY,
    :listID => list_id,
    :email => email
    )
    Helpers.handle_request response.subscriber_UnsubscribeResult
  end
  
  # TODO: May I move this method to List type?
  def self.active_subscribers(list_id, datetime)
    response = Campaigning::SOAPDriver.instance.get_driver.getSubscribers(
     :apiKey => CAMPAIGN_MONITOR_API_KEY,
     :listID => list_id,
     :date => datetime.strftime('%Y-%m-%d %H:%M:%S') # TODO: Move that to a helper method
    )
    Helpers.handle_request response.subscribers_GetActiveResult
  end
  
  # TODO: May I move this method to List type?
  def self.get_unsubscribed(list_id, datetime)
    response = Campaigning::SOAPDriver.instance.get_driver.getUnsubscribed(
     :apiKey => CAMPAIGN_MONITOR_API_KEY,
     :listID => list_id,
     :date => datetime.strftime('%Y-%m-%d %H:%M:%S') # TODO: Move that to a helper method
    )
    Helpers.handle_request response.subscribers_GetUnsubscribedResult
  end
  
  def is_subscribed?(list_id)
    Subscriber.is_subscribed?(@emailAddress, list_id)
  end
  
  def self.is_subscribed?(email, list_id)
    response = Campaigning::SOAPDriver.instance.get_driver.getIsSubscribed(
     :apiKey => CAMPAIGN_MONITOR_API_KEY,
     :listID => list_id,
     :email => email
    )
    response = Helpers.handle_request response.subscribers_GetIsSubscribedResult
    response == 'True' ? true : false
  end
  
  # TODO: Create a mehod to handle with custom fields returned like (names from "State Name" to "state_name")
  def self.get_single_subscriber(list_id, email_address)
    response = Campaigning::SOAPDriver.instance.get_driver.getSingleSubscriber(
     :apiKey => CAMPAIGN_MONITOR_API_KEY,
     :listID => list_id,
     :emailAddress => email_address
    )
    Helpers.handle_request response.subscribers_GetSingleSubscriberResult
  end
  
  
  protected
  
    def custom_fields_array(custom_fields)
      arr = []
      custom_fields.each do |key, value|
        arr << { :key => key, :value => value }
      end
      arr
    end
  
  
end

end