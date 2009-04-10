require 'xsd/qname'

# {http://api.createsend.com/api/}ArrayOfSubscriberCustomField
class ArrayOfSubscriberCustomField < ::Array
end

# {http://api.createsend.com/api/}SubscriberCustomField
#   key - SOAP::SOAPString
#   value - SOAP::SOAPString
class SubscriberCustomField
  attr_accessor :key
  attr_accessor :value

  def initialize(key = nil, value = nil)
    @key = key
    @value = value
  end
end

# {http://api.createsend.com/api/}Result
#   code - SOAP::SOAPInt
#   message - SOAP::SOAPString
class Result
  attr_accessor :code
  attr_accessor :message

  def initialize(code = nil, message = nil)
    @code = code
    @message = message
  end
end

# {http://api.createsend.com/api/}Client
#   clientID - SOAP::SOAPString
#   name - SOAP::SOAPString
class Client
  attr_accessor :clientID
  attr_accessor :name

  def initialize(clientID = nil, name = nil)
    @clientID = clientID
    @name = name
  end
end

# {http://api.createsend.com/api/}CampaignSummary
#   recipients - SOAP::SOAPInt
#   totalOpened - SOAP::SOAPInt
#   clicks - SOAP::SOAPInt
#   unsubscribed - SOAP::SOAPInt
#   bounced - SOAP::SOAPInt
class CampaignSummary
  attr_accessor :recipients
  attr_accessor :totalOpened
  attr_accessor :clicks
  attr_accessor :unsubscribed
  attr_accessor :bounced

  def initialize(recipients = nil, totalOpened = nil, clicks = nil, unsubscribed = nil, bounced = nil)
    @recipients = recipients
    @totalOpened = totalOpened
    @clicks = clicks
    @unsubscribed = unsubscribed
    @bounced = bounced
  end
end

# {http://api.createsend.com/api/}SubscriberUnsubscribe
#   emailAddress - SOAP::SOAPString
#   listID - SOAP::SOAPString
class SubscriberUnsubscribe
  attr_accessor :emailAddress
  attr_accessor :listID

  def initialize(emailAddress = nil, listID = nil)
    @emailAddress = emailAddress
    @listID = listID
  end
end

# {http://api.createsend.com/api/}SubscriberBounce
#   emailAddress - SOAP::SOAPString
#   listID - SOAP::SOAPString
#   bounceType - SOAP::SOAPString
class SubscriberBounce
  attr_accessor :emailAddress
  attr_accessor :listID
  attr_accessor :bounceType

  def initialize(emailAddress = nil, listID = nil, bounceType = nil)
    @emailAddress = emailAddress
    @listID = listID
    @bounceType = bounceType
  end
end

# {http://api.createsend.com/api/}SubscriberOpen
#   emailAddress - SOAP::SOAPString
#   listID - SOAP::SOAPString
#   numberOfOpens - SOAP::SOAPInt
class SubscriberOpen
  attr_accessor :emailAddress
  attr_accessor :listID
  attr_accessor :numberOfOpens

  def initialize(emailAddress = nil, listID = nil, numberOfOpens = nil)
    @emailAddress = emailAddress
    @listID = listID
    @numberOfOpens = numberOfOpens
  end
end

# {http://api.createsend.com/api/}SubscriberClick
#   emailAddress - SOAP::SOAPString
#   listID - SOAP::SOAPString
#   clickedLinks - ArrayOfSubscriberClickedLink
class SubscriberClick
  attr_accessor :emailAddress
  attr_accessor :listID
  attr_accessor :clickedLinks

  def initialize(emailAddress = nil, listID = nil, clickedLinks = nil)
    @emailAddress = emailAddress
    @listID = listID
    @clickedLinks = clickedLinks
  end
end

# {http://api.createsend.com/api/}ArrayOfSubscriberClickedLink
class ArrayOfSubscriberClickedLink < ::Array
end

# {http://api.createsend.com/api/}SubscriberClickedLink
#   link - SOAP::SOAPString
#   clicks - SOAP::SOAPString
class SubscriberClickedLink
  attr_accessor :link
  attr_accessor :clicks

  def initialize(link = nil, clicks = nil)
    @link = link
    @clicks = clicks
  end
end

# {http://api.createsend.com/api/}ClientDetail
#   basicDetails - ClientBasicDetails
#   accessAndBilling - ClientAccessAndBilling
class ClientDetail
  attr_accessor :basicDetails
  attr_accessor :accessAndBilling

  def initialize(basicDetails = nil, accessAndBilling = nil)
    @basicDetails = basicDetails
    @accessAndBilling = accessAndBilling
  end
end

# {http://api.createsend.com/api/}ClientBasicDetails
#   clientID - SOAP::SOAPString
#   companyName - SOAP::SOAPString
#   contactName - SOAP::SOAPString
#   emailAddress - SOAP::SOAPString
#   country - SOAP::SOAPString
#   timezone - SOAP::SOAPString
class ClientBasicDetails
  attr_accessor :clientID
  attr_accessor :companyName
  attr_accessor :contactName
  attr_accessor :emailAddress
  attr_accessor :country
  attr_accessor :timezone

  def initialize(clientID = nil, companyName = nil, contactName = nil, emailAddress = nil, country = nil, timezone = nil)
    @clientID = clientID
    @companyName = companyName
    @contactName = contactName
    @emailAddress = emailAddress
    @country = country
    @timezone = timezone
  end
end

# {http://api.createsend.com/api/}ClientAccessAndBilling
#   username - SOAP::SOAPString
#   password - SOAP::SOAPString
#   billingType - SOAP::SOAPString
#   currency - SOAP::SOAPString
#   deliveryFee - SOAP::SOAPString
#   costPerRecipient - SOAP::SOAPString
#   designAndSpamTestFee - SOAP::SOAPString
#   accessLevel - SOAP::SOAPInt
class ClientAccessAndBilling
  attr_accessor :username
  attr_accessor :password
  attr_accessor :billingType
  attr_accessor :currency
  attr_accessor :deliveryFee
  attr_accessor :costPerRecipient
  attr_accessor :designAndSpamTestFee
  attr_accessor :accessLevel

  def initialize(username = nil, password = nil, billingType = nil, currency = nil, deliveryFee = nil, costPerRecipient = nil, designAndSpamTestFee = nil, accessLevel = nil)
    @username = username
    @password = password
    @billingType = billingType
    @currency = currency
    @deliveryFee = deliveryFee
    @costPerRecipient = costPerRecipient
    @designAndSpamTestFee = designAndSpamTestFee
    @accessLevel = accessLevel
  end
end

# {http://api.createsend.com/api/}List
#   listID - SOAP::SOAPString
#   name - SOAP::SOAPString
class List
  attr_accessor :listID
  attr_accessor :name

  def initialize(listID = nil, name = nil)
    @listID = listID
    @name = name
  end
end

# {http://api.createsend.com/api/}Campaign
#   campaignID - SOAP::SOAPString
#   subject - SOAP::SOAPString
#   sentDate - SOAP::SOAPString
#   totalRecipients - SOAP::SOAPInt
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
  end
end

# {http://api.createsend.com/api/}ListCustomField
#   fieldName - SOAP::SOAPString
#   key - SOAP::SOAPString
#   dataType - SubscriberFieldDataType
#   fieldOptions - ArrayOfString
class ListCustomField
  attr_accessor :fieldName
  attr_accessor :key
  attr_accessor :dataType
  attr_accessor :fieldOptions

  def initialize(fieldName = nil, key = nil, dataType = nil, fieldOptions = nil)
    @fieldName = fieldName
    @key = key
    @dataType = dataType
    @fieldOptions = fieldOptions
  end
end

# {http://api.createsend.com/api/}ArrayOfString
class ArrayOfString < ::Array
end

# {http://api.createsend.com/api/}ListDetail
#   listID - SOAP::SOAPString
#   title - SOAP::SOAPString
#   unsubscribePage - SOAP::SOAPString
#   confirmOptIn - SOAP::SOAPBoolean
#   confirmationSuccessPage - SOAP::SOAPString
class ListDetail
  attr_accessor :listID
  attr_accessor :title
  attr_accessor :unsubscribePage
  attr_accessor :confirmOptIn
  attr_accessor :confirmationSuccessPage

  def initialize(listID = nil, title = nil, unsubscribePage = nil, confirmOptIn = nil, confirmationSuccessPage = nil)
    @listID = listID
    @title = title
    @unsubscribePage = unsubscribePage
    @confirmOptIn = confirmOptIn
    @confirmationSuccessPage = confirmationSuccessPage
  end
end

# {http://api.createsend.com/api/}Subscriber
#   emailAddress - SOAP::SOAPString
#   name - SOAP::SOAPString
#   date - SOAP::SOAPString
#   state - SOAP::SOAPString
#   customFields - ArrayOfSubscriberCustomField
class Subscriber
  attr_accessor :emailAddress
  attr_accessor :name
  attr_accessor :date
  attr_accessor :state
  attr_accessor :customFields

  def initialize(emailAddress = nil, name = nil, date = nil, state = nil, customFields = nil)
    @emailAddress = emailAddress
    @name = name
    @date = date
    @state = state
    @customFields = customFields
  end
end

# {http://api.createsend.com/api/}ArrayOfSubscriber
class ArrayOfSubscriber < ::Array
end

# {http://api.createsend.com/api/}ArrayOfListCustomField
class ArrayOfListCustomField < ::Array
end

# {http://api.createsend.com/api/}ArrayOfCampaign
class ArrayOfCampaign < ::Array
end

# {http://api.createsend.com/api/}ArrayOfList
class ArrayOfList < ::Array
end

# {http://api.createsend.com/api/}ArrayOfSubscriberClick
class ArrayOfSubscriberClick < ::Array
end

# {http://api.createsend.com/api/}ArrayOfSubscriberOpen
class ArrayOfSubscriberOpen < ::Array
end

# {http://api.createsend.com/api/}ArrayOfSubscriberBounce
class ArrayOfSubscriberBounce < ::Array
end

# {http://api.createsend.com/api/}ArrayOfSubscriberUnsubscribe
class ArrayOfSubscriberUnsubscribe < ::Array
end

# {http://api.createsend.com/api/}ArrayOfClient
class ArrayOfClient < ::Array
end

# {http://api.createsend.com/api/}SubscriberFieldDataType
class SubscriberFieldDataType < ::String
  MultiSelectMany = SubscriberFieldDataType.new("MultiSelectMany")
  MultiSelectOne = SubscriberFieldDataType.new("MultiSelectOne")
  Number = SubscriberFieldDataType.new("Number")
  Text = SubscriberFieldDataType.new("Text")
end

# {http://api.createsend.com/api/}Subscriber.AddWithCustomFields
#   apiKey - SOAP::SOAPString
#   listID - SOAP::SOAPString
#   email - SOAP::SOAPString
#   name - SOAP::SOAPString
#   customFields - ArrayOfSubscriberCustomField
class SubscriberAddWithCustomFields
  attr_accessor :apiKey
  attr_accessor :listID
  attr_accessor :email
  attr_accessor :name
  attr_accessor :customFields

  def initialize(apiKey = nil, listID = nil, email = nil, name = nil, customFields = nil)
    @apiKey = apiKey
    @listID = listID
    @email = email
    @name = name
    @customFields = customFields
  end
end

# {http://api.createsend.com/api/}Subscriber.AddWithCustomFieldsResponse
#   subscriber_AddWithCustomFieldsResult - Result
class SubscriberAddWithCustomFieldsResponse
  attr_accessor :subscriber_AddWithCustomFieldsResult

  def initialize(subscriber_AddWithCustomFieldsResult = nil)
    @subscriber_AddWithCustomFieldsResult = subscriber_AddWithCustomFieldsResult
  end
end

# {http://api.createsend.com/api/}Subscriber.AddAndResubscribeWithCustomFields
#   apiKey - SOAP::SOAPString
#   listID - SOAP::SOAPString
#   email - SOAP::SOAPString
#   name - SOAP::SOAPString
#   customFields - ArrayOfSubscriberCustomField
class SubscriberAddAndResubscribeWithCustomFields
  attr_accessor :apiKey
  attr_accessor :listID
  attr_accessor :email
  attr_accessor :name
  attr_accessor :customFields

  def initialize(apiKey = nil, listID = nil, email = nil, name = nil, customFields = nil)
    @apiKey = apiKey
    @listID = listID
    @email = email
    @name = name
    @customFields = customFields
  end
end

# {http://api.createsend.com/api/}Subscriber.AddAndResubscribeWithCustomFieldsResponse
#   subscriber_AddAndResubscribeWithCustomFieldsResult - Result
class SubscriberAddAndResubscribeWithCustomFieldsResponse
  attr_accessor :subscriber_AddAndResubscribeWithCustomFieldsResult

  def initialize(subscriber_AddAndResubscribeWithCustomFieldsResult = nil)
    @subscriber_AddAndResubscribeWithCustomFieldsResult = subscriber_AddAndResubscribeWithCustomFieldsResult
  end
end

# {http://api.createsend.com/api/}Subscriber.Add
#   apiKey - SOAP::SOAPString
#   listID - SOAP::SOAPString
#   email - SOAP::SOAPString
#   name - SOAP::SOAPString
class SubscriberAdd
  attr_accessor :apiKey
  attr_accessor :listID
  attr_accessor :email
  attr_accessor :name

  def initialize(apiKey = nil, listID = nil, email = nil, name = nil)
    @apiKey = apiKey
    @listID = listID
    @email = email
    @name = name
  end
end

# {http://api.createsend.com/api/}Subscriber.AddResponse
#   subscriber_AddResult - Result
class SubscriberAddResponse
  attr_accessor :subscriber_AddResult

  def initialize(subscriber_AddResult = nil)
    @subscriber_AddResult = subscriber_AddResult
  end
end

# {http://api.createsend.com/api/}Subscriber.AddAndResubscribe
#   apiKey - SOAP::SOAPString
#   listID - SOAP::SOAPString
#   email - SOAP::SOAPString
#   name - SOAP::SOAPString
class SubscriberAddAndResubscribe
  attr_accessor :apiKey
  attr_accessor :listID
  attr_accessor :email
  attr_accessor :name

  def initialize(apiKey = nil, listID = nil, email = nil, name = nil)
    @apiKey = apiKey
    @listID = listID
    @email = email
    @name = name
  end
end

# {http://api.createsend.com/api/}Subscriber.AddAndResubscribeResponse
#   subscriber_AddAndResubscribeResult - Result
class SubscriberAddAndResubscribeResponse
  attr_accessor :subscriber_AddAndResubscribeResult

  def initialize(subscriber_AddAndResubscribeResult = nil)
    @subscriber_AddAndResubscribeResult = subscriber_AddAndResubscribeResult
  end
end

# {http://api.createsend.com/api/}Subscriber.Unsubscribe
#   apiKey - SOAP::SOAPString
#   listID - SOAP::SOAPString
#   email - SOAP::SOAPString
class SubscriberUnsubscribe_
  attr_accessor :apiKey
  attr_accessor :listID
  attr_accessor :email

  def initialize(apiKey = nil, listID = nil, email = nil)
    @apiKey = apiKey
    @listID = listID
    @email = email
  end
end

# {http://api.createsend.com/api/}Subscriber.UnsubscribeResponse
#   subscriber_UnsubscribeResult - Result
class SubscriberUnsubscribeResponse
  attr_accessor :subscriber_UnsubscribeResult

  def initialize(subscriber_UnsubscribeResult = nil)
    @subscriber_UnsubscribeResult = subscriber_UnsubscribeResult
  end
end

# {http://api.createsend.com/api/}Subscribers.GetActive
#   apiKey - SOAP::SOAPString
#   listID - SOAP::SOAPString
#   date - SOAP::SOAPString
class SubscribersGetActive
  attr_accessor :apiKey
  attr_accessor :listID
  attr_accessor :date

  def initialize(apiKey = nil, listID = nil, date = nil)
    @apiKey = apiKey
    @listID = listID
    @date = date
  end
end

# {http://api.createsend.com/api/}Subscribers.GetActiveResponse
#   subscribers_GetActiveResult - (any)
class SubscribersGetActiveResponse
  attr_accessor :subscribers_GetActiveResult

  def initialize(subscribers_GetActiveResult = nil)
    @subscribers_GetActiveResult = subscribers_GetActiveResult
  end
end

# {http://api.createsend.com/api/}Subscribers.GetUnsubscribed
#   apiKey - SOAP::SOAPString
#   listID - SOAP::SOAPString
#   date - SOAP::SOAPString
class SubscribersGetUnsubscribed
  attr_accessor :apiKey
  attr_accessor :listID
  attr_accessor :date

  def initialize(apiKey = nil, listID = nil, date = nil)
    @apiKey = apiKey
    @listID = listID
    @date = date
  end
end

# {http://api.createsend.com/api/}Subscribers.GetUnsubscribedResponse
#   subscribers_GetUnsubscribedResult - (any)
class SubscribersGetUnsubscribedResponse
  attr_accessor :subscribers_GetUnsubscribedResult

  def initialize(subscribers_GetUnsubscribedResult = nil)
    @subscribers_GetUnsubscribedResult = subscribers_GetUnsubscribedResult
  end
end

# {http://api.createsend.com/api/}Subscribers.GetBounced
#   apiKey - SOAP::SOAPString
#   listID - SOAP::SOAPString
#   date - SOAP::SOAPString
class SubscribersGetBounced
  attr_accessor :apiKey
  attr_accessor :listID
  attr_accessor :date

  def initialize(apiKey = nil, listID = nil, date = nil)
    @apiKey = apiKey
    @listID = listID
    @date = date
  end
end

# {http://api.createsend.com/api/}Subscribers.GetBouncedResponse
#   subscribers_GetBouncedResult - (any)
class SubscribersGetBouncedResponse
  attr_accessor :subscribers_GetBouncedResult

  def initialize(subscribers_GetBouncedResult = nil)
    @subscribers_GetBouncedResult = subscribers_GetBouncedResult
  end
end

# {http://api.createsend.com/api/}Subscribers.GetSingleSubscriber
#   apiKey - SOAP::SOAPString
#   listID - SOAP::SOAPString
#   emailAddress - SOAP::SOAPString
class SubscribersGetSingleSubscriber
  attr_accessor :apiKey
  attr_accessor :listID
  attr_accessor :emailAddress

  def initialize(apiKey = nil, listID = nil, emailAddress = nil)
    @apiKey = apiKey
    @listID = listID
    @emailAddress = emailAddress
  end
end

# {http://api.createsend.com/api/}Subscribers.GetSingleSubscriberResponse
#   subscribers_GetSingleSubscriberResult - (any)
class SubscribersGetSingleSubscriberResponse
  attr_accessor :subscribers_GetSingleSubscriberResult

  def initialize(subscribers_GetSingleSubscriberResult = nil)
    @subscribers_GetSingleSubscriberResult = subscribers_GetSingleSubscriberResult
  end
end

# {http://api.createsend.com/api/}Subscribers.GetIsSubscribed
#   apiKey - SOAP::SOAPString
#   listID - SOAP::SOAPString
#   email - SOAP::SOAPString
class SubscribersGetIsSubscribed
  attr_accessor :apiKey
  attr_accessor :listID
  attr_accessor :email

  def initialize(apiKey = nil, listID = nil, email = nil)
    @apiKey = apiKey
    @listID = listID
    @email = email
  end
end

# {http://api.createsend.com/api/}Subscribers.GetIsSubscribedResponse
#   subscribers_GetIsSubscribedResult - (any)
class SubscribersGetIsSubscribedResponse
  attr_accessor :subscribers_GetIsSubscribedResult

  def initialize(subscribers_GetIsSubscribedResult = nil)
    @subscribers_GetIsSubscribedResult = subscribers_GetIsSubscribedResult
  end
end

# {http://api.createsend.com/api/}List.Create
#   apiKey - SOAP::SOAPString
#   clientID - SOAP::SOAPString
#   title - SOAP::SOAPString
#   unsubscribePage - SOAP::SOAPString
#   confirmOptIn - SOAP::SOAPBoolean
#   confirmationSuccessPage - SOAP::SOAPString
class ListCreate
  attr_accessor :apiKey
  attr_accessor :clientID
  attr_accessor :title
  attr_accessor :unsubscribePage
  attr_accessor :confirmOptIn
  attr_accessor :confirmationSuccessPage

  def initialize(apiKey = nil, clientID = nil, title = nil, unsubscribePage = nil, confirmOptIn = nil, confirmationSuccessPage = nil)
    @apiKey = apiKey
    @clientID = clientID
    @title = title
    @unsubscribePage = unsubscribePage
    @confirmOptIn = confirmOptIn
    @confirmationSuccessPage = confirmationSuccessPage
  end
end

# {http://api.createsend.com/api/}List.CreateResponse
#   list_CreateResult - (any)
class ListCreateResponse
  attr_accessor :list_CreateResult

  def initialize(list_CreateResult = nil)
    @list_CreateResult = list_CreateResult
  end
end

# {http://api.createsend.com/api/}List.Update
#   apiKey - SOAP::SOAPString
#   listID - SOAP::SOAPString
#   title - SOAP::SOAPString
#   unsubscribePage - SOAP::SOAPString
#   confirmOptIn - SOAP::SOAPBoolean
#   confirmationSuccessPage - SOAP::SOAPString
class ListUpdate
  attr_accessor :apiKey
  attr_accessor :listID
  attr_accessor :title
  attr_accessor :unsubscribePage
  attr_accessor :confirmOptIn
  attr_accessor :confirmationSuccessPage

  def initialize(apiKey = nil, listID = nil, title = nil, unsubscribePage = nil, confirmOptIn = nil, confirmationSuccessPage = nil)
    @apiKey = apiKey
    @listID = listID
    @title = title
    @unsubscribePage = unsubscribePage
    @confirmOptIn = confirmOptIn
    @confirmationSuccessPage = confirmationSuccessPage
  end
end

# {http://api.createsend.com/api/}List.UpdateResponse
#   list_UpdateResult - Result
class ListUpdateResponse
  attr_accessor :list_UpdateResult

  def initialize(list_UpdateResult = nil)
    @list_UpdateResult = list_UpdateResult
  end
end

# {http://api.createsend.com/api/}List.GetDetail
#   apiKey - SOAP::SOAPString
#   listID - SOAP::SOAPString
class ListGetDetail
  attr_accessor :apiKey
  attr_accessor :listID

  def initialize(apiKey = nil, listID = nil)
    @apiKey = apiKey
    @listID = listID
  end
end

# {http://api.createsend.com/api/}List.GetDetailResponse
#   list_GetDetailResult - (any)
class ListGetDetailResponse
  attr_accessor :list_GetDetailResult

  def initialize(list_GetDetailResult = nil)
    @list_GetDetailResult = list_GetDetailResult
  end
end

# {http://api.createsend.com/api/}List.Delete
#   apiKey - SOAP::SOAPString
#   listID - SOAP::SOAPString
class ListDelete
  attr_accessor :apiKey
  attr_accessor :listID

  def initialize(apiKey = nil, listID = nil)
    @apiKey = apiKey
    @listID = listID
  end
end

# {http://api.createsend.com/api/}List.DeleteResponse
#   list_DeleteResult - Result
class ListDeleteResponse
  attr_accessor :list_DeleteResult

  def initialize(list_DeleteResult = nil)
    @list_DeleteResult = list_DeleteResult
  end
end

# {http://api.createsend.com/api/}List.GetCustomFields
#   apiKey - SOAP::SOAPString
#   listID - SOAP::SOAPString
class ListGetCustomFields
  attr_accessor :apiKey
  attr_accessor :listID

  def initialize(apiKey = nil, listID = nil)
    @apiKey = apiKey
    @listID = listID
  end
end

# {http://api.createsend.com/api/}List.GetCustomFieldsResponse
#   list_GetCustomFieldsResult - (any)
class ListGetCustomFieldsResponse
  attr_accessor :list_GetCustomFieldsResult

  def initialize(list_GetCustomFieldsResult = nil)
    @list_GetCustomFieldsResult = list_GetCustomFieldsResult
  end
end

# {http://api.createsend.com/api/}List.DeleteCustomField
#   apiKey - SOAP::SOAPString
#   listID - SOAP::SOAPString
#   key - SOAP::SOAPString
class ListDeleteCustomField
  attr_accessor :apiKey
  attr_accessor :listID
  attr_accessor :key

  def initialize(apiKey = nil, listID = nil, key = nil)
    @apiKey = apiKey
    @listID = listID
    @key = key
  end
end

# {http://api.createsend.com/api/}List.DeleteCustomFieldResponse
#   list_DeleteCustomFieldResult - Result
class ListDeleteCustomFieldResponse
  attr_accessor :list_DeleteCustomFieldResult

  def initialize(list_DeleteCustomFieldResult = nil)
    @list_DeleteCustomFieldResult = list_DeleteCustomFieldResult
  end
end

# {http://api.createsend.com/api/}List.CreateCustomField
#   apiKey - SOAP::SOAPString
#   listID - SOAP::SOAPString
#   fieldName - SOAP::SOAPString
#   dataType - SubscriberFieldDataType
#   options - SOAP::SOAPString
class ListCreateCustomField
  attr_accessor :apiKey
  attr_accessor :listID
  attr_accessor :fieldName
  attr_accessor :dataType
  attr_accessor :options

  def initialize(apiKey = nil, listID = nil, fieldName = nil, dataType = nil, options = nil)
    @apiKey = apiKey
    @listID = listID
    @fieldName = fieldName
    @dataType = dataType
    @options = options
  end
end

# {http://api.createsend.com/api/}List.CreateCustomFieldResponse
#   list_CreateCustomFieldResult - Result
class ListCreateCustomFieldResponse
  attr_accessor :list_CreateCustomFieldResult

  def initialize(list_CreateCustomFieldResult = nil)
    @list_CreateCustomFieldResult = list_CreateCustomFieldResult
  end
end

# {http://api.createsend.com/api/}Client.GetCampaigns
#   apiKey - SOAP::SOAPString
#   clientID - SOAP::SOAPString
class ClientGetCampaigns
  attr_accessor :apiKey
  attr_accessor :clientID

  def initialize(apiKey = nil, clientID = nil)
    @apiKey = apiKey
    @clientID = clientID
  end
end

# {http://api.createsend.com/api/}Client.GetCampaignsResponse
#   client_GetCampaignsResult - (any)
class ClientGetCampaignsResponse
  attr_accessor :client_GetCampaignsResult

  def initialize(client_GetCampaignsResult = nil)
    @client_GetCampaignsResult = client_GetCampaignsResult
  end
end

# {http://api.createsend.com/api/}Client.GetLists
#   apiKey - SOAP::SOAPString
#   clientID - SOAP::SOAPString
class ClientGetLists
  attr_accessor :apiKey
  attr_accessor :clientID

  def initialize(apiKey = nil, clientID = nil)
    @apiKey = apiKey
    @clientID = clientID
  end
end

# {http://api.createsend.com/api/}Client.GetListsResponse
#   client_GetListsResult - (any)
class ClientGetListsResponse
  attr_accessor :client_GetListsResult

  def initialize(client_GetListsResult = nil)
    @client_GetListsResult = client_GetListsResult
  end
end

# {http://api.createsend.com/api/}Client.GetSegments
#   apiKey - SOAP::SOAPString
#   clientID - SOAP::SOAPString
class ClientGetSegments
  attr_accessor :apiKey
  attr_accessor :clientID

  def initialize(apiKey = nil, clientID = nil)
    @apiKey = apiKey
    @clientID = clientID
  end
end

# {http://api.createsend.com/api/}Client.GetSegmentsResponse
#   client_GetSegmentsResult - (any)
class ClientGetSegmentsResponse
  attr_accessor :client_GetSegmentsResult

  def initialize(client_GetSegmentsResult = nil)
    @client_GetSegmentsResult = client_GetSegmentsResult
  end
end

# {http://api.createsend.com/api/}Client.GetSuppressionList
#   apiKey - SOAP::SOAPString
#   clientID - SOAP::SOAPString
class ClientGetSuppressionList
  attr_accessor :apiKey
  attr_accessor :clientID

  def initialize(apiKey = nil, clientID = nil)
    @apiKey = apiKey
    @clientID = clientID
  end
end

# {http://api.createsend.com/api/}Client.GetSuppressionListResponse
#   client_GetSuppressionListResult - (any)
class ClientGetSuppressionListResponse
  attr_accessor :client_GetSuppressionListResult

  def initialize(client_GetSuppressionListResult = nil)
    @client_GetSuppressionListResult = client_GetSuppressionListResult
  end
end

# {http://api.createsend.com/api/}Client.Create
#   apiKey - SOAP::SOAPString
#   companyName - SOAP::SOAPString
#   contactName - SOAP::SOAPString
#   emailAddress - SOAP::SOAPString
#   country - SOAP::SOAPString
#   timezone - SOAP::SOAPString
class ClientCreate
  attr_accessor :apiKey
  attr_accessor :companyName
  attr_accessor :contactName
  attr_accessor :emailAddress
  attr_accessor :country
  attr_accessor :timezone

  def initialize(apiKey = nil, companyName = nil, contactName = nil, emailAddress = nil, country = nil, timezone = nil)
    @apiKey = apiKey
    @companyName = companyName
    @contactName = contactName
    @emailAddress = emailAddress
    @country = country
    @timezone = timezone
  end
end

# {http://api.createsend.com/api/}Client.CreateResponse
#   client_CreateResult - (any)
class ClientCreateResponse
  attr_accessor :client_CreateResult

  def initialize(client_CreateResult = nil)
    @client_CreateResult = client_CreateResult
  end
end

# {http://api.createsend.com/api/}Client.UpdateBasics
#   apiKey - SOAP::SOAPString
#   clientID - SOAP::SOAPString
#   companyName - SOAP::SOAPString
#   contactName - SOAP::SOAPString
#   emailAddress - SOAP::SOAPString
#   country - SOAP::SOAPString
#   timezone - SOAP::SOAPString
class ClientUpdateBasics
  attr_accessor :apiKey
  attr_accessor :clientID
  attr_accessor :companyName
  attr_accessor :contactName
  attr_accessor :emailAddress
  attr_accessor :country
  attr_accessor :timezone

  def initialize(apiKey = nil, clientID = nil, companyName = nil, contactName = nil, emailAddress = nil, country = nil, timezone = nil)
    @apiKey = apiKey
    @clientID = clientID
    @companyName = companyName
    @contactName = contactName
    @emailAddress = emailAddress
    @country = country
    @timezone = timezone
  end
end

# {http://api.createsend.com/api/}Client.UpdateBasicsResponse
#   client_UpdateBasicsResult - (any)
class ClientUpdateBasicsResponse
  attr_accessor :client_UpdateBasicsResult

  def initialize(client_UpdateBasicsResult = nil)
    @client_UpdateBasicsResult = client_UpdateBasicsResult
  end
end

# {http://api.createsend.com/api/}Client.UpdateAccessAndBilling
#   apiKey - SOAP::SOAPString
#   clientID - SOAP::SOAPString
#   accessLevel - SOAP::SOAPInt
#   username - SOAP::SOAPString
#   password - SOAP::SOAPString
#   billingType - SOAP::SOAPString
#   currency - SOAP::SOAPString
#   deliveryFee - SOAP::SOAPString
#   costPerRecipient - SOAP::SOAPString
#   designAndSpamTestFee - SOAP::SOAPString
class ClientUpdateAccessAndBilling
  attr_accessor :apiKey
  attr_accessor :clientID
  attr_accessor :accessLevel
  attr_accessor :username
  attr_accessor :password
  attr_accessor :billingType
  attr_accessor :currency
  attr_accessor :deliveryFee
  attr_accessor :costPerRecipient
  attr_accessor :designAndSpamTestFee

  def initialize(apiKey = nil, clientID = nil, accessLevel = nil, username = nil, password = nil, billingType = nil, currency = nil, deliveryFee = nil, costPerRecipient = nil, designAndSpamTestFee = nil)
    @apiKey = apiKey
    @clientID = clientID
    @accessLevel = accessLevel
    @username = username
    @password = password
    @billingType = billingType
    @currency = currency
    @deliveryFee = deliveryFee
    @costPerRecipient = costPerRecipient
    @designAndSpamTestFee = designAndSpamTestFee
  end
end

# {http://api.createsend.com/api/}Client.UpdateAccessAndBillingResponse
#   client_UpdateAccessAndBillingResult - Result
class ClientUpdateAccessAndBillingResponse
  attr_accessor :client_UpdateAccessAndBillingResult

  def initialize(client_UpdateAccessAndBillingResult = nil)
    @client_UpdateAccessAndBillingResult = client_UpdateAccessAndBillingResult
  end
end

# {http://api.createsend.com/api/}Client.GetDetail
#   apiKey - SOAP::SOAPString
#   clientID - SOAP::SOAPString
class ClientGetDetail
  attr_accessor :apiKey
  attr_accessor :clientID

  def initialize(apiKey = nil, clientID = nil)
    @apiKey = apiKey
    @clientID = clientID
  end
end

# {http://api.createsend.com/api/}Client.GetDetailResponse
#   client_GetDetailResult - (any)
class ClientGetDetailResponse
  attr_accessor :client_GetDetailResult

  def initialize(client_GetDetailResult = nil)
    @client_GetDetailResult = client_GetDetailResult
  end
end

# {http://api.createsend.com/api/}Client.Delete
#   apiKey - SOAP::SOAPString
#   clientID - SOAP::SOAPString
class ClientDelete
  attr_accessor :apiKey
  attr_accessor :clientID

  def initialize(apiKey = nil, clientID = nil)
    @apiKey = apiKey
    @clientID = clientID
  end
end

# {http://api.createsend.com/api/}Client.DeleteResponse
#   client_DeleteResult - Result
class ClientDeleteResponse
  attr_accessor :client_DeleteResult

  def initialize(client_DeleteResult = nil)
    @client_DeleteResult = client_DeleteResult
  end
end

# {http://api.createsend.com/api/}Campaign.GetSubscriberClicks
#   apiKey - SOAP::SOAPString
#   campaignID - SOAP::SOAPString
class CampaignGetSubscriberClicks
  attr_accessor :apiKey
  attr_accessor :campaignID

  def initialize(apiKey = nil, campaignID = nil)
    @apiKey = apiKey
    @campaignID = campaignID
  end
end

# {http://api.createsend.com/api/}Campaign.GetSubscriberClicksResponse
#   campaign_GetSubscriberClicksResult - (any)
class CampaignGetSubscriberClicksResponse
  attr_accessor :campaign_GetSubscriberClicksResult

  def initialize(campaign_GetSubscriberClicksResult = nil)
    @campaign_GetSubscriberClicksResult = campaign_GetSubscriberClicksResult
  end
end

# {http://api.createsend.com/api/}Campaign.GetOpens
#   apiKey - SOAP::SOAPString
#   campaignID - SOAP::SOAPString
class CampaignGetOpens
  attr_accessor :apiKey
  attr_accessor :campaignID

  def initialize(apiKey = nil, campaignID = nil)
    @apiKey = apiKey
    @campaignID = campaignID
  end
end

# {http://api.createsend.com/api/}Campaign.GetOpensResponse
#   campaign_GetOpensResult - (any)
class CampaignGetOpensResponse
  attr_accessor :campaign_GetOpensResult

  def initialize(campaign_GetOpensResult = nil)
    @campaign_GetOpensResult = campaign_GetOpensResult
  end
end

# {http://api.createsend.com/api/}Campaign.GetBounces
#   apiKey - SOAP::SOAPString
#   campaignID - SOAP::SOAPString
class CampaignGetBounces
  attr_accessor :apiKey
  attr_accessor :campaignID

  def initialize(apiKey = nil, campaignID = nil)
    @apiKey = apiKey
    @campaignID = campaignID
  end
end

# {http://api.createsend.com/api/}Campaign.GetBouncesResponse
#   campaign_GetBouncesResult - (any)
class CampaignGetBouncesResponse
  attr_accessor :campaign_GetBouncesResult

  def initialize(campaign_GetBouncesResult = nil)
    @campaign_GetBouncesResult = campaign_GetBouncesResult
  end
end

# {http://api.createsend.com/api/}Campaign.GetUnsubscribes
#   apiKey - SOAP::SOAPString
#   campaignID - SOAP::SOAPString
class CampaignGetUnsubscribes
  attr_accessor :apiKey
  attr_accessor :campaignID

  def initialize(apiKey = nil, campaignID = nil)
    @apiKey = apiKey
    @campaignID = campaignID
  end
end

# {http://api.createsend.com/api/}Campaign.GetUnsubscribesResponse
#   campaign_GetUnsubscribesResult - (any)
class CampaignGetUnsubscribesResponse
  attr_accessor :campaign_GetUnsubscribesResult

  def initialize(campaign_GetUnsubscribesResult = nil)
    @campaign_GetUnsubscribesResult = campaign_GetUnsubscribesResult
  end
end

# {http://api.createsend.com/api/}Campaign.GetSummary
#   apiKey - SOAP::SOAPString
#   campaignID - SOAP::SOAPString
class CampaignGetSummary
  attr_accessor :apiKey
  attr_accessor :campaignID

  def initialize(apiKey = nil, campaignID = nil)
    @apiKey = apiKey
    @campaignID = campaignID
  end
end

# {http://api.createsend.com/api/}Campaign.GetSummaryResponse
#   campaign_GetSummaryResult - (any)
class CampaignGetSummaryResponse
  attr_accessor :campaign_GetSummaryResult

  def initialize(campaign_GetSummaryResult = nil)
    @campaign_GetSummaryResult = campaign_GetSummaryResult
  end
end

# {http://api.createsend.com/api/}Campaign.GetLists
#   apiKey - SOAP::SOAPString
#   campaignID - SOAP::SOAPString
class CampaignGetLists
  attr_accessor :apiKey
  attr_accessor :campaignID

  def initialize(apiKey = nil, campaignID = nil)
    @apiKey = apiKey
    @campaignID = campaignID
  end
end

# {http://api.createsend.com/api/}Campaign.GetListsResponse
#   campaign_GetListsResult - (any)
class CampaignGetListsResponse
  attr_accessor :campaign_GetListsResult

  def initialize(campaign_GetListsResult = nil)
    @campaign_GetListsResult = campaign_GetListsResult
  end
end

# {http://api.createsend.com/api/}User.GetClients
#   apiKey - SOAP::SOAPString
class UserGetClients
  attr_accessor :apiKey

  def initialize(apiKey = nil)
    @apiKey = apiKey
  end
end

# {http://api.createsend.com/api/}User.GetClientsResponse
#   user_GetClientsResult - (any)
class UserGetClientsResponse
  attr_accessor :user_GetClientsResult

  def initialize(user_GetClientsResult = nil)
    @user_GetClientsResult = user_GetClientsResult
  end
end

# {http://api.createsend.com/api/}User.GetSystemDate
#   apiKey - SOAP::SOAPString
class UserGetSystemDate
  attr_accessor :apiKey

  def initialize(apiKey = nil)
    @apiKey = apiKey
  end
end

# {http://api.createsend.com/api/}User.GetSystemDateResponse
#   user_GetSystemDateResult - (any)
class UserGetSystemDateResponse
  attr_accessor :user_GetSystemDateResult

  def initialize(user_GetSystemDateResult = nil)
    @user_GetSystemDateResult = user_GetSystemDateResult
  end
end

# {http://api.createsend.com/api/}User.GetTimezones
#   apiKey - SOAP::SOAPString
class UserGetTimezones
  attr_accessor :apiKey

  def initialize(apiKey = nil)
    @apiKey = apiKey
  end
end

# {http://api.createsend.com/api/}User.GetTimezonesResponse
#   user_GetTimezonesResult - (any)
class UserGetTimezonesResponse
  attr_accessor :user_GetTimezonesResult

  def initialize(user_GetTimezonesResult = nil)
    @user_GetTimezonesResult = user_GetTimezonesResult
  end
end

# {http://api.createsend.com/api/}User.GetCountries
#   apiKey - SOAP::SOAPString
class UserGetCountries
  attr_accessor :apiKey

  def initialize(apiKey = nil)
    @apiKey = apiKey
  end
end

# {http://api.createsend.com/api/}User.GetCountriesResponse
#   user_GetCountriesResult - (any)
class UserGetCountriesResponse
  attr_accessor :user_GetCountriesResult

  def initialize(user_GetCountriesResult = nil)
    @user_GetCountriesResult = user_GetCountriesResult
  end
end

# {http://api.createsend.com/api/}Campaign.Create
#   apiKey - SOAP::SOAPString
#   clientID - SOAP::SOAPString
#   campaignName - SOAP::SOAPString
#   campaignSubject - SOAP::SOAPString
#   fromName - SOAP::SOAPString
#   fromEmail - SOAP::SOAPString
#   replyTo - SOAP::SOAPString
#   htmlUrl - SOAP::SOAPString
#   textUrl - SOAP::SOAPString
#   subscriberListIDs - ArrayOfString
#   listSegments - ArrayOfList
class CampaignCreate
  attr_accessor :apiKey
  attr_accessor :clientID
  attr_accessor :campaignName
  attr_accessor :campaignSubject
  attr_accessor :fromName
  attr_accessor :fromEmail
  attr_accessor :replyTo
  attr_accessor :htmlUrl
  attr_accessor :textUrl
  attr_accessor :subscriberListIDs
  attr_accessor :listSegments

  def initialize(apiKey = nil, clientID = nil, campaignName = nil, campaignSubject = nil, fromName = nil, fromEmail = nil, replyTo = nil, htmlUrl = nil, textUrl = nil, subscriberListIDs = nil, listSegments = nil)
    @apiKey = apiKey
    @clientID = clientID
    @campaignName = campaignName
    @campaignSubject = campaignSubject
    @fromName = fromName
    @fromEmail = fromEmail
    @replyTo = replyTo
    @htmlUrl = htmlUrl
    @textUrl = textUrl
    @subscriberListIDs = subscriberListIDs
    @listSegments = listSegments
  end
end

# {http://api.createsend.com/api/}Campaign.CreateResponse
#   campaign_CreateResult - (any)
class CampaignCreateResponse
  attr_accessor :campaign_CreateResult

  def initialize(campaign_CreateResult = nil)
    @campaign_CreateResult = campaign_CreateResult
  end
end

# {http://api.createsend.com/api/}Campaign.Send
#   apiKey - SOAP::SOAPString
#   campaignID - SOAP::SOAPString
#   confirmationEmail - SOAP::SOAPString
#   sendDate - SOAP::SOAPString
class CampaignSend
  attr_accessor :apiKey
  attr_accessor :campaignID
  attr_accessor :confirmationEmail
  attr_accessor :sendDate

  def initialize(apiKey = nil, campaignID = nil, confirmationEmail = nil, sendDate = nil)
    @apiKey = apiKey
    @campaignID = campaignID
    @confirmationEmail = confirmationEmail
    @sendDate = sendDate
  end
end

# {http://api.createsend.com/api/}Campaign.SendResponse
#   campaign_SendResult - Result
class CampaignSendResponse
  attr_accessor :campaign_SendResult

  def initialize(campaign_SendResult = nil)
    @campaign_SendResult = campaign_SendResult
  end
end

# {http://api.createsend.com/api/}anyType
class AnyType < ::String
  def initialize(*arg)
    super
  end
end
