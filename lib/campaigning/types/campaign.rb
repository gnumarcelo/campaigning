# Campaign is defined in soap/default.rb which is automatically generated.
# In this file we add additional methods to the Campaign class.
require File.expand_path(File.dirname(__FILE__)) + '/../helpers/helpers'


module Campaigning
  
  class Campaign
    include Helpers   
    attr_accessor :campaignID
    attr_accessor :subject
    attr_accessor :sentDate
    attr_accessor :totalRecipients

    def initialize(campaignID = nil, subject = nil, sentDate = nil, totalRecipients = nil)
      @campaignID = campaignID
      @subject = subject
      @sentDate = sentDate
      @totalRecipients = totalRecipients
      @cm = Connection.new
    end
    
    def self.create(params)  
        response = Connection.new.soap.createCampaign(
           :apiKey => CAMPAIGN_MONITOR_API_KEY,
           :clientID => params[:clientID],
           :campaignName => params[:campaignName],
           :campaignSubject => params[:campaignSubject],
           :fromName => params[:fromName],
           :fromEmail => params[:fromEmail],
           :replyTo => params[:replyTo],
           :htmlUrl => params[:htmlUrl],
           :textUrl => params[:textUrl],
           :subscriberListIDs => params[:subscriberListIDs],
           :listSegments => params[:listSegments]
          )

        campaign_id = Helpers.handle_request response.campaign_CreateResult
        Campaign.new campaign_id
    end
    
    def bounces
      response = @cm.soap.getCampaignBounces(:apiKey => CAMPAIGN_MONITOR_API_KEY, :campaignID => @campaignID )
      handle_request response.campaign_GetBouncesResult
    end
    
    def lists
      response = @cm.soap.getCampaignLists(:apiKey => CAMPAIGN_MONITOR_API_KEY, :campaignID => @campaignID )
      handle_request response.campaign_GetListsResult
    end
    
    def opens
      response = @cm.soap.getCampaignOpens(:apiKey => CAMPAIGN_MONITOR_API_KEY, :campaignID => @campaignID )
      handle_request response.campaign_GetOpensResult
    end
    
    def subscriber_clicks
      response = @cm.soap.getSubscriberClicks(:apiKey => CAMPAIGN_MONITOR_API_KEY, :campaignID => @campaignID )
      handle_request response.campaign_GetSubscriberClicksResult
    end
    
    def summary
      response = @cm.soap.getCampaignSummary(:apiKey => CAMPAIGN_MONITOR_API_KEY, :campaignID => @campaignID )
      handle_request response.campaign_GetSummaryResult
    end
    
    def unsubscribes
      response = @cm.soap.getCampaignUnsubscribes(:apiKey => CAMPAIGN_MONITOR_API_KEY, :campaignID => @campaignID )
      handle_request response.campaign_GetUnsubscribesResult
    end
    
    def send(params)
      response = @cm.soap.sendCampaign(
        :apiKey => CAMPAIGN_MONITOR_API_KEY,
        :campaignID => @campaignID,
        :confirmationEmail => params[:confirmation_email],
        :sendDate => params[:send_date]
         )
      handle_request response.campaign_SendResult
    end
    
  end
end