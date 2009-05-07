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
    #@cm = Campaigning::Base.new
    @soap = Campaigning::SOAPDriver.instance.get_driver
  end
  
  
  # def create
  #   hash = {
  #     :companyName => @company_name,
  #     :contactName => @name,
  #     :emailAddress => @email_address,
  #     :country => @country,
  #     :timezone => @time_zone
  #   }
  #   
  #   generate a hash
  #   send @cm.createClient request to campaign monitor
  #   @clientID = response.client_CreateResult
  # end
  
  def lists
    response = @soap.getClientLists(:apiKey => CAMPAIGN_MONITOR_API_KEY, :clientID => @clientID)
    lists = handle_request response.client_GetListsResult
    lists.collect {|list| List.new(list.listID, list.name)}
  end
  
  def find_list_by_name(list_name)
    lists.find {|list| list_name == list.name}
  end 
  
  # TODO: Refactor this method and increase performance? 
  # TODO: Tha campaign monitor permit two users with the same name, what to do? 
  def self.find_by_name(name)
    client_list = Helpers.handle_request Campaigning::Base.new.clients  
    client_found = client_list.find {|client| name == client.name}
    Client.new(client_found.clientID, client_found.name) if client_found
  end
  
  def self.create(params)
    response = Campaigning::SOAPDriver.instance.get_driver.createClient(
      :apiKey => CAMPAIGN_MONITOR_API_KEY,
      :companyName => params[:company_name],
      :contactName => params[:contact_name],
      :emailAddress => params[:email_address],
      :country => params[:country],
      :timezone => params[:time_zone]
    )
    Client.new( Helpers.handle_request(response.client_CreateResult) )
  end
  
  def delete
    Client.delete(@clientID)
    self.clientID = nil
    self.name = nil
  end
  
  def self.delete(client_id)
    response = Campaigning::SOAPDriver.instance.get_driver.deleteClient(:apiKey => CAMPAIGN_MONITOR_API_KEY, :clientID => client_id)
    Helpers.handle_request response.client_DeleteResult
  end
  
  def segments
    response = @soap.getClientSegments(:apiKey => CAMPAIGN_MONITOR_API_KEY, :clientID => @clientID )
    handle_request response.client_GetSegmentsResult
  end
  
  # TODO: Refactor this method
  def find_campaigns_by_subject(subject)
    arr = []
    #return campaigns.find {|campaign| subject == campaign.subject} if params[:single] 
    campaigns.each { |campaign| arr << campaign if campaign.subject == subject }
    arr
  end
  
  def campaigns
    response = @soap.getClientCampaigns(:apiKey => CAMPAIGN_MONITOR_API_KEY, :clientID => @clientID )    
    campaign_list = handle_request response.client_GetCampaignsResult
    campaign_list.collect do |campaign|  
      Campaign.new(campaign.campaignID, campaign.subject, campaign.sentDate, campaign.totalRecipients)
    end
  end
  
  def details
    response = @soap.getClientDetail(:apiKey => CAMPAIGN_MONITOR_API_KEY, :clientID => @clientID )    
    handle_request response.client_GetDetailResult
  end
  
  def suppression_list
    response = @soap.getClientSuppressionList(:apiKey => CAMPAIGN_MONITOR_API_KEY, :clientID => @clientID )
    handle_request response.client_GetSuppressionListResult    
  end
  
  def update_access_and_billing(params)
    response = @soap.updateClientAccessAndBilling(
     :apiKey => CAMPAIGN_MONITOR_API_KEY,
     :clientID => @clientID,
     :accessLevel => params[:access_level],
     :username => params[:username],
     :password => params[:password],
     :billingType => params[:billing_type],
     :currency => params[:currency],
     :deliveryFee => params[:delivery_fee],
     :costPerRecipient => params[:cost_per_recipient],
     :designAndSpamTestFee => params[:design_and_spam_test_fee]
    )
    handle_request response.client_UpdateAccessAndBillingResult
  end
  
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
