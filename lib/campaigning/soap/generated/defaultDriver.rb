require File.expand_path(File.dirname(__FILE__)) + '/default.rb'
require File.expand_path(File.dirname(__FILE__)) + '/defaultMappingRegistry.rb'
require 'soap/rpc/driver'

module Campaigning

class ApiSoap < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://api.createsend.com/api/api.asmx"

  Methods = [
    [ "http://api.createsend.com/api/Subscriber.AddWithCustomFields",
      "addSubscriberWithCustomFields",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Subscriber.AddWithCustomFields"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Subscriber.AddWithCustomFieldsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/Subscriber.AddAndResubscribeWithCustomFields",
      "addAndResubscribeWithCustomFields",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Subscriber.AddAndResubscribeWithCustomFields"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Subscriber.AddAndResubscribeWithCustomFieldsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/Subscriber.Add",
      "addSubscriber",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Subscriber.Add"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Subscriber.AddResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/Subscriber.AddAndResubscribe",
      "addAndResubscribe",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Subscriber.AddAndResubscribe"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Subscriber.AddAndResubscribeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/Subscriber.Unsubscribe",
      "unsubscribe",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Subscriber.Unsubscribe"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Subscriber.UnsubscribeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/Subscribers.GetActive",
      "getSubscribers",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Subscribers.GetActive"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Subscribers.GetActiveResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/Subscribers.GetUnsubscribed",
      "getUnsubscribed",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Subscribers.GetUnsubscribed"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Subscribers.GetUnsubscribedResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/Subscribers.GetBounced",
      "getBounced",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Subscribers.GetBounced"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Subscribers.GetBouncedResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/Subscribers.GetSingleSubscriber",
      "getSingleSubscriber",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Subscribers.GetSingleSubscriber"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Subscribers.GetSingleSubscriberResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/Subscribers.GetIsSubscribed",
      "getIsSubscribed",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Subscribers.GetIsSubscribed"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Subscribers.GetIsSubscribedResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/List.Create",
      "createList",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "List.Create"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "List.CreateResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/List.Update",
      "updateList",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "List.Update"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "List.UpdateResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/List.GetDetail",
      "getListDetail",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "List.GetDetail"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "List.GetDetailResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/List.Delete",
      "deleteList",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "List.Delete"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "List.DeleteResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/List.GetCustomFields",
      "getListCustomFields",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "List.GetCustomFields"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "List.GetCustomFieldsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/List.DeleteCustomField",
      "deleteListCustomField",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "List.DeleteCustomField"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "List.DeleteCustomFieldResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/List.CreateCustomField",
      "createListCustomField",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "List.CreateCustomField"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "List.CreateCustomFieldResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/Client.GetCampaigns",
      "getClientCampaigns",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Client.GetCampaigns"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Client.GetCampaignsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/Client.GetLists",
      "getClientLists",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Client.GetLists"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Client.GetListsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/Client.GetSegments",
      "getClientSegments",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Client.GetSegments"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Client.GetSegmentsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/Client.GetSuppressionList",
      "getClientSuppressionList",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Client.GetSuppressionList"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Client.GetSuppressionListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/Client.Create",
      "createClient",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Client.Create"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Client.CreateResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/Client.UpdateBasics",
      "updateClientBasics",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Client.UpdateBasics"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Client.UpdateBasicsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/Client.UpdateAccessAndBilling",
      "updateClientAccessAndBilling",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Client.UpdateAccessAndBilling"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Client.UpdateAccessAndBillingResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/Client.GetDetail",
      "getClientDetail",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Client.GetDetail"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Client.GetDetailResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/Client.Delete",
      "deleteClient",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Client.Delete"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Client.DeleteResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/Campaign.GetSubscriberClicks",
      "getSubscriberClicks",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Campaign.GetSubscriberClicks"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Campaign.GetSubscriberClicksResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/Campaign.GetOpens",
      "getCampaignOpens",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Campaign.GetOpens"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Campaign.GetOpensResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/Campaign.GetBounces",
      "getCampaignBounces",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Campaign.GetBounces"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Campaign.GetBouncesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/Campaign.GetUnsubscribes",
      "getCampaignUnsubscribes",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Campaign.GetUnsubscribes"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Campaign.GetUnsubscribesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/Campaign.GetSummary",
      "getCampaignSummary",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Campaign.GetSummary"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Campaign.GetSummaryResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/Campaign.GetLists",
      "getCampaignLists",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Campaign.GetLists"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Campaign.GetListsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/User.GetClients",
      "getClients",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "User.GetClients"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "User.GetClientsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/User.GetSystemDate",
      "getSystemDate",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "User.GetSystemDate"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "User.GetSystemDateResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/User.GetTimezones",
      "getTimezones",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "User.GetTimezones"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "User.GetTimezonesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/User.GetCountries",
      "getCountries",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "User.GetCountries"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "User.GetCountriesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/Campaign.Create",
      "createCampaign",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Campaign.Create"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Campaign.CreateResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/Campaign.Send",
      "sendCampaign",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Campaign.Send"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Campaign.SendResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://api.createsend.com/api/Campaign.Delete",
      "deleteCampaign",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Campaign.Delete"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://api.createsend.com/api/", "Campaign.DeleteResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end




end
