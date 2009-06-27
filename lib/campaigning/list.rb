# Campaign is defined in soap/default.rb which is automatically generated.
# In this file we add additional methods to the Campaign class.
require File.expand_path(File.dirname(__FILE__)) + '/module_mixin'

module Campaigning
  class List
    include ModuleMixin   
    attr_accessor :listID
    attr_accessor :name

    def initialize(listID = nil, name = nil)
      @listID = listID
      @name = name
    end

    #Creates a brand new subscriber list
    #
    #Available _params_ argument are:
    #   * :clientID - The ID of the client who will owner of the list.
    #   * :title - The list title. Must be unique for this client.
    #   * :unsubscribePage - The URL to which subscribers will be directed when unsubscribing from the list.
    #                         If left blank or omitted a generic unsubscribe page is used.
    #   * :confirmOptIn - Either true or false depending on whether the list requires email confirmation or not. Please see
    #                       the help documentation for more details of what this means.
    #   * :confirmationSuccessPage - Successful email confirmations will be redirected to this URL. Ignored if ConfirmOptIn
    #                                  is false. If left blank or omitted a generic confirmation page is used.
    #*Return*:
    #
    #*Success*: Upon a successful call, this method will return a Campaigning::List object representing the newly created list.
    #
    #*Error*: An Exception containing the cause of the error will be raised.
    def self.create!(params)
      response = @@soap.createList(
      :apiKey => CAMPAIGN_MONITOR_API_KEY,
      :clientID => params[:clientID],
      :title => params[:title],
      :unsubscribePage => params.fetch(:unsubscribePage, ""),
      :confirmOptIn => params[:confirmOptIn],
      :confirmationSuccessPage => params.fetch(:confirmationSuccessPage, "")
      )      
      new_list_id = handle_response response.list_CreateResult
      List.new(new_list_id, params[:title])
    end

    #Creates a new custom field for a list
    #
    #Available _params_ argument are:
    #   * :fieldName - The Name for the new Custom Field. This will be used to generate the custom fields Key.
    #   * :dataType - The Data Type for the new Custom Field. This must be one of Text, Number, MultiSelectOne, or MultiSelectMany
    #   * :options - The available options for a multi-valued custom field. Options should be an Array of Strings, like: %w[Brazil Ireland England].
    #                You can't pass this field for Text and Number custom fields
    #
    #*Return*:
    #
    #*Success*: Upon a successful call, this method will return a Campaigning::Result object wich consists of a +code+ and +message+ fields
    #containing a successful message.
    #
    #*Error*: An Exception containing the cause of the error will be raised.
    def create_custom_field!(params)      
      response = @@soap.createListCustomField(
      :apiKey => CAMPAIGN_MONITOR_API_KEY,
      :listID => @listID,
      :fieldName => params[:fieldName],
      :dataType => params[:dataType],
      :options => params.fetch(:options, "") 
      )
      handle_response response.list_CreateCustomFieldResult
    end

    #Deletes a list
    #
    #*Return*:
    #
    #*Success*: Upon a successful call, this method will return a Campaigning::Result object wich consists of a +code+ and +message+ fields
    #containing a successful message.
    #
    #*Error*: An Exception containing the cause of the error will be raised.
    def delete!
      List.delete!(@listID)
      self.listID, self.name  = nil, nil
    end

    #Deletes a list
    #
    #*Return*:
    #
    #*Success*: Upon a successful call, this method will return a Campaigning::Result object wich consists of a +code+ and +message+ fields
    #containing a successful message.
    #
    #*Error*: An Exception containing the cause of the error will be raised.
    def self.delete!(list_id)
      response = @@soap.deleteList(:apiKey => CAMPAIGN_MONITOR_API_KEY, :listID => list_id)
      handle_response response.list_DeleteResult
    end

    #Deletes a custom field from a list
    #
    #*Return*:
    #
    #*Success*: Upon a successful call, this method will return a Campaigning::Result object wich consists of a +code+ and +message+ fields
    #containing a successful message.
    #
    #*Error*: An Exception containing the cause of the error will be raised.
    def delete_custom_field!(key)
      response = @@soap.deleteListCustomField(:apiKey => CAMPAIGN_MONITOR_API_KEY, :listID => @listID, :key => '['+key+']')
      handle_response response.list_DeleteCustomFieldResult
    end

    #Gets all the Custom Fields available for a list
    #
    #*Return*:
    #
    #*Success*: Upon a successful call, this method will return a collection of Campaigning::ListCustomField complex types. The individual ListCustomField
    #record consists of a +fieldName+, +key+, +dataType+ and a +fieldOptions+ containing a list of possible options for multi-valued custom fields.
    #
    #*Error*: An Exception containing the cause of the error will be raised.
    def custom_fields
      response = @@soap.getListCustomFields(:apiKey => CAMPAIGN_MONITOR_API_KEY, :listID => @listID)
      handle_response response.list_GetCustomFieldsResult
    end

    #Gets a list's configuration detail
    #
    #*Return*:
    #
    #*Success*: A successful call to this method will return a Campaigning::ListDetail object, consisting of +listID+, +title+, +unsubscribePage+, +confirmOptIn+, and
    #+confirmationSuccessPage+ (all as described in Campaigning::List#update and Campaigning::List.create).
    #
    #*Error*: An Exception containing the cause of the error will be raised.
    def details
      response = @@soap.getListDetail(:apiKey => CAMPAIGN_MONITOR_API_KEY, :listID => @listID)
      handle_response response.list_GetDetailResult
    end

    #Gets a list of all active subscribers for a list.
    #
    #*Return*:
    #
    #*Success*: Upon a successful call, this method will return a collection of Campaigning::Subscriber objects.
    #
    #*Error*: An Exception containing the cause of the error will be raised.
    def get_all_active_subscribers
      find_active_subscribers(DateTime.new(y=1911,m=1,d=01, h=01,min=00,s=00))
    end

    #Gets a list of all active subscribers for a list that have been joined since the specified date.
    #The +joined_at+ param has to be a DateTime object, like:
    #
    #        list.find_active_subscribers(DateTime.new(y=2009,m=4,d=01, h=01,min=00,s=00))
    #
    #*Return*:
    #
    #*Success*: Upon a successful call, this method will return a collection of Campaigning::Subscriber objects.
    #
    #*Error*: An Exception containing the cause of the error will be raised.
    def find_active_subscribers(joined_at)
      response = @@soap.getSubscribers(
      :apiKey => CAMPAIGN_MONITOR_API_KEY,
      :listID => @listID,
      :date =>joined_at.strftime('%Y-%m-%d %H:%M:%S')
      )
      handle_response response.subscribers_GetActiveResult
    end

    #Gets a list of all subscribers for a list that have unsubscribed since the specified date.
    #The +unjoined_at+ param has to be a DateTime object, like:
    #
    #        list.find_unsubscribed(DateTime.new(y=2009,m=4,d=01, h=01,min=00,s=00))
    #
    #*Return*:
    #
    #*Success*: Upon a successful call, this method will return a collection of Campaigning::Subscriber objects. In this case
    #every returned object will contain the value "Unsubscribed" in the +state+ field.
    #
    #*Error*: An Exception containing the cause of the error will be raised.    
    def find_unsubscribed(unjoined_at)
      response = @@soap.getUnsubscribed(
      :apiKey => CAMPAIGN_MONITOR_API_KEY,
      :listID => @listID,
      :date => unjoined_at.strftime('%Y-%m-%d %H:%M:%S') # TODO: Move that to a helper method
      )
      handle_response response.subscribers_GetUnsubscribedResult
    end

    #This method returns all of a particular subscribers details, including email address, name, active/inactive
    #status and all custom field data. If a subscriber with that email address does not exist in that list, a +nil+ value is returned.
    #
    #*Return*:
    #*Success*: Upon a successful call, this method will return a collection of Campaigning::Subscriber objects. In this case
    #every returned object will contain the value "Unsubscribed" in the +state+ field.
    #
    #*Error*: An Exception containing the cause of the error will be raised.    
    def find_single_subscriber(email_address) # TODO: Create a mehod to handle with custom fields returned like (names from "State Name" to "state_name")
      response = @@soap.getSingleSubscriber(
      :apiKey => CAMPAIGN_MONITOR_API_KEY,
      :listID => @listID,
      :emailAddress => email_address
      )
      handle_response response.subscribers_GetSingleSubscriberResult
    end

    #Update a subscriber list’s details
    #
    #Available _params_ argument are:
    #   * :title - The list title, as it will be shown in the application and through the API.
    #   * :unsubscribePage - The URL to which subscribers will be directed when unsubscribing from the list.
    #                         If left blank or omitted a generic unsubscribe page is used.
    #   * :confirmOptIn - Either true or false depending on whether the list requires email confirmation or not. Please see
    #                       the help documentation for more details of what this means.
    #   * :confirmationSuccessPage - Successful email confirmations will be redirected to this URL. Ignored if ConfirmOptIn
    #                                  is false. If left blank or omitted a generic confirmation page is used.
    #
    #*Return*:
    #
    #*Success*: Upon a successful call, this method will return a Campaigning::Result object wich consists of a +code+ and +message+ fields
    #containing a successful message.
    #
    #*Error*: An Exception containing the cause of the error will be raised.
    def update!(params)
      response = @@soap.updateList(
      :apiKey => CAMPAIGN_MONITOR_API_KEY,
      :listID => @listID,
      :title => params[:title],
      :unsubscribePage => params.fetch(:unsubscribePage, ""),
      :confirmOptIn => params[:confirmOptIn],
      :confirmationSuccessPage => params.fetch(:confirmationSuccessPage, "") 
      )
      handle_response response.list_UpdateResult
    end

    protected

    def custom_field_options(custom_fields) #:nodoc:
      custom_fields.join("||").to_s
    end

  end
end