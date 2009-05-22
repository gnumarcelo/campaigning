# Client is defined in default.rb which is automatically generated.
# In this file we add additional methods to the Client class.
require File.expand_path(File.dirname(__FILE__)) + '/../helpers/helpers'

module Campaigning
  
class Client
  include Helpers  
  attr_accessor :clientID
  attr_accessor :name  

  def initialize(clientID = nil, name = nil)
    @clientID = clientID
    @name = name
    @soap = Campaigning::SOAPDriver.instance.get_driver
  end
  
  #Gets a list of all subscriber lists for a client.
  #
  #*Return*:
  #
  #*Success*: Upon a successful call, this method will return a collection of Campaigning::List objects.
  #
  #*Error*: An Exception containing the cause of the error will be raised.
  def lists
    response = @soap.getClientLists(:apiKey => CAMPAIGN_MONITOR_API_KEY, :clientID => @clientID)
    lists = handle_request response.client_GetListsResult
    lists.collect {|list| List.new(list.listID, list.name)}
  end
  
  #This method find a List by a given name
  #
  #*Return*:
  #
  #*Success*:
  #
  #List FOUND: If it found any client with the given name it will return a Campaigning::List object containing the found list.
  #
  #List NOT FOUND: If it doesn't found a list with the given name it will return +nil+ .
  #
  #*Error*: An Exception containing the cause of the error will be raised.
  def find_list_by_name(list_name)
    lists.find {|list| list_name == list.name}
  end 
  
  #This method find a Client by a given name
  #
  #*Return*:
  #
  #Client FOUND: If it found any client with the given name it will return a Campaigning::Client object containing the found client.
  #
  #Client NOT FOUND: If it doesn't found a client with the given name it will return +nil+ .
  #
  #*Error*: An Exception containing the cause of the error will be raised.
  #-- TODO: Refactor this method and increase performance? 
  #-- TODO: Tha campaign monitor permit two users with the same name, what to do? 
  def self.find_by_name(name)
    client_list = Client.get_all_clients 
    client_found = client_list.find {|client| name == client.name}
    Client.new(client_found.clientID, client_found.name) if client_found
  end
  
  #Gets all clients for a given user (CAMPAIGN_MONITOR_API_KEY).
  #
  #*Return*:
  #
  #*Success*: Upon a successful call, this method will return a collection of Campaigning::Client objects.
  #
  #*Error*: An Exception containing the cause of the error will be raised.
  def self.get_all_clients
    response = Campaigning::SOAPDriver.instance.get_driver.getClients(:apiKey => CAMPAIGN_MONITOR_API_KEY)
    clients = Helpers.handle_request response.user_GetClientsResult
    clients.collect {|client| Client.new(client.clientID, client.name)}
  end
  
  #This method creates a brand new client with no access to the application.
  #By default a new client has no direct access to the application. Access and billing settings (if needed) must be set by
  #means of a subsequent call to Campaigning::Client#update_access_and_billing.
  #
  #Available _params_ argument are:
  #   * :company_name - The client company name.
  #   * :contact_name - The personal name of the principle contact for this client.
  #   * :email_address - An email address to which this client will be sent application-related emails.
  #   * :country - This client's country. A valid country list is available in http://www.campaignmonitor.com/api/countries/ or by
  #                using the API procedure Campaigning.countries
  #   * :time_zone - Client timezone for tracking and reporting data. A valid timezone list is available here or by using the API
  #                  procedure Campaigning.time_zones.
  #*Return*:
  #
  #*Success*: Upon a successful call, this method will return a Campaigning::Client object representing the newly created client.
  #
  #*Error*: An Exception containing the cause of the error will be raised.
  def self.create(params)
    response = Campaigning::SOAPDriver.instance.get_driver.createClient(
      :apiKey => CAMPAIGN_MONITOR_API_KEY,
      :companyName => params[:company_name],
      :contactName => params[:contact_name],
      :emailAddress => params[:email_address],
      :country => params[:country],
      :timezone => params[:time_zone]
    )
    Client.new( Helpers.handle_request(response.client_CreateResult), params[:company_name] )
  end
  
  #Deletes a client from your account.
  #
  #*Return*:
  #
  #*Success*: Upon a successful call, this method will return a Campaigning::Result object wich consists of a +code+ and +message+ fields
  #containing a successful message.
  #
  #*Error*: An Exception containing the cause of the error will be raised.
  def delete
    response = Client.delete(@clientID)
    self.clientID, self.name = nil
    response
  end
  
  #Deletes a client from your account.
  #
  #*Return*:
  #
  #*Success*: Upon a successful call, this method will return a Campaigning::Result object wich consists of a +code+ and +message+ fields
  #containing a successful message.
  #
  #*Error*: An Exception containing the cause of the error will be raised.
  def self.delete(client_id)
    response = Campaigning::SOAPDriver.instance.get_driver.deleteClient(:apiKey => CAMPAIGN_MONITOR_API_KEY, :clientID => client_id)
    Helpers.handle_request response.client_DeleteResult
  end
  
  #Gets a list of all subscriber segments for a client.
  #
  #*Return*:
  #
  #*Success*: Upon a successful call, this method will return a collection of Campaigning::List objects, each of which consists of the ListID
  #for the parent list and Segment Name for each segment for a client.
  #
  #*Error*: An Exception containing the cause of the error will be raised.
  def segments # TODO: Verify the type return for this method.
    response = @soap.getClientSegments(:apiKey => CAMPAIGN_MONITOR_API_KEY, :clientID => @clientID )
    handle_request response.client_GetSegmentsResult
  end
  
  #This method finds campaigns by a given subject, since the subject isn't unique, it returns an collection of
  #Campaigning::Campaign object.
  #
  #*Return*:
  #
  #*Success*: Upon a successful call, this method will return a collection of Campaigning::Campaign objects.
  #
  #Campaign FOUND: If it found any campaign with the given subject it will return a collection of Campaigning::Campaign that match the criteria.
  #
  #Campaign NOT FOUND: If it doesn't found a campaign with the given subject it will return an empty array.
  #
  #*Error*: An Exception containing the cause of the error will be raised.
  def find_campaigns_by_subject(subject)#-- TODO: Refactor this method
    arr = []
    #return campaigns.find {|campaign| subject == campaign.subject} if params[:single] 
    campaigns.each { |campaign| arr << campaign if campaign.subject == subject }
    arr
  end
  
  #Gets a list of all campaigns that have been sent for a client.
  #
  #*Return*:
  #
  #*Success*: Upon a successful call, this method will return a collection of Campaigning::Campaign objects.
  #
  #*Error*: An Exception containing the cause of the error will be raised.
  def campaigns
    response = @soap.getClientCampaigns(:apiKey => CAMPAIGN_MONITOR_API_KEY, :clientID => @clientID )    
    campaign_list = handle_request response.client_GetCampaignsResult
    campaign_list.collect do |campaign|  
      Campaign.new(campaign.campaignID, campaign.subject, campaign.sentDate, campaign.totalRecipients)
    end
  end
  
  #This method gets the complete account and billing details for a particular client.
  #
  #Example of usage:
  # client_details = client_obj.details
  # basic_details = client_details.basicDetails
  # access_and_billing_details = client_details.accessAndBilling
  # puts "Basic details:"
  # puts "Client ID: #{basic_details.clientID}\n
  #       Company: #{basic_details.companyName}\n
  #       Contact: #{basic_details.contactName}\n
  #       Country: #{basic_details.country}\n
  #       Timezone: #{basic_details.timezone}"
  # 
  # puts "Access and Billing Details:"
  # puts "Username: #{access_and_billing_details.username}\n 
  #       Password: #{access_and_billing_details.password}\n
  #       Billing Type: #{access_and_billing_details.billingType}\n
  #       Currency: #{access_and_billing_details.currency}\n
  #       Delivery Fee: #{access_and_billing_details.deliveryFee}\n
  #       Cost per Recipient: #{access_and_billing_details.costPerRecipient}\n
  #       Design and Span test Fee: #{access_and_billing_details.designAndSpamTestFee}\n
  #       Access Level: #{access_and_billing_details.accessLevel}"
  #
  #*Return*:
  #
  #*Success*: A successful call to this method will return a ClientDetail object, comprised of ClientBasicDetails 
  #and ClientAccessAndBilling.
  #
  #*Error*: An Exception containing the cause of the error will be raised.
  def details
    response = @soap.getClientDetail(:apiKey => CAMPAIGN_MONITOR_API_KEY, :clientID => @clientID )    
    handle_request response.client_GetDetailResult
  end
  
  #Gets all subscribers in the client-wide suppression list.
  #
  #*Return*:
  #
  #*Success*: Upon a successful call, this method will return a collection of Subscriber objects.
  #
  #*Error*: An Exception containing the cause of the error will be raised.
  def suppression_list
    response = @soap.getClientSuppressionList(:apiKey => CAMPAIGN_MONITOR_API_KEY, :clientID => @clientID )
    handle_request response.client_GetSuppressionListResult    
  end
  
  #Update the access and billing settings of an existing client, leaving the basic details untouched.
  #
  #Here's a list of all the parameters you'll need to pass to the Campaigning::Client#update_access_and_billing method. Only the :+access_level+ parameter
  #is required for all calls. The relevance and necessity of the other parameters depends on the chosen AccessLevel (and BillingType),
  #and will be fully described along with each parameter.
  #
  #Available _params_ argument are:
  #   * :access_level - An integer describing the client's ability to access different areas of the application. Influences the significance
  #                     and requirements of the following parameters. See http://www.campaignmonitor.com/api/method/client-updateaccessandbilling/#accesslevels
  #                     for a full description of available levels.
  #   * :username - Client login username. Not required and ignored if AccessLevel is set to 0.
  #   * :password - Client login password. Not required and ignored if AccessLevel is set to 0.
  #   * :billing_type - Client billing type, only required if :access_level is set to allow the client to create and send campaigns
  #   * :currency - Billing currency for this client, only required if :billing_type is set to either ClientPaysAtStandardRate or
  #                 ClientPaysWithMarkup. See full details: http://www.campaignmonitor.com/api/method/client-updateaccessandbilling/#currencies.
  #   * :delivery_fee - Flat rate delivery fee to be charged to the client for each campaign sent, expressed in the chosen currency's
  #                     major unit, but without the currency symbol (for example, sending "6.5" means "$6.50" if USD is used). Only
  #                     required if BillingType is set to ClientPaysWithMarkup, in which case it should be at least equal to the standard rate.
  #                     Further detail is available at http://help.campaignmonitor.com/topic.aspx?t=118.
  #   * :cost_per_recipient - Additional cost added to the campaign for each email address the campaign is sent to, expressed in the chosen
  #                           currency's minor unit (for example, sending "1.5" means 1.5 cents per email address if USD is used). Only required
  #                           if BillingType is set to ClientPaysWithMarkup, in which case it should be at least equal to the standard cost/recipient
  #                           rate. Further detail is available at http://help.campaignmonitor.com/topic.aspx?t=118.
  #   * :design_and_spam_test_fee - Expressed in the chosen currency's major unit (for example, sending "10" means "$10" if USD is used). Only required
  #                                 if BillingType is set to ClientPaysWithMarkup and client has access to design and spam tests, in which case the fee
  #                                 should be equal to or higher than the standard rate (identical to the standard DeliveryFee for that currency).  
  #
  #
  #
  #Please note that for reasons of security there is no way to set a client's credit card details via the API. It will have to be done in the application.
  #
  #*Return*:
  #
  #*Success*: Upon a successful call, this method will return a Campaigning::Result object wich consists of a +code+ and +message+ fields
  #containing a successful message.
  #
  #*Error*: An Exception containing the cause of the error will be raised.
  def update_access_and_billing(params)
    response = @soap.updateClientAccessAndBilling(
     :apiKey => CAMPAIGN_MONITOR_API_KEY,
     :clientID => @clientID,
     :accessLevel => params[:access_level],
     :username => params.fetch(:username, ""),
     :password => params.fetch(:password, ""),
     :billingType => params.fetch(:billing_type, ""),
     :currency => params.fetch(:currency, ""),
     :deliveryFee => params.fetch(:delivery_fee, ""),
     :costPerRecipient => params.fetch(:cost_per_recipient, ""),
     :designAndSpamTestFee => params.fetch(:design_and_spam_test_fee, "")
    )
    handle_request response.client_UpdateAccessAndBillingResult
  end
  
  #Updates the basic details of an existing client.
  #If you wish to change only some details, the others must be included as they currently are. Please note that the client's existing
  #access and billing details will remain unchanged by a call to this method.
  #
  #Available _params_ argument are:
  #   * :company_name - The client company name.
  #   * :contact_name - The personal name of the principle contact for this client.
  #   * :email_address - An email address to which this client will be sent application-related emails.
  #   * :country - This client's country.
  #   * :time_zone - Client timezone for tracking and reporting data. Valid timezone strings are obtainable by means of the
  #                  API procedure Campaigning.time_zones.
  #
  #*Return*:
  #
  #*Success*: Upon a successful call, this method will return a Campaigning::Result object wich consists of a +code+ and +message+ fields
  #containing a successful message.
  #
  #*Error*: An Exception containing the cause of the error will be raised.
  def update_basics(params)
    response = @soap.updateClientBasics(
      :apiKey => CAMPAIGN_MONITOR_API_KEY,
      :clientID => @clientID,
      :companyName => params[:company_name],
      :contactName => params[:contact_name],
      :emailAddress => params[:email_address],
      :country => params[:country],
      :timezone => params[:time_zone]
    )
    handle_request response.client_UpdateBasicsResult
  end

  
end

end
