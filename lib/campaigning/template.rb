# Template is defined in soap/default.rb which is automatically generated.
# In this file we add additional methods to the Template class.
require File.expand_path(File.dirname(__FILE__)) + '/module_mixin'


module Campaigning
  class Template
    include ModuleMixin
    attr_accessor :templateID
    attr_accessor :name
    attr_accessor :previewURL
    attr_accessor :screenshotURL
    
    def initialize(templateID = nil, name = nil, previewURL = nil, screenshotURL = nil, opts = {})
      @apiKey = opts[:apiKey] || CAMPAIGN_MONITOR_API_KEY
      @templateID = templateID
      @name = name
      @previewURL = previewURL
      @screenshotURL = screenshotURL
    end
    
    #Creates a new template for a client.
    #
    #Available _params_ argument are:
    #   * :clientID - The ID of the client who will owner of the list.
    #   * :templateName - The name of the template. Maximum of 30 characters (will be truncated to 30 characters if longer).
    #   * :htmlPageURL - The URL of the HTML page you have created for the template.
    #   * :zipFileURL - Optional URL of a zip file containing any other files required by the template.
    #   * :screenshotURL - Optional URL of a screenshot of the template. Must be in jpeg format and at least 218 pixels wide.
    #   * :apiKey - optional API key to use to make request. Will use CAMPAIGN_MONITOR_API_KEY if not set.
    #*Return*:
    #
    #*Success*: Upon a successful call, this method will return a Campaigning::Template object representing the newly created
    #template. The object returned isn't filled with previewURL and screenShotURL once the CampaignMonitor API generate a new
    #value for that and doesn't return it on te create! method. In order to get a complete filled object call the Template.details
    #method.
    #
    #*Error*: An Exception containing the cause of the error will be raised.
    def self.create!(params)
      response = @@soap.createTemplate(
        :apiKey => params[:apiKey] || CAMPAIGN_MONITOR_API_KEY,
        :clientID => params[:clientID],
        :templateName => params[:templateName],
        :hTMLPageURL => params[:htmlPageURL],
        :zipFileURL => params[:zipFileURL],
        :screenshotURL => params[:screenshotURL]    
      )
      Template.new( handle_response(response.template_CreateResult), params[:templateName], nil, nil, :apiKey=> params[:apiKey] )
    end
    
    #Gets the details of a template.
    #
    #*Return*:
    #
    #*Success*: Upon a successful call, this method will return a Template object, which consists of the template ID,
    #the template name, a preview URL and a screenshot URL.
    #
    #*Error*: An Exception containing the cause of the error will be raised.
    def details
      response = @@soap.getTemplateDetail(:apiKey => @apiKey, :templateID => @templateID)
      handle_response response.template_GetDetailResult
    end

    #Updates an existing template.
    #
    #Available _params_ argument are:
    #   * :templateID - The ID of the template to be updated.  
    #   * :templateName - The name of the template. Maximum of 30 characters (will be truncated to 30 characters if longer).
    #   * :htmlPageURL - The URL of the HTML page you have created for the template.
    #   * :zipFileURL - Optional URL of a zip file containing any other files required by the template.
    #   * :screenshotURL - Optional URL of a screenshot of the template. Must be in jpeg format and at least 218 pixels wide.
    #   * :apiKey - optional API key to use to make request. Will use CAMPAIGN_MONITOR_API_KEY if not set.
    #*Return*:
    #
    #*Success*: Upon a successful call, this method will return a Campaigning::Result object wich consists of a +code+ and +message+ fields
    #containing a successful message.
    #
    #*Error*: An Exception containing the cause of the error will be raised.
    def update!(params)
      response = @@soap.updateTemplate(
        :apiKey => params[:apiKey] || CAMPAIGN_MONITOR_API_KEY,
        :templateID => @templateID,
        :templateName =>  params[:templateName],
        :hTMLPageURL => params[:htmlPageURL],
        :zipFileURL => params[:zipFileURL],
        :screenshotURL => params[:screenshotURL]
      )
      handle_response response.template_UpdateResult
    end
    
    
    #Deletes a template.
    #
    #*Return*:
    #
    #*Success*: Upon a successful call, this method will return a Campaigning::Result object wich consists of a +code+ and +message+ fields
    #containing a successful message.
    #
    #*Error*: An Exception containing the cause of the error will be raised.
    def delete!
      response = Template.delete!(@templateID, :apiKey=> @apiKey)
      self.templateID, self.name  = nil, nil
      response
    end
    

    #Deletes a template.
    #
    #Aviable _opts_ arguments are:
    #   * :apiKey - optional API key to use to make request. Will use CAMPAIGN_MONITOR_API_KEY if not set.
    #
    #*Return*:
    #
    #*Success*: Upon a successful call, this method will return a Campaigning::Result object wich consists of a +code+ and +message+ fields
    #containing a successful message.
    #
    #*Error*: An Exception containing the cause of the error will be raised.
    def self.delete!(template_id, opts={})
      response = @@soap.deleteTemplate(:apiKey => opts[:apiKey] || CAMPAIGN_MONITOR_API_KEY, :templateID => template_id)
      handle_response response.template_DeleteResult
    end
    
  end
end