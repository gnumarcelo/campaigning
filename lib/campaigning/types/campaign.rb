# Campaign is defined in soap/default.rb which is automatically generated.
# In this file we add additional methods to the Campaign class.
module Campaigning
  
  class Campaign
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
    
    def create(params)  
        response = @cm.soap.createCampaign(
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

        response.campaign_CreateResult # TODO: Handle the request    
    end
    
    def create_old(clientID, campaignName, campaignSubject, fromName, fromEmail, replyTo, htmlUrl, textUrl, subscriberListIDs, listSegments)
      response = @cm.soap.createCampaign(
         :apiKey => CAMPAIGN_MONITOR_API_KEY,
         :clientID => clientID,
         :campaignName => campaignName,
         :campaignSubject => campaignSubject,
         :fromName => fromName,
         :fromEmail => fromEmail,
         :replyTo => replyTo,
         :htmlUrl => htmlUrl,
         :textUrl => textUrl,
         :subscriberListIDs => subscriberListIDs,
         :listSegments => listSegments
        )
      
      response.campaign_CreateResult # TODO: Handle the request
    end
    
  end
end