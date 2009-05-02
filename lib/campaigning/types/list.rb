# Campaign is defined in soap/default.rb which is automatically generated.
# In this file we add additional methods to the Campaign class.
require File.expand_path(File.dirname(__FILE__)) + '/../helpers/helpers'


module Campaigning
  
  class List
    include Helpers   
    attr_accessor :listID
    attr_accessor :name

    def initialize(listID = nil, name = nil)
      @listID = listID
      @name = name
      @cm = Connection.new
    end

    def self.create(params)
      params = {:unsubscribe_page => "", :confirmation_success_page => ""}.merge! params      
      response = Connection.new.soap.createList(
        :apiKey => CAMPAIGN_MONITOR_API_KEY,
        :clientID => params[:client_id],
        :title => params[:title],
        :unsubscribePage => params[:unsubscribe_page],
        :confirmOptIn => params[:comfirm_opt_in],
        :confirmationSuccessPage => params[:confirmation_success_page] 
      )
      new_list_id = Helpers.handle_request response.list_CreateResult
      List.new(new_list_id, params[:title])
    end
    
    def create_custom_field(params)      
      params = {:options => ""}.merge! params
      response = @cm.soap.createListCustomField(
        :apiKey => CAMPAIGN_MONITOR_API_KEY,
        :listID => @listID,
        :fieldName => params[:field_name],
        :dataType => params[:data_type],
        :options => params[:options]
      )
      handle_request response.list_CreateCustomFieldResult
    end
    
    def delete
      List.delete(@listID)
      self.listID, self.name  = nil, nil
    end

    def self.delete(list_id)
      response = Connection.new.soap.deleteList(:apiKey => CAMPAIGN_MONITOR_API_KEY, :listID => list_id)
      Helpers.handle_request response.list_DeleteResult
    end
    
    def delete_custom_field(key)
      response = @cm.soap.deleteListCustomField(:apiKey => CAMPAIGN_MONITOR_API_KEY, :listID => @listID, :key => '['+key+']')
      handle_request response.list_DeleteCustomFieldResult
    end
    
    def custom_fields
      response = @cm.soap.getListCustomFields(:apiKey => CAMPAIGN_MONITOR_API_KEY, :listID => @listID)
      handle_request response.list_GetCustomFieldsResult
    end
    
    def details
      response = @cm.soap.getListDetail(:apiKey => CAMPAIGN_MONITOR_API_KEY, :listID => @listID)
      handle_request response.list_GetDetailResult
    end
    
    
    def update(params)
      params = {:unsubscribe_page => "", :confirmation_success_page => ""}.merge! params      
      response = @cm.soap.updateList(
        :apiKey => CAMPAIGN_MONITOR_API_KEY,
        :listID => @listID,
        :title => params[:title],
        :unsubscribePage => params[:unsubscribe_page],
        :confirmOptIn => params[:comfirm_opt_in],
        :confirmationSuccessPage => params[:confirmation_success_page] 
      )
      handle_request response.list_UpdateResult
    end
    
    protected

      def custom_field_options(custom_fields)
        custom_fields.join("||").to_s
      end

  end
end