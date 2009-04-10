#!/usr/bin/env ruby
require 'defaultDriver.rb'

endpoint_url = ARGV.shift
obj = ApiSoap.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   AddSubscriberWithCustomFields(parameters)
#
# ARGS
#   parameters      SubscriberAddWithCustomFields - {http://api.createsend.com/api/}Subscriber.AddWithCustomFields
#
# RETURNS
#   parameters      SubscriberAddWithCustomFieldsResponse - {http://api.createsend.com/api/}Subscriber.AddWithCustomFieldsResponse
#
parameters = nil
puts obj.addSubscriberWithCustomFields(parameters)

# SYNOPSIS
#   AddAndResubscribeWithCustomFields(parameters)
#
# ARGS
#   parameters      SubscriberAddAndResubscribeWithCustomFields - {http://api.createsend.com/api/}Subscriber.AddAndResubscribeWithCustomFields
#
# RETURNS
#   parameters      SubscriberAddAndResubscribeWithCustomFieldsResponse - {http://api.createsend.com/api/}Subscriber.AddAndResubscribeWithCustomFieldsResponse
#
parameters = nil
puts obj.addAndResubscribeWithCustomFields(parameters)

# SYNOPSIS
#   AddSubscriber(parameters)
#
# ARGS
#   parameters      SubscriberAdd - {http://api.createsend.com/api/}Subscriber.Add
#
# RETURNS
#   parameters      SubscriberAddResponse - {http://api.createsend.com/api/}Subscriber.AddResponse
#
parameters = nil
puts obj.addSubscriber(parameters)

# SYNOPSIS
#   AddAndResubscribe(parameters)
#
# ARGS
#   parameters      SubscriberAddAndResubscribe - {http://api.createsend.com/api/}Subscriber.AddAndResubscribe
#
# RETURNS
#   parameters      SubscriberAddAndResubscribeResponse - {http://api.createsend.com/api/}Subscriber.AddAndResubscribeResponse
#
parameters = nil
puts obj.addAndResubscribe(parameters)

# SYNOPSIS
#   Unsubscribe(parameters)
#
# ARGS
#   parameters      SubscriberUnsubscribe - {http://api.createsend.com/api/}Subscriber.Unsubscribe
#
# RETURNS
#   parameters      SubscriberUnsubscribeResponse - {http://api.createsend.com/api/}Subscriber.UnsubscribeResponse
#
parameters = nil
puts obj.unsubscribe(parameters)

# SYNOPSIS
#   GetSubscribers(parameters)
#
# ARGS
#   parameters      SubscribersGetActive - {http://api.createsend.com/api/}Subscribers.GetActive
#
# RETURNS
#   parameters      SubscribersGetActiveResponse - {http://api.createsend.com/api/}Subscribers.GetActiveResponse
#
parameters = nil
puts obj.getSubscribers(parameters)

# SYNOPSIS
#   GetUnsubscribed(parameters)
#
# ARGS
#   parameters      SubscribersGetUnsubscribed - {http://api.createsend.com/api/}Subscribers.GetUnsubscribed
#
# RETURNS
#   parameters      SubscribersGetUnsubscribedResponse - {http://api.createsend.com/api/}Subscribers.GetUnsubscribedResponse
#
parameters = nil
puts obj.getUnsubscribed(parameters)

# SYNOPSIS
#   GetBounced(parameters)
#
# ARGS
#   parameters      SubscribersGetBounced - {http://api.createsend.com/api/}Subscribers.GetBounced
#
# RETURNS
#   parameters      SubscribersGetBouncedResponse - {http://api.createsend.com/api/}Subscribers.GetBouncedResponse
#
parameters = nil
puts obj.getBounced(parameters)

# SYNOPSIS
#   GetSingleSubscriber(parameters)
#
# ARGS
#   parameters      SubscribersGetSingleSubscriber - {http://api.createsend.com/api/}Subscribers.GetSingleSubscriber
#
# RETURNS
#   parameters      SubscribersGetSingleSubscriberResponse - {http://api.createsend.com/api/}Subscribers.GetSingleSubscriberResponse
#
parameters = nil
puts obj.getSingleSubscriber(parameters)

# SYNOPSIS
#   GetIsSubscribed(parameters)
#
# ARGS
#   parameters      SubscribersGetIsSubscribed - {http://api.createsend.com/api/}Subscribers.GetIsSubscribed
#
# RETURNS
#   parameters      SubscribersGetIsSubscribedResponse - {http://api.createsend.com/api/}Subscribers.GetIsSubscribedResponse
#
parameters = nil
puts obj.getIsSubscribed(parameters)

# SYNOPSIS
#   CreateList(parameters)
#
# ARGS
#   parameters      ListCreate - {http://api.createsend.com/api/}List.Create
#
# RETURNS
#   parameters      ListCreateResponse - {http://api.createsend.com/api/}List.CreateResponse
#
parameters = nil
puts obj.createList(parameters)

# SYNOPSIS
#   UpdateList(parameters)
#
# ARGS
#   parameters      ListUpdate - {http://api.createsend.com/api/}List.Update
#
# RETURNS
#   parameters      ListUpdateResponse - {http://api.createsend.com/api/}List.UpdateResponse
#
parameters = nil
puts obj.updateList(parameters)

# SYNOPSIS
#   GetListDetail(parameters)
#
# ARGS
#   parameters      ListGetDetail - {http://api.createsend.com/api/}List.GetDetail
#
# RETURNS
#   parameters      ListGetDetailResponse - {http://api.createsend.com/api/}List.GetDetailResponse
#
parameters = nil
puts obj.getListDetail(parameters)

# SYNOPSIS
#   DeleteList(parameters)
#
# ARGS
#   parameters      ListDelete - {http://api.createsend.com/api/}List.Delete
#
# RETURNS
#   parameters      ListDeleteResponse - {http://api.createsend.com/api/}List.DeleteResponse
#
parameters = nil
puts obj.deleteList(parameters)

# SYNOPSIS
#   GetListCustomFields(parameters)
#
# ARGS
#   parameters      ListGetCustomFields - {http://api.createsend.com/api/}List.GetCustomFields
#
# RETURNS
#   parameters      ListGetCustomFieldsResponse - {http://api.createsend.com/api/}List.GetCustomFieldsResponse
#
parameters = nil
puts obj.getListCustomFields(parameters)

# SYNOPSIS
#   DeleteListCustomField(parameters)
#
# ARGS
#   parameters      ListDeleteCustomField - {http://api.createsend.com/api/}List.DeleteCustomField
#
# RETURNS
#   parameters      ListDeleteCustomFieldResponse - {http://api.createsend.com/api/}List.DeleteCustomFieldResponse
#
parameters = nil
puts obj.deleteListCustomField(parameters)

# SYNOPSIS
#   CreateListCustomField(parameters)
#
# ARGS
#   parameters      ListCreateCustomField - {http://api.createsend.com/api/}List.CreateCustomField
#
# RETURNS
#   parameters      ListCreateCustomFieldResponse - {http://api.createsend.com/api/}List.CreateCustomFieldResponse
#
parameters = nil
puts obj.createListCustomField(parameters)

# SYNOPSIS
#   GetClientCampaigns(parameters)
#
# ARGS
#   parameters      ClientGetCampaigns - {http://api.createsend.com/api/}Client.GetCampaigns
#
# RETURNS
#   parameters      ClientGetCampaignsResponse - {http://api.createsend.com/api/}Client.GetCampaignsResponse
#
parameters = nil
puts obj.getClientCampaigns(parameters)

# SYNOPSIS
#   GetClientLists(parameters)
#
# ARGS
#   parameters      ClientGetLists - {http://api.createsend.com/api/}Client.GetLists
#
# RETURNS
#   parameters      ClientGetListsResponse - {http://api.createsend.com/api/}Client.GetListsResponse
#
parameters = nil
puts obj.getClientLists(parameters)

# SYNOPSIS
#   GetClientSegments(parameters)
#
# ARGS
#   parameters      ClientGetSegments - {http://api.createsend.com/api/}Client.GetSegments
#
# RETURNS
#   parameters      ClientGetSegmentsResponse - {http://api.createsend.com/api/}Client.GetSegmentsResponse
#
parameters = nil
puts obj.getClientSegments(parameters)

# SYNOPSIS
#   GetClientSuppressionList(parameters)
#
# ARGS
#   parameters      ClientGetSuppressionList - {http://api.createsend.com/api/}Client.GetSuppressionList
#
# RETURNS
#   parameters      ClientGetSuppressionListResponse - {http://api.createsend.com/api/}Client.GetSuppressionListResponse
#
parameters = nil
puts obj.getClientSuppressionList(parameters)

# SYNOPSIS
#   CreateClient(parameters)
#
# ARGS
#   parameters      ClientCreate - {http://api.createsend.com/api/}Client.Create
#
# RETURNS
#   parameters      ClientCreateResponse - {http://api.createsend.com/api/}Client.CreateResponse
#
parameters = nil
puts obj.createClient(parameters)

# SYNOPSIS
#   UpdateClientBasics(parameters)
#
# ARGS
#   parameters      ClientUpdateBasics - {http://api.createsend.com/api/}Client.UpdateBasics
#
# RETURNS
#   parameters      ClientUpdateBasicsResponse - {http://api.createsend.com/api/}Client.UpdateBasicsResponse
#
parameters = nil
puts obj.updateClientBasics(parameters)

# SYNOPSIS
#   UpdateClientAccessAndBilling(parameters)
#
# ARGS
#   parameters      ClientUpdateAccessAndBilling - {http://api.createsend.com/api/}Client.UpdateAccessAndBilling
#
# RETURNS
#   parameters      ClientUpdateAccessAndBillingResponse - {http://api.createsend.com/api/}Client.UpdateAccessAndBillingResponse
#
parameters = nil
puts obj.updateClientAccessAndBilling(parameters)

# SYNOPSIS
#   GetClientDetail(parameters)
#
# ARGS
#   parameters      ClientGetDetail - {http://api.createsend.com/api/}Client.GetDetail
#
# RETURNS
#   parameters      ClientGetDetailResponse - {http://api.createsend.com/api/}Client.GetDetailResponse
#
parameters = nil
puts obj.getClientDetail(parameters)

# SYNOPSIS
#   DeleteClient(parameters)
#
# ARGS
#   parameters      ClientDelete - {http://api.createsend.com/api/}Client.Delete
#
# RETURNS
#   parameters      ClientDeleteResponse - {http://api.createsend.com/api/}Client.DeleteResponse
#
parameters = nil
puts obj.deleteClient(parameters)

# SYNOPSIS
#   GetSubscriberClicks(parameters)
#
# ARGS
#   parameters      CampaignGetSubscriberClicks - {http://api.createsend.com/api/}Campaign.GetSubscriberClicks
#
# RETURNS
#   parameters      CampaignGetSubscriberClicksResponse - {http://api.createsend.com/api/}Campaign.GetSubscriberClicksResponse
#
parameters = nil
puts obj.getSubscriberClicks(parameters)

# SYNOPSIS
#   GetCampaignOpens(parameters)
#
# ARGS
#   parameters      CampaignGetOpens - {http://api.createsend.com/api/}Campaign.GetOpens
#
# RETURNS
#   parameters      CampaignGetOpensResponse - {http://api.createsend.com/api/}Campaign.GetOpensResponse
#
parameters = nil
puts obj.getCampaignOpens(parameters)

# SYNOPSIS
#   GetCampaignBounces(parameters)
#
# ARGS
#   parameters      CampaignGetBounces - {http://api.createsend.com/api/}Campaign.GetBounces
#
# RETURNS
#   parameters      CampaignGetBouncesResponse - {http://api.createsend.com/api/}Campaign.GetBouncesResponse
#
parameters = nil
puts obj.getCampaignBounces(parameters)

# SYNOPSIS
#   GetCampaignUnsubscribes(parameters)
#
# ARGS
#   parameters      CampaignGetUnsubscribes - {http://api.createsend.com/api/}Campaign.GetUnsubscribes
#
# RETURNS
#   parameters      CampaignGetUnsubscribesResponse - {http://api.createsend.com/api/}Campaign.GetUnsubscribesResponse
#
parameters = nil
puts obj.getCampaignUnsubscribes(parameters)

# SYNOPSIS
#   GetCampaignSummary(parameters)
#
# ARGS
#   parameters      CampaignGetSummary - {http://api.createsend.com/api/}Campaign.GetSummary
#
# RETURNS
#   parameters      CampaignGetSummaryResponse - {http://api.createsend.com/api/}Campaign.GetSummaryResponse
#
parameters = nil
puts obj.getCampaignSummary(parameters)

# SYNOPSIS
#   GetCampaignLists(parameters)
#
# ARGS
#   parameters      CampaignGetLists - {http://api.createsend.com/api/}Campaign.GetLists
#
# RETURNS
#   parameters      CampaignGetListsResponse - {http://api.createsend.com/api/}Campaign.GetListsResponse
#
parameters = nil
puts obj.getCampaignLists(parameters)

# SYNOPSIS
#   GetClients(parameters)
#
# ARGS
#   parameters      UserGetClients - {http://api.createsend.com/api/}User.GetClients
#
# RETURNS
#   parameters      UserGetClientsResponse - {http://api.createsend.com/api/}User.GetClientsResponse
#
parameters = nil
puts obj.getClients(parameters)

# SYNOPSIS
#   GetSystemDate(parameters)
#
# ARGS
#   parameters      UserGetSystemDate - {http://api.createsend.com/api/}User.GetSystemDate
#
# RETURNS
#   parameters      UserGetSystemDateResponse - {http://api.createsend.com/api/}User.GetSystemDateResponse
#
parameters = nil
puts obj.getSystemDate(parameters)

# SYNOPSIS
#   GetTimezones(parameters)
#
# ARGS
#   parameters      UserGetTimezones - {http://api.createsend.com/api/}User.GetTimezones
#
# RETURNS
#   parameters      UserGetTimezonesResponse - {http://api.createsend.com/api/}User.GetTimezonesResponse
#
parameters = nil
puts obj.getTimezones(parameters)

# SYNOPSIS
#   GetCountries(parameters)
#
# ARGS
#   parameters      UserGetCountries - {http://api.createsend.com/api/}User.GetCountries
#
# RETURNS
#   parameters      UserGetCountriesResponse - {http://api.createsend.com/api/}User.GetCountriesResponse
#
parameters = nil
puts obj.getCountries(parameters)

# SYNOPSIS
#   CreateCampaign(parameters)
#
# ARGS
#   parameters      CampaignCreate - {http://api.createsend.com/api/}Campaign.Create
#
# RETURNS
#   parameters      CampaignCreateResponse - {http://api.createsend.com/api/}Campaign.CreateResponse
#
parameters = nil
puts obj.createCampaign(parameters)

# SYNOPSIS
#   SendCampaign(parameters)
#
# ARGS
#   parameters      CampaignSend - {http://api.createsend.com/api/}Campaign.Send
#
# RETURNS
#   parameters      CampaignSendResponse - {http://api.createsend.com/api/}Campaign.SendResponse
#
parameters = nil
puts obj.sendCampaign(parameters)


endpoint_url = ARGV.shift
obj = ApiSoap.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   AddSubscriberWithCustomFields(parameters)
#
# ARGS
#   parameters      SubscriberAddWithCustomFields - {http://api.createsend.com/api/}Subscriber.AddWithCustomFields
#
# RETURNS
#   parameters      SubscriberAddWithCustomFieldsResponse - {http://api.createsend.com/api/}Subscriber.AddWithCustomFieldsResponse
#
parameters = nil
puts obj.addSubscriberWithCustomFields(parameters)

# SYNOPSIS
#   AddAndResubscribeWithCustomFields(parameters)
#
# ARGS
#   parameters      SubscriberAddAndResubscribeWithCustomFields - {http://api.createsend.com/api/}Subscriber.AddAndResubscribeWithCustomFields
#
# RETURNS
#   parameters      SubscriberAddAndResubscribeWithCustomFieldsResponse - {http://api.createsend.com/api/}Subscriber.AddAndResubscribeWithCustomFieldsResponse
#
parameters = nil
puts obj.addAndResubscribeWithCustomFields(parameters)

# SYNOPSIS
#   AddSubscriber(parameters)
#
# ARGS
#   parameters      SubscriberAdd - {http://api.createsend.com/api/}Subscriber.Add
#
# RETURNS
#   parameters      SubscriberAddResponse - {http://api.createsend.com/api/}Subscriber.AddResponse
#
parameters = nil
puts obj.addSubscriber(parameters)

# SYNOPSIS
#   AddAndResubscribe(parameters)
#
# ARGS
#   parameters      SubscriberAddAndResubscribe - {http://api.createsend.com/api/}Subscriber.AddAndResubscribe
#
# RETURNS
#   parameters      SubscriberAddAndResubscribeResponse - {http://api.createsend.com/api/}Subscriber.AddAndResubscribeResponse
#
parameters = nil
puts obj.addAndResubscribe(parameters)

# SYNOPSIS
#   Unsubscribe(parameters)
#
# ARGS
#   parameters      SubscriberUnsubscribe - {http://api.createsend.com/api/}Subscriber.Unsubscribe
#
# RETURNS
#   parameters      SubscriberUnsubscribeResponse - {http://api.createsend.com/api/}Subscriber.UnsubscribeResponse
#
parameters = nil
puts obj.unsubscribe(parameters)

# SYNOPSIS
#   GetSubscribers(parameters)
#
# ARGS
#   parameters      SubscribersGetActive - {http://api.createsend.com/api/}Subscribers.GetActive
#
# RETURNS
#   parameters      SubscribersGetActiveResponse - {http://api.createsend.com/api/}Subscribers.GetActiveResponse
#
parameters = nil
puts obj.getSubscribers(parameters)

# SYNOPSIS
#   GetUnsubscribed(parameters)
#
# ARGS
#   parameters      SubscribersGetUnsubscribed - {http://api.createsend.com/api/}Subscribers.GetUnsubscribed
#
# RETURNS
#   parameters      SubscribersGetUnsubscribedResponse - {http://api.createsend.com/api/}Subscribers.GetUnsubscribedResponse
#
parameters = nil
puts obj.getUnsubscribed(parameters)

# SYNOPSIS
#   GetBounced(parameters)
#
# ARGS
#   parameters      SubscribersGetBounced - {http://api.createsend.com/api/}Subscribers.GetBounced
#
# RETURNS
#   parameters      SubscribersGetBouncedResponse - {http://api.createsend.com/api/}Subscribers.GetBouncedResponse
#
parameters = nil
puts obj.getBounced(parameters)

# SYNOPSIS
#   GetSingleSubscriber(parameters)
#
# ARGS
#   parameters      SubscribersGetSingleSubscriber - {http://api.createsend.com/api/}Subscribers.GetSingleSubscriber
#
# RETURNS
#   parameters      SubscribersGetSingleSubscriberResponse - {http://api.createsend.com/api/}Subscribers.GetSingleSubscriberResponse
#
parameters = nil
puts obj.getSingleSubscriber(parameters)

# SYNOPSIS
#   GetIsSubscribed(parameters)
#
# ARGS
#   parameters      SubscribersGetIsSubscribed - {http://api.createsend.com/api/}Subscribers.GetIsSubscribed
#
# RETURNS
#   parameters      SubscribersGetIsSubscribedResponse - {http://api.createsend.com/api/}Subscribers.GetIsSubscribedResponse
#
parameters = nil
puts obj.getIsSubscribed(parameters)

# SYNOPSIS
#   CreateList(parameters)
#
# ARGS
#   parameters      ListCreate - {http://api.createsend.com/api/}List.Create
#
# RETURNS
#   parameters      ListCreateResponse - {http://api.createsend.com/api/}List.CreateResponse
#
parameters = nil
puts obj.createList(parameters)

# SYNOPSIS
#   UpdateList(parameters)
#
# ARGS
#   parameters      ListUpdate - {http://api.createsend.com/api/}List.Update
#
# RETURNS
#   parameters      ListUpdateResponse - {http://api.createsend.com/api/}List.UpdateResponse
#
parameters = nil
puts obj.updateList(parameters)

# SYNOPSIS
#   GetListDetail(parameters)
#
# ARGS
#   parameters      ListGetDetail - {http://api.createsend.com/api/}List.GetDetail
#
# RETURNS
#   parameters      ListGetDetailResponse - {http://api.createsend.com/api/}List.GetDetailResponse
#
parameters = nil
puts obj.getListDetail(parameters)

# SYNOPSIS
#   DeleteList(parameters)
#
# ARGS
#   parameters      ListDelete - {http://api.createsend.com/api/}List.Delete
#
# RETURNS
#   parameters      ListDeleteResponse - {http://api.createsend.com/api/}List.DeleteResponse
#
parameters = nil
puts obj.deleteList(parameters)

# SYNOPSIS
#   GetListCustomFields(parameters)
#
# ARGS
#   parameters      ListGetCustomFields - {http://api.createsend.com/api/}List.GetCustomFields
#
# RETURNS
#   parameters      ListGetCustomFieldsResponse - {http://api.createsend.com/api/}List.GetCustomFieldsResponse
#
parameters = nil
puts obj.getListCustomFields(parameters)

# SYNOPSIS
#   DeleteListCustomField(parameters)
#
# ARGS
#   parameters      ListDeleteCustomField - {http://api.createsend.com/api/}List.DeleteCustomField
#
# RETURNS
#   parameters      ListDeleteCustomFieldResponse - {http://api.createsend.com/api/}List.DeleteCustomFieldResponse
#
parameters = nil
puts obj.deleteListCustomField(parameters)

# SYNOPSIS
#   CreateListCustomField(parameters)
#
# ARGS
#   parameters      ListCreateCustomField - {http://api.createsend.com/api/}List.CreateCustomField
#
# RETURNS
#   parameters      ListCreateCustomFieldResponse - {http://api.createsend.com/api/}List.CreateCustomFieldResponse
#
parameters = nil
puts obj.createListCustomField(parameters)

# SYNOPSIS
#   GetClientCampaigns(parameters)
#
# ARGS
#   parameters      ClientGetCampaigns - {http://api.createsend.com/api/}Client.GetCampaigns
#
# RETURNS
#   parameters      ClientGetCampaignsResponse - {http://api.createsend.com/api/}Client.GetCampaignsResponse
#
parameters = nil
puts obj.getClientCampaigns(parameters)

# SYNOPSIS
#   GetClientLists(parameters)
#
# ARGS
#   parameters      ClientGetLists - {http://api.createsend.com/api/}Client.GetLists
#
# RETURNS
#   parameters      ClientGetListsResponse - {http://api.createsend.com/api/}Client.GetListsResponse
#
parameters = nil
puts obj.getClientLists(parameters)

# SYNOPSIS
#   GetClientSegments(parameters)
#
# ARGS
#   parameters      ClientGetSegments - {http://api.createsend.com/api/}Client.GetSegments
#
# RETURNS
#   parameters      ClientGetSegmentsResponse - {http://api.createsend.com/api/}Client.GetSegmentsResponse
#
parameters = nil
puts obj.getClientSegments(parameters)

# SYNOPSIS
#   GetClientSuppressionList(parameters)
#
# ARGS
#   parameters      ClientGetSuppressionList - {http://api.createsend.com/api/}Client.GetSuppressionList
#
# RETURNS
#   parameters      ClientGetSuppressionListResponse - {http://api.createsend.com/api/}Client.GetSuppressionListResponse
#
parameters = nil
puts obj.getClientSuppressionList(parameters)

# SYNOPSIS
#   CreateClient(parameters)
#
# ARGS
#   parameters      ClientCreate - {http://api.createsend.com/api/}Client.Create
#
# RETURNS
#   parameters      ClientCreateResponse - {http://api.createsend.com/api/}Client.CreateResponse
#
parameters = nil
puts obj.createClient(parameters)

# SYNOPSIS
#   UpdateClientBasics(parameters)
#
# ARGS
#   parameters      ClientUpdateBasics - {http://api.createsend.com/api/}Client.UpdateBasics
#
# RETURNS
#   parameters      ClientUpdateBasicsResponse - {http://api.createsend.com/api/}Client.UpdateBasicsResponse
#
parameters = nil
puts obj.updateClientBasics(parameters)

# SYNOPSIS
#   UpdateClientAccessAndBilling(parameters)
#
# ARGS
#   parameters      ClientUpdateAccessAndBilling - {http://api.createsend.com/api/}Client.UpdateAccessAndBilling
#
# RETURNS
#   parameters      ClientUpdateAccessAndBillingResponse - {http://api.createsend.com/api/}Client.UpdateAccessAndBillingResponse
#
parameters = nil
puts obj.updateClientAccessAndBilling(parameters)

# SYNOPSIS
#   GetClientDetail(parameters)
#
# ARGS
#   parameters      ClientGetDetail - {http://api.createsend.com/api/}Client.GetDetail
#
# RETURNS
#   parameters      ClientGetDetailResponse - {http://api.createsend.com/api/}Client.GetDetailResponse
#
parameters = nil
puts obj.getClientDetail(parameters)

# SYNOPSIS
#   DeleteClient(parameters)
#
# ARGS
#   parameters      ClientDelete - {http://api.createsend.com/api/}Client.Delete
#
# RETURNS
#   parameters      ClientDeleteResponse - {http://api.createsend.com/api/}Client.DeleteResponse
#
parameters = nil
puts obj.deleteClient(parameters)

# SYNOPSIS
#   GetSubscriberClicks(parameters)
#
# ARGS
#   parameters      CampaignGetSubscriberClicks - {http://api.createsend.com/api/}Campaign.GetSubscriberClicks
#
# RETURNS
#   parameters      CampaignGetSubscriberClicksResponse - {http://api.createsend.com/api/}Campaign.GetSubscriberClicksResponse
#
parameters = nil
puts obj.getSubscriberClicks(parameters)

# SYNOPSIS
#   GetCampaignOpens(parameters)
#
# ARGS
#   parameters      CampaignGetOpens - {http://api.createsend.com/api/}Campaign.GetOpens
#
# RETURNS
#   parameters      CampaignGetOpensResponse - {http://api.createsend.com/api/}Campaign.GetOpensResponse
#
parameters = nil
puts obj.getCampaignOpens(parameters)

# SYNOPSIS
#   GetCampaignBounces(parameters)
#
# ARGS
#   parameters      CampaignGetBounces - {http://api.createsend.com/api/}Campaign.GetBounces
#
# RETURNS
#   parameters      CampaignGetBouncesResponse - {http://api.createsend.com/api/}Campaign.GetBouncesResponse
#
parameters = nil
puts obj.getCampaignBounces(parameters)

# SYNOPSIS
#   GetCampaignUnsubscribes(parameters)
#
# ARGS
#   parameters      CampaignGetUnsubscribes - {http://api.createsend.com/api/}Campaign.GetUnsubscribes
#
# RETURNS
#   parameters      CampaignGetUnsubscribesResponse - {http://api.createsend.com/api/}Campaign.GetUnsubscribesResponse
#
parameters = nil
puts obj.getCampaignUnsubscribes(parameters)

# SYNOPSIS
#   GetCampaignSummary(parameters)
#
# ARGS
#   parameters      CampaignGetSummary - {http://api.createsend.com/api/}Campaign.GetSummary
#
# RETURNS
#   parameters      CampaignGetSummaryResponse - {http://api.createsend.com/api/}Campaign.GetSummaryResponse
#
parameters = nil
puts obj.getCampaignSummary(parameters)

# SYNOPSIS
#   GetCampaignLists(parameters)
#
# ARGS
#   parameters      CampaignGetLists - {http://api.createsend.com/api/}Campaign.GetLists
#
# RETURNS
#   parameters      CampaignGetListsResponse - {http://api.createsend.com/api/}Campaign.GetListsResponse
#
parameters = nil
puts obj.getCampaignLists(parameters)

# SYNOPSIS
#   GetClients(parameters)
#
# ARGS
#   parameters      UserGetClients - {http://api.createsend.com/api/}User.GetClients
#
# RETURNS
#   parameters      UserGetClientsResponse - {http://api.createsend.com/api/}User.GetClientsResponse
#
parameters = nil
puts obj.getClients(parameters)

# SYNOPSIS
#   GetSystemDate(parameters)
#
# ARGS
#   parameters      UserGetSystemDate - {http://api.createsend.com/api/}User.GetSystemDate
#
# RETURNS
#   parameters      UserGetSystemDateResponse - {http://api.createsend.com/api/}User.GetSystemDateResponse
#
parameters = nil
puts obj.getSystemDate(parameters)

# SYNOPSIS
#   GetTimezones(parameters)
#
# ARGS
#   parameters      UserGetTimezones - {http://api.createsend.com/api/}User.GetTimezones
#
# RETURNS
#   parameters      UserGetTimezonesResponse - {http://api.createsend.com/api/}User.GetTimezonesResponse
#
parameters = nil
puts obj.getTimezones(parameters)

# SYNOPSIS
#   GetCountries(parameters)
#
# ARGS
#   parameters      UserGetCountries - {http://api.createsend.com/api/}User.GetCountries
#
# RETURNS
#   parameters      UserGetCountriesResponse - {http://api.createsend.com/api/}User.GetCountriesResponse
#
parameters = nil
puts obj.getCountries(parameters)

# SYNOPSIS
#   CreateCampaign(parameters)
#
# ARGS
#   parameters      CampaignCreate - {http://api.createsend.com/api/}Campaign.Create
#
# RETURNS
#   parameters      CampaignCreateResponse - {http://api.createsend.com/api/}Campaign.CreateResponse
#
parameters = nil
puts obj.createCampaign(parameters)

# SYNOPSIS
#   SendCampaign(parameters)
#
# ARGS
#   parameters      CampaignSend - {http://api.createsend.com/api/}Campaign.Send
#
# RETURNS
#   parameters      CampaignSendResponse - {http://api.createsend.com/api/}Campaign.SendResponse
#
parameters = nil
puts obj.sendCampaign(parameters)


endpoint_url = ARGV.shift
obj = ApiHttpGet.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   AddSubscriber(apiKey, listID, email, name)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   listID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   email           C_String - {http://www.w3.org/2001/XMLSchema}string
#   name            C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Result - {http://api.createsend.com/api/}Result
#
apiKey = listID = email = name = nil
puts obj.addSubscriber(apiKey, listID, email, name)

# SYNOPSIS
#   AddAndResubscribe(apiKey, listID, email, name)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   listID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   email           C_String - {http://www.w3.org/2001/XMLSchema}string
#   name            C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Result - {http://api.createsend.com/api/}Result
#
apiKey = listID = email = name = nil
puts obj.addAndResubscribe(apiKey, listID, email, name)

# SYNOPSIS
#   Unsubscribe(apiKey, listID, email)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   listID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   email           C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Result - {http://api.createsend.com/api/}Result
#
apiKey = listID = email = nil
puts obj.unsubscribe(apiKey, listID, email)

# SYNOPSIS
#   GetSubscribers(apiKey, listID, date)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   listID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   date            C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = listID = date = nil
puts obj.getSubscribers(apiKey, listID, date)

# SYNOPSIS
#   GetUnsubscribed(apiKey, listID, date)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   listID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   date            C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = listID = date = nil
puts obj.getUnsubscribed(apiKey, listID, date)

# SYNOPSIS
#   GetBounced(apiKey, listID, date)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   listID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   date            C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = listID = date = nil
puts obj.getBounced(apiKey, listID, date)

# SYNOPSIS
#   GetSingleSubscriber(apiKey, listID, emailAddress)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   listID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   emailAddress    C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = listID = emailAddress = nil
puts obj.getSingleSubscriber(apiKey, listID, emailAddress)

# SYNOPSIS
#   GetIsSubscribed(apiKey, listID, email)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   listID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   email           C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = listID = email = nil
puts obj.getIsSubscribed(apiKey, listID, email)

# SYNOPSIS
#   CreateList(apiKey, clientID, title, unsubscribePage, confirmOptIn, confirmationSuccessPage)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   clientID        C_String - {http://www.w3.org/2001/XMLSchema}string
#   title           C_String - {http://www.w3.org/2001/XMLSchema}string
#   unsubscribePage C_String - {http://www.w3.org/2001/XMLSchema}string
#   confirmOptIn    C_String - {http://www.w3.org/2001/XMLSchema}string
#   confirmationSuccessPage C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = clientID = title = unsubscribePage = confirmOptIn = confirmationSuccessPage = nil
puts obj.createList(apiKey, clientID, title, unsubscribePage, confirmOptIn, confirmationSuccessPage)

# SYNOPSIS
#   UpdateList(apiKey, listID, title, unsubscribePage, confirmOptIn, confirmationSuccessPage)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   listID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   title           C_String - {http://www.w3.org/2001/XMLSchema}string
#   unsubscribePage C_String - {http://www.w3.org/2001/XMLSchema}string
#   confirmOptIn    C_String - {http://www.w3.org/2001/XMLSchema}string
#   confirmationSuccessPage C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Result - {http://api.createsend.com/api/}Result
#
apiKey = listID = title = unsubscribePage = confirmOptIn = confirmationSuccessPage = nil
puts obj.updateList(apiKey, listID, title, unsubscribePage, confirmOptIn, confirmationSuccessPage)

# SYNOPSIS
#   GetListDetail(apiKey, listID)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   listID          C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = listID = nil
puts obj.getListDetail(apiKey, listID)

# SYNOPSIS
#   DeleteList(apiKey, listID)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   listID          C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Result - {http://api.createsend.com/api/}Result
#
apiKey = listID = nil
puts obj.deleteList(apiKey, listID)

# SYNOPSIS
#   GetListCustomFields(apiKey, listID)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   listID          C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = listID = nil
puts obj.getListCustomFields(apiKey, listID)

# SYNOPSIS
#   DeleteListCustomField(apiKey, listID, key)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   listID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   key             C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Result - {http://api.createsend.com/api/}Result
#
apiKey = listID = key = nil
puts obj.deleteListCustomField(apiKey, listID, key)

# SYNOPSIS
#   CreateListCustomField(apiKey, listID, fieldName, dataType, options)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   listID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   fieldName       C_String - {http://www.w3.org/2001/XMLSchema}string
#   dataType        C_String - {http://www.w3.org/2001/XMLSchema}string
#   options         C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Result - {http://api.createsend.com/api/}Result
#
apiKey = listID = fieldName = dataType = options = nil
puts obj.createListCustomField(apiKey, listID, fieldName, dataType, options)

# SYNOPSIS
#   GetClientCampaigns(apiKey, clientID)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   clientID        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = clientID = nil
puts obj.getClientCampaigns(apiKey, clientID)

# SYNOPSIS
#   GetClientLists(apiKey, clientID)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   clientID        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = clientID = nil
puts obj.getClientLists(apiKey, clientID)

# SYNOPSIS
#   GetClientSegments(apiKey, clientID)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   clientID        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = clientID = nil
puts obj.getClientSegments(apiKey, clientID)

# SYNOPSIS
#   GetClientSuppressionList(apiKey, clientID)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   clientID        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = clientID = nil
puts obj.getClientSuppressionList(apiKey, clientID)

# SYNOPSIS
#   CreateClient(apiKey, companyName, contactName, emailAddress, country, timezone)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   companyName     C_String - {http://www.w3.org/2001/XMLSchema}string
#   contactName     C_String - {http://www.w3.org/2001/XMLSchema}string
#   emailAddress    C_String - {http://www.w3.org/2001/XMLSchema}string
#   country         C_String - {http://www.w3.org/2001/XMLSchema}string
#   timezone        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = companyName = contactName = emailAddress = country = timezone = nil
puts obj.createClient(apiKey, companyName, contactName, emailAddress, country, timezone)

# SYNOPSIS
#   UpdateClientBasics(apiKey, clientID, companyName, contactName, emailAddress, country, timezone)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   clientID        C_String - {http://www.w3.org/2001/XMLSchema}string
#   companyName     C_String - {http://www.w3.org/2001/XMLSchema}string
#   contactName     C_String - {http://www.w3.org/2001/XMLSchema}string
#   emailAddress    C_String - {http://www.w3.org/2001/XMLSchema}string
#   country         C_String - {http://www.w3.org/2001/XMLSchema}string
#   timezone        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = clientID = companyName = contactName = emailAddress = country = timezone = nil
puts obj.updateClientBasics(apiKey, clientID, companyName, contactName, emailAddress, country, timezone)

# SYNOPSIS
#   UpdateClientAccessAndBilling(apiKey, clientID, accessLevel, username, password, billingType, currency, deliveryFee, costPerRecipient, designAndSpamTestFee)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   clientID        C_String - {http://www.w3.org/2001/XMLSchema}string
#   accessLevel     C_String - {http://www.w3.org/2001/XMLSchema}string
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   billingType     C_String - {http://www.w3.org/2001/XMLSchema}string
#   currency        C_String - {http://www.w3.org/2001/XMLSchema}string
#   deliveryFee     C_String - {http://www.w3.org/2001/XMLSchema}string
#   costPerRecipient C_String - {http://www.w3.org/2001/XMLSchema}string
#   designAndSpamTestFee C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Result - {http://api.createsend.com/api/}Result
#
apiKey = clientID = accessLevel = username = password = billingType = currency = deliveryFee = costPerRecipient = designAndSpamTestFee = nil
puts obj.updateClientAccessAndBilling(apiKey, clientID, accessLevel, username, password, billingType, currency, deliveryFee, costPerRecipient, designAndSpamTestFee)

# SYNOPSIS
#   GetClientDetail(apiKey, clientID)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   clientID        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = clientID = nil
puts obj.getClientDetail(apiKey, clientID)

# SYNOPSIS
#   DeleteClient(apiKey, clientID)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   clientID        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Result - {http://api.createsend.com/api/}Result
#
apiKey = clientID = nil
puts obj.deleteClient(apiKey, clientID)

# SYNOPSIS
#   GetSubscriberClicks(apiKey, campaignID)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   campaignID      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = campaignID = nil
puts obj.getSubscriberClicks(apiKey, campaignID)

# SYNOPSIS
#   GetCampaignOpens(apiKey, campaignID)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   campaignID      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = campaignID = nil
puts obj.getCampaignOpens(apiKey, campaignID)

# SYNOPSIS
#   GetCampaignBounces(apiKey, campaignID)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   campaignID      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = campaignID = nil
puts obj.getCampaignBounces(apiKey, campaignID)

# SYNOPSIS
#   GetCampaignUnsubscribes(apiKey, campaignID)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   campaignID      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = campaignID = nil
puts obj.getCampaignUnsubscribes(apiKey, campaignID)

# SYNOPSIS
#   GetCampaignSummary(apiKey, campaignID)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   campaignID      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = campaignID = nil
puts obj.getCampaignSummary(apiKey, campaignID)

# SYNOPSIS
#   GetCampaignLists(apiKey, campaignID)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   campaignID      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = campaignID = nil
puts obj.getCampaignLists(apiKey, campaignID)

# SYNOPSIS
#   GetClients(apiKey)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = nil
puts obj.getClients(apiKey)

# SYNOPSIS
#   GetSystemDate(apiKey)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = nil
puts obj.getSystemDate(apiKey)

# SYNOPSIS
#   GetTimezones(apiKey)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = nil
puts obj.getTimezones(apiKey)

# SYNOPSIS
#   GetCountries(apiKey)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = nil
puts obj.getCountries(apiKey)

# SYNOPSIS
#   SendCampaign(apiKey, campaignID, confirmationEmail, sendDate)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   campaignID      C_String - {http://www.w3.org/2001/XMLSchema}string
#   confirmationEmail C_String - {http://www.w3.org/2001/XMLSchema}string
#   sendDate        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Result - {http://api.createsend.com/api/}Result
#
apiKey = campaignID = confirmationEmail = sendDate = nil
puts obj.sendCampaign(apiKey, campaignID, confirmationEmail, sendDate)


endpoint_url = ARGV.shift
obj = ApiHttpPost.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   AddSubscriber(apiKey, listID, email, name)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   listID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   email           C_String - {http://www.w3.org/2001/XMLSchema}string
#   name            C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Result - {http://api.createsend.com/api/}Result
#
apiKey = listID = email = name = nil
puts obj.addSubscriber(apiKey, listID, email, name)

# SYNOPSIS
#   AddAndResubscribe(apiKey, listID, email, name)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   listID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   email           C_String - {http://www.w3.org/2001/XMLSchema}string
#   name            C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Result - {http://api.createsend.com/api/}Result
#
apiKey = listID = email = name = nil
puts obj.addAndResubscribe(apiKey, listID, email, name)

# SYNOPSIS
#   Unsubscribe(apiKey, listID, email)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   listID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   email           C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Result - {http://api.createsend.com/api/}Result
#
apiKey = listID = email = nil
puts obj.unsubscribe(apiKey, listID, email)

# SYNOPSIS
#   GetSubscribers(apiKey, listID, date)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   listID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   date            C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = listID = date = nil
puts obj.getSubscribers(apiKey, listID, date)

# SYNOPSIS
#   GetUnsubscribed(apiKey, listID, date)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   listID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   date            C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = listID = date = nil
puts obj.getUnsubscribed(apiKey, listID, date)

# SYNOPSIS
#   GetBounced(apiKey, listID, date)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   listID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   date            C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = listID = date = nil
puts obj.getBounced(apiKey, listID, date)

# SYNOPSIS
#   GetSingleSubscriber(apiKey, listID, emailAddress)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   listID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   emailAddress    C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = listID = emailAddress = nil
puts obj.getSingleSubscriber(apiKey, listID, emailAddress)

# SYNOPSIS
#   GetIsSubscribed(apiKey, listID, email)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   listID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   email           C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = listID = email = nil
puts obj.getIsSubscribed(apiKey, listID, email)

# SYNOPSIS
#   CreateList(apiKey, clientID, title, unsubscribePage, confirmOptIn, confirmationSuccessPage)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   clientID        C_String - {http://www.w3.org/2001/XMLSchema}string
#   title           C_String - {http://www.w3.org/2001/XMLSchema}string
#   unsubscribePage C_String - {http://www.w3.org/2001/XMLSchema}string
#   confirmOptIn    C_String - {http://www.w3.org/2001/XMLSchema}string
#   confirmationSuccessPage C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = clientID = title = unsubscribePage = confirmOptIn = confirmationSuccessPage = nil
puts obj.createList(apiKey, clientID, title, unsubscribePage, confirmOptIn, confirmationSuccessPage)

# SYNOPSIS
#   UpdateList(apiKey, listID, title, unsubscribePage, confirmOptIn, confirmationSuccessPage)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   listID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   title           C_String - {http://www.w3.org/2001/XMLSchema}string
#   unsubscribePage C_String - {http://www.w3.org/2001/XMLSchema}string
#   confirmOptIn    C_String - {http://www.w3.org/2001/XMLSchema}string
#   confirmationSuccessPage C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Result - {http://api.createsend.com/api/}Result
#
apiKey = listID = title = unsubscribePage = confirmOptIn = confirmationSuccessPage = nil
puts obj.updateList(apiKey, listID, title, unsubscribePage, confirmOptIn, confirmationSuccessPage)

# SYNOPSIS
#   GetListDetail(apiKey, listID)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   listID          C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = listID = nil
puts obj.getListDetail(apiKey, listID)

# SYNOPSIS
#   DeleteList(apiKey, listID)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   listID          C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Result - {http://api.createsend.com/api/}Result
#
apiKey = listID = nil
puts obj.deleteList(apiKey, listID)

# SYNOPSIS
#   GetListCustomFields(apiKey, listID)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   listID          C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = listID = nil
puts obj.getListCustomFields(apiKey, listID)

# SYNOPSIS
#   DeleteListCustomField(apiKey, listID, key)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   listID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   key             C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Result - {http://api.createsend.com/api/}Result
#
apiKey = listID = key = nil
puts obj.deleteListCustomField(apiKey, listID, key)

# SYNOPSIS
#   CreateListCustomField(apiKey, listID, fieldName, dataType, options)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   listID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   fieldName       C_String - {http://www.w3.org/2001/XMLSchema}string
#   dataType        C_String - {http://www.w3.org/2001/XMLSchema}string
#   options         C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Result - {http://api.createsend.com/api/}Result
#
apiKey = listID = fieldName = dataType = options = nil
puts obj.createListCustomField(apiKey, listID, fieldName, dataType, options)

# SYNOPSIS
#   GetClientCampaigns(apiKey, clientID)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   clientID        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = clientID = nil
puts obj.getClientCampaigns(apiKey, clientID)

# SYNOPSIS
#   GetClientLists(apiKey, clientID)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   clientID        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = clientID = nil
puts obj.getClientLists(apiKey, clientID)

# SYNOPSIS
#   GetClientSegments(apiKey, clientID)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   clientID        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = clientID = nil
puts obj.getClientSegments(apiKey, clientID)

# SYNOPSIS
#   GetClientSuppressionList(apiKey, clientID)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   clientID        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = clientID = nil
puts obj.getClientSuppressionList(apiKey, clientID)

# SYNOPSIS
#   CreateClient(apiKey, companyName, contactName, emailAddress, country, timezone)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   companyName     C_String - {http://www.w3.org/2001/XMLSchema}string
#   contactName     C_String - {http://www.w3.org/2001/XMLSchema}string
#   emailAddress    C_String - {http://www.w3.org/2001/XMLSchema}string
#   country         C_String - {http://www.w3.org/2001/XMLSchema}string
#   timezone        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = companyName = contactName = emailAddress = country = timezone = nil
puts obj.createClient(apiKey, companyName, contactName, emailAddress, country, timezone)

# SYNOPSIS
#   UpdateClientBasics(apiKey, clientID, companyName, contactName, emailAddress, country, timezone)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   clientID        C_String - {http://www.w3.org/2001/XMLSchema}string
#   companyName     C_String - {http://www.w3.org/2001/XMLSchema}string
#   contactName     C_String - {http://www.w3.org/2001/XMLSchema}string
#   emailAddress    C_String - {http://www.w3.org/2001/XMLSchema}string
#   country         C_String - {http://www.w3.org/2001/XMLSchema}string
#   timezone        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = clientID = companyName = contactName = emailAddress = country = timezone = nil
puts obj.updateClientBasics(apiKey, clientID, companyName, contactName, emailAddress, country, timezone)

# SYNOPSIS
#   UpdateClientAccessAndBilling(apiKey, clientID, accessLevel, username, password, billingType, currency, deliveryFee, costPerRecipient, designAndSpamTestFee)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   clientID        C_String - {http://www.w3.org/2001/XMLSchema}string
#   accessLevel     C_String - {http://www.w3.org/2001/XMLSchema}string
#   username        C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   billingType     C_String - {http://www.w3.org/2001/XMLSchema}string
#   currency        C_String - {http://www.w3.org/2001/XMLSchema}string
#   deliveryFee     C_String - {http://www.w3.org/2001/XMLSchema}string
#   costPerRecipient C_String - {http://www.w3.org/2001/XMLSchema}string
#   designAndSpamTestFee C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Result - {http://api.createsend.com/api/}Result
#
apiKey = clientID = accessLevel = username = password = billingType = currency = deliveryFee = costPerRecipient = designAndSpamTestFee = nil
puts obj.updateClientAccessAndBilling(apiKey, clientID, accessLevel, username, password, billingType, currency, deliveryFee, costPerRecipient, designAndSpamTestFee)

# SYNOPSIS
#   GetClientDetail(apiKey, clientID)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   clientID        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = clientID = nil
puts obj.getClientDetail(apiKey, clientID)

# SYNOPSIS
#   DeleteClient(apiKey, clientID)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   clientID        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Result - {http://api.createsend.com/api/}Result
#
apiKey = clientID = nil
puts obj.deleteClient(apiKey, clientID)

# SYNOPSIS
#   GetSubscriberClicks(apiKey, campaignID)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   campaignID      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = campaignID = nil
puts obj.getSubscriberClicks(apiKey, campaignID)

# SYNOPSIS
#   GetCampaignOpens(apiKey, campaignID)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   campaignID      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = campaignID = nil
puts obj.getCampaignOpens(apiKey, campaignID)

# SYNOPSIS
#   GetCampaignBounces(apiKey, campaignID)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   campaignID      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = campaignID = nil
puts obj.getCampaignBounces(apiKey, campaignID)

# SYNOPSIS
#   GetCampaignUnsubscribes(apiKey, campaignID)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   campaignID      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = campaignID = nil
puts obj.getCampaignUnsubscribes(apiKey, campaignID)

# SYNOPSIS
#   GetCampaignSummary(apiKey, campaignID)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   campaignID      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = campaignID = nil
puts obj.getCampaignSummary(apiKey, campaignID)

# SYNOPSIS
#   GetCampaignLists(apiKey, campaignID)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   campaignID      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = campaignID = nil
puts obj.getCampaignLists(apiKey, campaignID)

# SYNOPSIS
#   GetClients(apiKey)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = nil
puts obj.getClients(apiKey)

# SYNOPSIS
#   GetSystemDate(apiKey)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = nil
puts obj.getSystemDate(apiKey)

# SYNOPSIS
#   GetTimezones(apiKey)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = nil
puts obj.getTimezones(apiKey)

# SYNOPSIS
#   GetCountries(apiKey)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            AnyType - {http://api.createsend.com/api/}anyType
#
apiKey = nil
puts obj.getCountries(apiKey)

# SYNOPSIS
#   SendCampaign(apiKey, campaignID, confirmationEmail, sendDate)
#
# ARGS
#   apiKey          C_String - {http://www.w3.org/2001/XMLSchema}string
#   campaignID      C_String - {http://www.w3.org/2001/XMLSchema}string
#   confirmationEmail C_String - {http://www.w3.org/2001/XMLSchema}string
#   sendDate        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Result - {http://api.createsend.com/api/}Result
#
apiKey = campaignID = confirmationEmail = sendDate = nil
puts obj.sendCampaign(apiKey, campaignID, confirmationEmail, sendDate)


