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
  
  #Adds a subscriber (email address, name) to an existing subscriber list. If the subscriber (email address) already exists,
  #the name value is updated with whatever is passed in.
  #
  #If the list has been set as double opt-in, they will be sent the verification email, otherwise they will be sent the
  #confirmation email you have set up for the list being subscribed to.
  #
  #<b>Please note</b>: If the subscriber is in an inactive state or has previously been unsubscribed, they will *not* be re-added
  #to the active list. Therefore, this method should be used with caution and only where suitable.
  #
  #*Return*:
  #
  #*Success*: Upon a successful call, this method will return a Campaigning::Result object wich consists of a +code+ and +message+ fields
  #containing a successful message.
  #
  #*Error*: An Exception containing the cause of the error will be raised.
  def add(list_id)
    response = @soap.addSubscriber(
      :apiKey => CAMPAIGN_MONITOR_API_KEY,
      :listID => list_id,
      :email => @emailAddress,
      :name => @name
     )
    handle_request response.subscriber_AddResult
  end
  
  #Adds a subscriber (email address, name) to an existing subscriber list. If the subscriber (email address) already exists,
  #the name value is updated with whatever is passed in.
  #
  #If the list has been set as double opt-in, they will be sent the verification email, otherwise they will be sent the
  #confirmation email you have set up for the list being subscribed to.
  #
  #<b>Please note</b>: If the subscriber is in an inactive state or has previously been unsubscribed, they will be re-added to
  #the active list. Therefore, this method should be used with caution and only where suitable.
  #
  #*Return*:
  #
  #*Success*: Upon a successful call, this method will return a Campaigning::Result object wich consists of a +code+ and +message+ fields
  #containing a successful message.
  #
  #*Error*: An Exception containing the cause of the error will be raised.
  def add_and_resubscribe(list_id)
    response = @soap.addAndResubscribe(
      :apiKey => CAMPAIGN_MONITOR_API_KEY,
      :listID => list_id,
      :email => @emailAddress,
      :name => @name
     )
    handle_request response.subscriber_AddAndResubscribeResult
  end
  
  
  #Adds a subscriber to a subscriber list, including adding custom field data for the subscriber. If the subscriber (email address)
  #already exists, then the custom fields are updated with whatever is passed in.
  #
  #If the list has been set as double opt-in, they will be sent the verification email, otherwise they will be sent the confirmation
  #email you have set up for the list being subscribed to.
  #
  #<b>Please note</b>: If the subscriber is in an inactive state or has previously been unsubscribed, they will be re-added to the
  #active list. Therefore, this method should be used with caution and only where suitable.
  #
  #*Return*:
  #
  #*Success*: Upon a successful call, this method will return a Campaigning::Result object wich consists of a +code+ and +message+ fields
  #containing a successful message.
  #
  #*Error*: An Exception containing the cause of the error will be raised.
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
 
  #Adds a subscriber to a subscriber list, including adding custom field data for the subscriber. If the subscriber (email address)
  #already exists, then the custom fields are updated with whatever is passed in.
  #
  #If the list has been set as double opt-in, they will be sent the verification email, otherwise they will be sent the confirmation
  #email you have set up for the list being subscribed to.
  #
  #<b>Please note</b>: If the subscriber is in an inactive state or has previously been unsubscribed, they will *not* be re-added to
  #the active list. Therefore, this method should be used with caution and only where suitable.
  #
  #*Return*:
  #
  #*Success*: Upon a successful call, this method will return a Campaigning::Result object wich consists of a +code+ and +message+ fields
  #containing a successful message.
  #
  #*Error*: An Exception containing the cause of the error will be raised.
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
 
  #Changes the status of an Active Subscriber to an Unsubscribed Subscriber who will no longer receive
  #campaigns sent to that Subscriber List.
  #
  #If the list is set to add unsubscribing subscribers to the suppression list, then the subscriber’s email address will
  #also be added to the suppression list.
  #
  #*Return*:
  #
  #*Success*: Upon a successful call, this method will return a Campaigning::Result object wich consists of a +code+ and +message+ fields
  #containing a successful message.
  #
  #*Error*: An Exception containing the cause of the error will be raised.
  def unsubscribe(list_id)
    Subscriber.unsubscribe(@emailAddress, list_id)
  end
  
  #Changes the status of an Active Subscriber to an Unsubscribed Subscriber who will no longer receive
  #campaigns sent to that Subscriber List (Same that the instance method with the same name).
  def self.unsubscribe(email, list_id)
    response = Campaigning::SOAPDriver.instance.get_driver.unsubscribe(
    :apiKey => CAMPAIGN_MONITOR_API_KEY,
    :listID => list_id,
    :email => email
    )
    Helpers.handle_request response.subscriber_UnsubscribeResult
  end
  
  #Returns True or False as to the existence of the given email address in the list supplied.
  def is_subscribed?(list_id)
    Subscriber.is_subscribed?(@emailAddress, list_id)
  end
  
  #Returns True or False as to the existence of the given email address in the list supplied.
  def self.is_subscribed?(email, list_id)
    response = Campaigning::SOAPDriver.instance.get_driver.getIsSubscribed(
     :apiKey => CAMPAIGN_MONITOR_API_KEY,
     :listID => list_id,
     :email => email
    )
    response = Helpers.handle_request response.subscribers_GetIsSubscribedResult
    response == 'True' ? true : false
  end

  
  
  protected
  
    def custom_fields_array(custom_fields) #:nodoc:
      arr = []
      custom_fields.each do |key, value|
        arr << { :key => key, :value => value }
      end
      arr
    end
  
  
end

end