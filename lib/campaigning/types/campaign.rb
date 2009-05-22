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
      @soap = Campaigning::SOAPDriver.instance.get_driver
    end
    
    #Creates a campaign for an existing client. This campaign will be imported and ready to send to the subscribers in
    #the specified lists and segments.
    #The campaign must have both HTML and plain text content, imported from the internet. Styling for the HTML content
    #will be automatically brought inline.
    #
    #Available _params_ argument are:
    #   * :clientID - The ID of the Client you want to create a campaign
    #   * :campaignName - The name of the new campaign. This must be unique across all draft campaigns for the client.
    #   * :campaignSubject - The subject of the new campaign.
    #   * :fromName - The name to appear in the From field in the recipients email client when they receive the new campaign.
    #   * :fromEmail - The email address that the new campaign will come from.
    #   * :replyTo - The email address that any replies to the new campaign will be sent to.
    #   * :htmlUrl - The URL of the HTML content for the new campaign. If no unsubscribe link is found then one will be added automatically. Styling in
    #                the campaign will be automatically brought inline. If your URL has querystring values, you will need to encode them.
    #   * :textUrl - The URL of the Text content for the new campaign. If no unsubscribe link is found then one will be added automatically.
    #   * :subscriberListIDs - An array of lists to send the campaign to. See http://www.campaignmonitor.com/api/required/#listid for more details.
    #   * :listSegments - An array of Segment Names and their appropriate List ID s to send the campaign to.
    #
    #*Return*:
    #
    #*Success*: Upon a successful call, this method will return a Campaigning::Campaign object which was recently created.
    #
    #*Error*: An Exception containing the cause of the error will be raised.    
    def self.create(params)  
        response = Campaigning::SOAPDriver.instance.get_driver.createCampaign(
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
    
    #Gets a list of all subscribers who bounced for a given campaign, and the type of bounce (H=Hard Bounce, S=Soft Bounce).
    #
    #*Return*:
    #
    #*Success*: Upon a successful call, this method will return a collection of <code>SubscriberBounce</code> objects, each of
    #which consists of the subscribers <code>:emailAddress</code>, the <code>listID</code> they belong to, and the <code>bounceType</code>
    #of bounce they experienced, whether hard or soft.
    #
    #*Error*: An Exception containing the cause of the error will be raised.
    def bounces
      response = @soap.getCampaignBounces(:apiKey => CAMPAIGN_MONITOR_API_KEY, :campaignID => @campaignID )
      handle_request response.campaign_GetBouncesResult
    end
    
    #Returns an array of Campaigning::List objects that a given campaign was sent to.
    #
    #*Return*:
    #
    #*Success*: Upon a successful call, this method will return a collection of Campaigning::List object.
    #
    #*Error*: An Exception containing the cause of the error will be raised.
    def lists
      response = @soap.getCampaignLists(:apiKey => CAMPAIGN_MONITOR_API_KEY, :campaignID => @campaignID )
      lists = handle_request response.campaign_GetListsResult
      puts "LISTAS!!!!!!!!!!" + lists.inspect
      lists.collect do |list|  
        List.new(list.listID, list.name)
      end
    end
    
    #Gets a list of all subscribers who opened a given campaign, and the number of times they opened the campaign.
    #
    #*Return*:
    #
    #*Success*: Upon a successful call, this method will return a collection of <code>SubscriberOpen</code> objects, each of
    #which consists of the subscribers <code>:emailAddress</code>, the <code>listID</code> they belong to, and the <code>numberOfOpens</code>
    #representing the number of times they opened the given campaign.
    #
    #*Error*: An Exception containing the cause of the error will be raised.
    def opens
      response = @soap.getCampaignOpens(:apiKey => CAMPAIGN_MONITOR_API_KEY, :campaignID => @campaignID )
      handle_request response.campaign_GetOpensResult
    end
    
    #Gets a list of all subscribers who clicked a link for a given campaign, the ID of the list they belong to,
    #the links they clicked, and the number of times they clicked the link.
    #
    #Example of usage:
    #
    # campaign_obj.subscriber_clicks.each do |subscriber|
    #   puts "Subscriber: #{subscriber.emailAddress}"
    #   subscriber.clickedLinks.each do |clicked| 
    #     puts "Clicked link: #{clicked.link} - Number of clicks: #{clicked.clicks}"
    #   end
    # end
    #
    #
    #*Return*:
    #
    #*Success*: Upon a successful call, this method will return a collection of <code>SubscriberClick</code> objects, each of which consists of
    #the subscribers <code>emailAddress</code>, the <code>listID</code> representing list they belong to, and the <code>clickedLinks</code>array 
    #representing the links they have clicked and the number of times they clicked each link.
    #
    #*Error*: An Exception containing the cause of the error will be raised.
    def subscriber_clicks
      response = @soap.getSubscriberClicks(:apiKey => CAMPAIGN_MONITOR_API_KEY, :campaignID => @campaignID )
      handle_request response.campaign_GetSubscriberClicksResult
    end
    
    #Gets a statistical summary, including number of recipients and open count, for a given campaign.
    #
    #*Return*:
    #
    #*Success*: Upon a successful call, this method will return summary statistical values about this particular campaign
    #including the number of recipients, the number of total opens, the number of link clicks, the number of recipients
    #who unsubscribed and the number who bounced.
    #
    #*Error*: An Exception containing the cause of the error will be raised.
    def summary
      response = @soap.getCampaignSummary(:apiKey => CAMPAIGN_MONITOR_API_KEY, :campaignID => @campaignID )
      handle_request response.campaign_GetSummaryResult
    end
    
    #Gets a list of all subscribers who unsubscribed for a given campaign.
    #
    #*Return*:
    #
    #*Success*: Upon a successful call, this method will return a collection of SubscriberUnsubscribe objects, each of which consists
    #of the <code>emailAddress</code> representing subscribers email address and the <code>listID</code> representing the list they belong to.
    #
    #*Error*: An Exception containing the cause of the error will be raised.
    def unsubscribes
      response = @soap.getCampaignUnsubscribes(:apiKey => CAMPAIGN_MONITOR_API_KEY, :campaignID => @campaignID )
      handle_request response.campaign_GetUnsubscribesResult
    end
    
    #Schedules an existing campaign for sending.
    #
    #The campaign must be imported with defined recipients. For campaigns with more than 5 recipients the user must have
    #sufficient credits or their credit card details saved within the application for the campaign to be sent via the API.
    #For campaigns with 5 recipients or less the user must have enough test campaigns remaining in their API account.
    #For further information about credits for campaigns please check at: http://www.campaignmonitor.com/api/method/campaign-send/
    #
    #Available _params_ argument are:
    #   * :confirmation_email - The email address that the confirmation email that the campaign has been sent will go to.
    #   * :send_date - The date the campaign should be scheduled to be sent. To send a campaign immediately pass in "Immediately".
    #                  This date should be in the users timezone and formatted as YYYY-MM-DD HH:MM:SS.
    #
    #*Return*:
    #Upon a successful call, this method will return a Result object with the newly create Campaign's ID as the Code.
    #
    #*Error*: An Exception containing the cause of the error will be raised.
    def send(params)
      response = @soap.sendCampaign(
        :apiKey => CAMPAIGN_MONITOR_API_KEY,
        :campaignID => @campaignID,
        :confirmationEmail => params[:confirmation_email],
        :sendDate => params[:send_date]
         )
      handle_request response.campaign_SendResult
    end
    
  end
end