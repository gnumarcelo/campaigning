require File.expand_path(File.dirname(__FILE__)) + '/default.rb'
require 'soap/mapping'

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsApi = "http://api.createsend.com/api/"

  EncodedRegistry.register(
    :class => ArrayOfSubscriberCustomField,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfSubscriberCustomField"),
    :schema_element => [
      ["subscriberCustomField", ["SubscriberCustomField[]", XSD::QName.new(NsApi, "SubscriberCustomField")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => SubscriberCustomField,
    :schema_type => XSD::QName.new(NsApi, "SubscriberCustomField"),
    :schema_element => [
      ["key", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Key")], [0, 1]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Value")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Result,
    :schema_type => XSD::QName.new(NsApi, "Result"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsApi, "Code")]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Message")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Client,
    :schema_type => XSD::QName.new(NsApi, "Client"),
    :schema_element => [
      ["clientID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ClientID")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Name")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CampaignSummary,
    :schema_type => XSD::QName.new(NsApi, "CampaignSummary"),
    :schema_element => [
      ["recipients", ["SOAP::SOAPInt", XSD::QName.new(NsApi, "Recipients")]],
      ["totalOpened", ["SOAP::SOAPInt", XSD::QName.new(NsApi, "TotalOpened")]],
      ["clicks", ["SOAP::SOAPInt", XSD::QName.new(NsApi, "Clicks")]],
      ["unsubscribed", ["SOAP::SOAPInt", XSD::QName.new(NsApi, "Unsubscribed")]],
      ["bounced", ["SOAP::SOAPInt", XSD::QName.new(NsApi, "Bounced")]]
    ]
  )

  EncodedRegistry.register(
    :class => SubscriberUnsubscribe,
    :schema_type => XSD::QName.new(NsApi, "SubscriberUnsubscribe"),
    :schema_element => [
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(NsApi, "EmailAddress")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SubscriberBounce,
    :schema_type => XSD::QName.new(NsApi, "SubscriberBounce"),
    :schema_element => [
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(NsApi, "EmailAddress")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["bounceType", ["SOAP::SOAPString", XSD::QName.new(NsApi, "BounceType")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SubscriberOpen,
    :schema_type => XSD::QName.new(NsApi, "SubscriberOpen"),
    :schema_element => [
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(NsApi, "EmailAddress")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["numberOfOpens", ["SOAP::SOAPInt", XSD::QName.new(NsApi, "NumberOfOpens")]]
    ]
  )

  EncodedRegistry.register(
    :class => SubscriberClick,
    :schema_type => XSD::QName.new(NsApi, "SubscriberClick"),
    :schema_element => [
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(NsApi, "EmailAddress")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["clickedLinks", ["ArrayOfSubscriberClickedLink", XSD::QName.new(NsApi, "ClickedLinks")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfSubscriberClickedLink,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfSubscriberClickedLink"),
    :schema_element => [
      ["subscriberClickedLink", ["SubscriberClickedLink[]", XSD::QName.new(NsApi, "SubscriberClickedLink")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => SubscriberClickedLink,
    :schema_type => XSD::QName.new(NsApi, "SubscriberClickedLink"),
    :schema_element => [
      ["link", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Link")], [0, 1]],
      ["clicks", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Clicks")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ClientDetail,
    :schema_type => XSD::QName.new(NsApi, "ClientDetail"),
    :schema_element => [
      ["basicDetails", ["ClientBasicDetails", XSD::QName.new(NsApi, "BasicDetails")], [0, 1]],
      ["accessAndBilling", ["ClientAccessAndBilling", XSD::QName.new(NsApi, "AccessAndBilling")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ClientBasicDetails,
    :schema_type => XSD::QName.new(NsApi, "ClientBasicDetails"),
    :schema_element => [
      ["clientID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ClientID")], [0, 1]],
      ["companyName", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CompanyName")], [0, 1]],
      ["contactName", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ContactName")], [0, 1]],
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(NsApi, "EmailAddress")], [0, 1]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Country")], [0, 1]],
      ["timezone", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Timezone")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ClientAccessAndBilling,
    :schema_type => XSD::QName.new(NsApi, "ClientAccessAndBilling"),
    :schema_element => [
      ["username", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Username")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Password")], [0, 1]],
      ["billingType", ["SOAP::SOAPString", XSD::QName.new(NsApi, "BillingType")], [0, 1]],
      ["currency", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Currency")], [0, 1]],
      ["deliveryFee", ["SOAP::SOAPString", XSD::QName.new(NsApi, "DeliveryFee")], [0, 1]],
      ["costPerRecipient", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CostPerRecipient")], [0, 1]],
      ["designAndSpamTestFee", ["SOAP::SOAPString", XSD::QName.new(NsApi, "DesignAndSpamTestFee")], [0, 1]],
      ["accessLevel", ["SOAP::SOAPInt", XSD::QName.new(NsApi, "AccessLevel")]]
    ]
  )

  EncodedRegistry.register(
    :class => List,
    :schema_type => XSD::QName.new(NsApi, "List"),
    :schema_element => [
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Name")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Campaign,
    :schema_type => XSD::QName.new(NsApi, "Campaign"),
    :schema_element => [
      ["campaignID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CampaignID")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Subject")], [0, 1]],
      ["sentDate", ["SOAP::SOAPString", XSD::QName.new(NsApi, "SentDate")], [0, 1]],
      ["totalRecipients", ["SOAP::SOAPInt", XSD::QName.new(NsApi, "TotalRecipients")]]
    ]
  )

  EncodedRegistry.register(
    :class => ListCustomField,
    :schema_type => XSD::QName.new(NsApi, "ListCustomField"),
    :schema_element => [
      ["fieldName", ["SOAP::SOAPString", XSD::QName.new(NsApi, "FieldName")], [0, 1]],
      ["key", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Key")], [0, 1]],
      ["dataType", ["SubscriberFieldDataType", XSD::QName.new(NsApi, "DataType")]],
      ["fieldOptions", ["ArrayOfString", XSD::QName.new(NsApi, "FieldOptions")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfString,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfString"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ListDetail,
    :schema_type => XSD::QName.new(NsApi, "ListDetail"),
    :schema_element => [
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Title")], [0, 1]],
      ["unsubscribePage", ["SOAP::SOAPString", XSD::QName.new(NsApi, "UnsubscribePage")], [0, 1]],
      ["confirmOptIn", ["SOAP::SOAPBoolean", XSD::QName.new(NsApi, "ConfirmOptIn")]],
      ["confirmationSuccessPage", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ConfirmationSuccessPage")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Subscriber,
    :schema_type => XSD::QName.new(NsApi, "Subscriber"),
    :schema_element => [
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(NsApi, "EmailAddress")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Name")], [0, 1]],
      ["date", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Date")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(NsApi, "State")], [0, 1]],
      ["customFields", ["ArrayOfSubscriberCustomField", XSD::QName.new(NsApi, "CustomFields")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfSubscriber,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfSubscriber"),
    :schema_element => [
      ["subscriber", ["Subscriber[]", XSD::QName.new(NsApi, "Subscriber")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfListCustomField,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfListCustomField"),
    :schema_element => [
      ["listCustomField", ["ListCustomField[]", XSD::QName.new(NsApi, "ListCustomField")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfCampaign,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfCampaign"),
    :schema_element => [
      ["campaign", ["Campaign[]", XSD::QName.new(NsApi, "Campaign")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfList,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfList"),
    :schema_element => [
      ["list", ["List[]", XSD::QName.new(NsApi, "List")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfSubscriberClick,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfSubscriberClick"),
    :schema_element => [
      ["subscriberClick", ["SubscriberClick[]", XSD::QName.new(NsApi, "SubscriberClick")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfSubscriberOpen,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfSubscriberOpen"),
    :schema_element => [
      ["subscriberOpen", ["SubscriberOpen[]", XSD::QName.new(NsApi, "SubscriberOpen")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfSubscriberBounce,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfSubscriberBounce"),
    :schema_element => [
      ["subscriberBounce", ["SubscriberBounce[]", XSD::QName.new(NsApi, "SubscriberBounce")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfSubscriberUnsubscribe,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfSubscriberUnsubscribe"),
    :schema_element => [
      ["subscriberUnsubscribe", ["SubscriberUnsubscribe[]", XSD::QName.new(NsApi, "SubscriberUnsubscribe")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfClient,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfClient"),
    :schema_element => [
      ["client", ["Client[]", XSD::QName.new(NsApi, "Client")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => SubscriberFieldDataType,
    :schema_type => XSD::QName.new(NsApi, "SubscriberFieldDataType")
  )

  LiteralRegistry.register(
    :class => ArrayOfSubscriberCustomField,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfSubscriberCustomField"),
    :schema_element => [
      ["subscriberCustomField", ["SubscriberCustomField[]", XSD::QName.new(NsApi, "SubscriberCustomField")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SubscriberCustomField,
    :schema_type => XSD::QName.new(NsApi, "SubscriberCustomField"),
    :schema_element => [
      ["key", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Key")], [0, 1]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Value")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Result,
    :schema_type => XSD::QName.new(NsApi, "Result"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsApi, "Code")]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Message")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Client,
    :schema_type => XSD::QName.new(NsApi, "Client"),
    :schema_element => [
      ["clientID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ClientID")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Name")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CampaignSummary,
    :schema_type => XSD::QName.new(NsApi, "CampaignSummary"),
    :schema_element => [
      ["recipients", ["SOAP::SOAPInt", XSD::QName.new(NsApi, "Recipients")]],
      ["totalOpened", ["SOAP::SOAPInt", XSD::QName.new(NsApi, "TotalOpened")]],
      ["clicks", ["SOAP::SOAPInt", XSD::QName.new(NsApi, "Clicks")]],
      ["unsubscribed", ["SOAP::SOAPInt", XSD::QName.new(NsApi, "Unsubscribed")]],
      ["bounced", ["SOAP::SOAPInt", XSD::QName.new(NsApi, "Bounced")]]
    ]
  )

  LiteralRegistry.register(
    :class => SubscriberUnsubscribe,
    :schema_type => XSD::QName.new(NsApi, "SubscriberUnsubscribe"),
    :schema_element => [
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(NsApi, "EmailAddress")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SubscriberBounce,
    :schema_type => XSD::QName.new(NsApi, "SubscriberBounce"),
    :schema_element => [
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(NsApi, "EmailAddress")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["bounceType", ["SOAP::SOAPString", XSD::QName.new(NsApi, "BounceType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SubscriberOpen,
    :schema_type => XSD::QName.new(NsApi, "SubscriberOpen"),
    :schema_element => [
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(NsApi, "EmailAddress")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["numberOfOpens", ["SOAP::SOAPInt", XSD::QName.new(NsApi, "NumberOfOpens")]]
    ]
  )

  LiteralRegistry.register(
    :class => SubscriberClick,
    :schema_type => XSD::QName.new(NsApi, "SubscriberClick"),
    :schema_element => [
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(NsApi, "EmailAddress")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["clickedLinks", ["ArrayOfSubscriberClickedLink", XSD::QName.new(NsApi, "ClickedLinks")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfSubscriberClickedLink,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfSubscriberClickedLink"),
    :schema_element => [
      ["subscriberClickedLink", ["SubscriberClickedLink[]", XSD::QName.new(NsApi, "SubscriberClickedLink")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SubscriberClickedLink,
    :schema_type => XSD::QName.new(NsApi, "SubscriberClickedLink"),
    :schema_element => [
      ["link", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Link")], [0, 1]],
      ["clicks", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Clicks")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ClientDetail,
    :schema_type => XSD::QName.new(NsApi, "ClientDetail"),
    :schema_element => [
      ["basicDetails", ["ClientBasicDetails", XSD::QName.new(NsApi, "BasicDetails")], [0, 1]],
      ["accessAndBilling", ["ClientAccessAndBilling", XSD::QName.new(NsApi, "AccessAndBilling")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ClientBasicDetails,
    :schema_type => XSD::QName.new(NsApi, "ClientBasicDetails"),
    :schema_element => [
      ["clientID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ClientID")], [0, 1]],
      ["companyName", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CompanyName")], [0, 1]],
      ["contactName", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ContactName")], [0, 1]],
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(NsApi, "EmailAddress")], [0, 1]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Country")], [0, 1]],
      ["timezone", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Timezone")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ClientAccessAndBilling,
    :schema_type => XSD::QName.new(NsApi, "ClientAccessAndBilling"),
    :schema_element => [
      ["username", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Username")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Password")], [0, 1]],
      ["billingType", ["SOAP::SOAPString", XSD::QName.new(NsApi, "BillingType")], [0, 1]],
      ["currency", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Currency")], [0, 1]],
      ["deliveryFee", ["SOAP::SOAPString", XSD::QName.new(NsApi, "DeliveryFee")], [0, 1]],
      ["costPerRecipient", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CostPerRecipient")], [0, 1]],
      ["designAndSpamTestFee", ["SOAP::SOAPString", XSD::QName.new(NsApi, "DesignAndSpamTestFee")], [0, 1]],
      ["accessLevel", ["SOAP::SOAPInt", XSD::QName.new(NsApi, "AccessLevel")]]
    ]
  )

  LiteralRegistry.register(
    :class => List,
    :schema_type => XSD::QName.new(NsApi, "List"),
    :schema_element => [
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Name")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaign,
    :schema_type => XSD::QName.new(NsApi, "Campaign"),
    :schema_element => [
      ["campaignID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CampaignID")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Subject")], [0, 1]],
      ["sentDate", ["SOAP::SOAPString", XSD::QName.new(NsApi, "SentDate")], [0, 1]],
      ["totalRecipients", ["SOAP::SOAPInt", XSD::QName.new(NsApi, "TotalRecipients")]]
    ]
  )

  LiteralRegistry.register(
    :class => ListCustomField,
    :schema_type => XSD::QName.new(NsApi, "ListCustomField"),
    :schema_element => [
      ["fieldName", ["SOAP::SOAPString", XSD::QName.new(NsApi, "FieldName")], [0, 1]],
      ["key", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Key")], [0, 1]],
      ["dataType", ["SubscriberFieldDataType", XSD::QName.new(NsApi, "DataType")]],
      ["fieldOptions", ["ArrayOfString", XSD::QName.new(NsApi, "FieldOptions")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfString,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfString"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ListDetail,
    :schema_type => XSD::QName.new(NsApi, "ListDetail"),
    :schema_element => [
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Title")], [0, 1]],
      ["unsubscribePage", ["SOAP::SOAPString", XSD::QName.new(NsApi, "UnsubscribePage")], [0, 1]],
      ["confirmOptIn", ["SOAP::SOAPBoolean", XSD::QName.new(NsApi, "ConfirmOptIn")]],
      ["confirmationSuccessPage", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ConfirmationSuccessPage")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Subscriber,
    :schema_type => XSD::QName.new(NsApi, "Subscriber"),
    :schema_element => [
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(NsApi, "EmailAddress")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Name")], [0, 1]],
      ["date", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Date")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(NsApi, "State")], [0, 1]],
      ["customFields", ["ArrayOfSubscriberCustomField", XSD::QName.new(NsApi, "CustomFields")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfSubscriber,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfSubscriber"),
    :schema_element => [
      ["subscriber", ["Subscriber[]", XSD::QName.new(NsApi, "Subscriber")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfListCustomField,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfListCustomField"),
    :schema_element => [
      ["listCustomField", ["ListCustomField[]", XSD::QName.new(NsApi, "ListCustomField")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfCampaign,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfCampaign"),
    :schema_element => [
      ["campaign", ["Campaign[]", XSD::QName.new(NsApi, "Campaign")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfList,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfList"),
    :schema_element => [
      ["list", ["List[]", XSD::QName.new(NsApi, "List")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfSubscriberClick,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfSubscriberClick"),
    :schema_element => [
      ["subscriberClick", ["SubscriberClick[]", XSD::QName.new(NsApi, "SubscriberClick")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfSubscriberOpen,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfSubscriberOpen"),
    :schema_element => [
      ["subscriberOpen", ["SubscriberOpen[]", XSD::QName.new(NsApi, "SubscriberOpen")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfSubscriberBounce,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfSubscriberBounce"),
    :schema_element => [
      ["subscriberBounce", ["SubscriberBounce[]", XSD::QName.new(NsApi, "SubscriberBounce")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfSubscriberUnsubscribe,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfSubscriberUnsubscribe"),
    :schema_element => [
      ["subscriberUnsubscribe", ["SubscriberUnsubscribe[]", XSD::QName.new(NsApi, "SubscriberUnsubscribe")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfClient,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfClient"),
    :schema_element => [
      ["client", ["Client[]", XSD::QName.new(NsApi, "Client")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SubscriberFieldDataType,
    :schema_type => XSD::QName.new(NsApi, "SubscriberFieldDataType")
  )

  LiteralRegistry.register(
    :class => SubscriberAddWithCustomFields,
    :schema_name => XSD::QName.new(NsApi, "Subscriber.AddWithCustomFields"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Email")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Name")], [0, 1]],
      ["customFields", ["ArrayOfSubscriberCustomField", XSD::QName.new(NsApi, "CustomFields")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SubscriberAddWithCustomFieldsResponse,
    :schema_name => XSD::QName.new(NsApi, "Subscriber.AddWithCustomFieldsResponse"),
    :schema_element => [
      ["subscriber_AddWithCustomFieldsResult", ["Result", XSD::QName.new(NsApi, "Subscriber.AddWithCustomFieldsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SubscriberAddAndResubscribeWithCustomFields,
    :schema_name => XSD::QName.new(NsApi, "Subscriber.AddAndResubscribeWithCustomFields"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Email")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Name")], [0, 1]],
      ["customFields", ["ArrayOfSubscriberCustomField", XSD::QName.new(NsApi, "CustomFields")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SubscriberAddAndResubscribeWithCustomFieldsResponse,
    :schema_name => XSD::QName.new(NsApi, "Subscriber.AddAndResubscribeWithCustomFieldsResponse"),
    :schema_element => [
      ["subscriber_AddAndResubscribeWithCustomFieldsResult", ["Result", XSD::QName.new(NsApi, "Subscriber.AddAndResubscribeWithCustomFieldsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SubscriberAdd,
    :schema_name => XSD::QName.new(NsApi, "Subscriber.Add"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Email")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Name")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SubscriberAddResponse,
    :schema_name => XSD::QName.new(NsApi, "Subscriber.AddResponse"),
    :schema_element => [
      ["subscriber_AddResult", ["Result", XSD::QName.new(NsApi, "Subscriber.AddResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SubscriberAddAndResubscribe,
    :schema_name => XSD::QName.new(NsApi, "Subscriber.AddAndResubscribe"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Email")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Name")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SubscriberAddAndResubscribeResponse,
    :schema_name => XSD::QName.new(NsApi, "Subscriber.AddAndResubscribeResponse"),
    :schema_element => [
      ["subscriber_AddAndResubscribeResult", ["Result", XSD::QName.new(NsApi, "Subscriber.AddAndResubscribeResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SubscriberUnsubscribe_,
    :schema_name => XSD::QName.new(NsApi, "Subscriber.Unsubscribe"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Email")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SubscriberUnsubscribeResponse,
    :schema_name => XSD::QName.new(NsApi, "Subscriber.UnsubscribeResponse"),
    :schema_element => [
      ["subscriber_UnsubscribeResult", ["Result", XSD::QName.new(NsApi, "Subscriber.UnsubscribeResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SubscribersGetActive,
    :schema_name => XSD::QName.new(NsApi, "Subscribers.GetActive"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["date", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Date")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SubscribersGetActiveResponse,
    :schema_name => XSD::QName.new(NsApi, "Subscribers.GetActiveResponse"),
    :schema_element => [
      ["subscribers_GetActiveResult", [nil, XSD::QName.new(NsApi, "Subscribers.GetActiveResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SubscribersGetUnsubscribed,
    :schema_name => XSD::QName.new(NsApi, "Subscribers.GetUnsubscribed"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["date", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Date")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SubscribersGetUnsubscribedResponse,
    :schema_name => XSD::QName.new(NsApi, "Subscribers.GetUnsubscribedResponse"),
    :schema_element => [
      ["subscribers_GetUnsubscribedResult", [nil, XSD::QName.new(NsApi, "Subscribers.GetUnsubscribedResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SubscribersGetBounced,
    :schema_name => XSD::QName.new(NsApi, "Subscribers.GetBounced"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["date", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Date")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SubscribersGetBouncedResponse,
    :schema_name => XSD::QName.new(NsApi, "Subscribers.GetBouncedResponse"),
    :schema_element => [
      ["subscribers_GetBouncedResult", [nil, XSD::QName.new(NsApi, "Subscribers.GetBouncedResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SubscribersGetSingleSubscriber,
    :schema_name => XSD::QName.new(NsApi, "Subscribers.GetSingleSubscriber"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(NsApi, "EmailAddress")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SubscribersGetSingleSubscriberResponse,
    :schema_name => XSD::QName.new(NsApi, "Subscribers.GetSingleSubscriberResponse"),
    :schema_element => [
      ["subscribers_GetSingleSubscriberResult", [nil, XSD::QName.new(NsApi, "Subscribers.GetSingleSubscriberResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SubscribersGetIsSubscribed,
    :schema_name => XSD::QName.new(NsApi, "Subscribers.GetIsSubscribed"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Email")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SubscribersGetIsSubscribedResponse,
    :schema_name => XSD::QName.new(NsApi, "Subscribers.GetIsSubscribedResponse"),
    :schema_element => [
      ["subscribers_GetIsSubscribedResult", [nil, XSD::QName.new(NsApi, "Subscribers.GetIsSubscribedResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ListCreate,
    :schema_name => XSD::QName.new(NsApi, "List.Create"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["clientID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ClientID")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Title")], [0, 1]],
      ["unsubscribePage", ["SOAP::SOAPString", XSD::QName.new(NsApi, "UnsubscribePage")], [0, 1]],
      ["confirmOptIn", ["SOAP::SOAPBoolean", XSD::QName.new(NsApi, "ConfirmOptIn")]],
      ["confirmationSuccessPage", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ConfirmationSuccessPage")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ListCreateResponse,
    :schema_name => XSD::QName.new(NsApi, "List.CreateResponse"),
    :schema_element => [
      ["list_CreateResult", [nil, XSD::QName.new(NsApi, "List.CreateResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ListUpdate,
    :schema_name => XSD::QName.new(NsApi, "List.Update"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Title")], [0, 1]],
      ["unsubscribePage", ["SOAP::SOAPString", XSD::QName.new(NsApi, "UnsubscribePage")], [0, 1]],
      ["confirmOptIn", ["SOAP::SOAPBoolean", XSD::QName.new(NsApi, "ConfirmOptIn")]],
      ["confirmationSuccessPage", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ConfirmationSuccessPage")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ListUpdateResponse,
    :schema_name => XSD::QName.new(NsApi, "List.UpdateResponse"),
    :schema_element => [
      ["list_UpdateResult", ["Result", XSD::QName.new(NsApi, "List.UpdateResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ListGetDetail,
    :schema_name => XSD::QName.new(NsApi, "List.GetDetail"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ListGetDetailResponse,
    :schema_name => XSD::QName.new(NsApi, "List.GetDetailResponse"),
    :schema_element => [
      ["list_GetDetailResult", [nil, XSD::QName.new(NsApi, "List.GetDetailResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ListDelete,
    :schema_name => XSD::QName.new(NsApi, "List.Delete"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ListDeleteResponse,
    :schema_name => XSD::QName.new(NsApi, "List.DeleteResponse"),
    :schema_element => [
      ["list_DeleteResult", ["Result", XSD::QName.new(NsApi, "List.DeleteResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ListGetCustomFields,
    :schema_name => XSD::QName.new(NsApi, "List.GetCustomFields"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ListGetCustomFieldsResponse,
    :schema_name => XSD::QName.new(NsApi, "List.GetCustomFieldsResponse"),
    :schema_element => [
      ["list_GetCustomFieldsResult", [nil, XSD::QName.new(NsApi, "List.GetCustomFieldsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ListDeleteCustomField,
    :schema_name => XSD::QName.new(NsApi, "List.DeleteCustomField"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["key", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Key")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ListDeleteCustomFieldResponse,
    :schema_name => XSD::QName.new(NsApi, "List.DeleteCustomFieldResponse"),
    :schema_element => [
      ["list_DeleteCustomFieldResult", ["Result", XSD::QName.new(NsApi, "List.DeleteCustomFieldResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ListCreateCustomField,
    :schema_name => XSD::QName.new(NsApi, "List.CreateCustomField"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["fieldName", ["SOAP::SOAPString", XSD::QName.new(NsApi, "FieldName")], [0, 1]],
      ["dataType", ["SubscriberFieldDataType", XSD::QName.new(NsApi, "DataType")]],
      ["options", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Options")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ListCreateCustomFieldResponse,
    :schema_name => XSD::QName.new(NsApi, "List.CreateCustomFieldResponse"),
    :schema_element => [
      ["list_CreateCustomFieldResult", ["Result", XSD::QName.new(NsApi, "List.CreateCustomFieldResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ClientGetCampaigns,
    :schema_name => XSD::QName.new(NsApi, "Client.GetCampaigns"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["clientID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ClientID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ClientGetCampaignsResponse,
    :schema_name => XSD::QName.new(NsApi, "Client.GetCampaignsResponse"),
    :schema_element => [
      ["client_GetCampaignsResult", [nil, XSD::QName.new(NsApi, "Client.GetCampaignsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ClientGetLists,
    :schema_name => XSD::QName.new(NsApi, "Client.GetLists"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["clientID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ClientID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ClientGetListsResponse,
    :schema_name => XSD::QName.new(NsApi, "Client.GetListsResponse"),
    :schema_element => [
      ["client_GetListsResult", [nil, XSD::QName.new(NsApi, "Client.GetListsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ClientGetSegments,
    :schema_name => XSD::QName.new(NsApi, "Client.GetSegments"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["clientID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ClientID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ClientGetSegmentsResponse,
    :schema_name => XSD::QName.new(NsApi, "Client.GetSegmentsResponse"),
    :schema_element => [
      ["client_GetSegmentsResult", [nil, XSD::QName.new(NsApi, "Client.GetSegmentsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ClientGetSuppressionList,
    :schema_name => XSD::QName.new(NsApi, "Client.GetSuppressionList"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["clientID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ClientID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ClientGetSuppressionListResponse,
    :schema_name => XSD::QName.new(NsApi, "Client.GetSuppressionListResponse"),
    :schema_element => [
      ["client_GetSuppressionListResult", [nil, XSD::QName.new(NsApi, "Client.GetSuppressionListResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ClientCreate,
    :schema_name => XSD::QName.new(NsApi, "Client.Create"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["companyName", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CompanyName")], [0, 1]],
      ["contactName", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ContactName")], [0, 1]],
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(NsApi, "EmailAddress")], [0, 1]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Country")], [0, 1]],
      ["timezone", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Timezone")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ClientCreateResponse,
    :schema_name => XSD::QName.new(NsApi, "Client.CreateResponse"),
    :schema_element => [
      ["client_CreateResult", [nil, XSD::QName.new(NsApi, "Client.CreateResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ClientUpdateBasics,
    :schema_name => XSD::QName.new(NsApi, "Client.UpdateBasics"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["clientID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ClientID")], [0, 1]],
      ["companyName", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CompanyName")], [0, 1]],
      ["contactName", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ContactName")], [0, 1]],
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(NsApi, "EmailAddress")], [0, 1]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Country")], [0, 1]],
      ["timezone", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Timezone")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ClientUpdateBasicsResponse,
    :schema_name => XSD::QName.new(NsApi, "Client.UpdateBasicsResponse"),
    :schema_element => [
      ["client_UpdateBasicsResult", [nil, XSD::QName.new(NsApi, "Client.UpdateBasicsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ClientUpdateAccessAndBilling,
    :schema_name => XSD::QName.new(NsApi, "Client.UpdateAccessAndBilling"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["clientID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ClientID")], [0, 1]],
      ["accessLevel", ["SOAP::SOAPInt", XSD::QName.new(NsApi, "AccessLevel")]],
      ["username", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Username")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Password")], [0, 1]],
      ["billingType", ["SOAP::SOAPString", XSD::QName.new(NsApi, "BillingType")], [0, 1]],
      ["currency", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Currency")], [0, 1]],
      ["deliveryFee", ["SOAP::SOAPString", XSD::QName.new(NsApi, "DeliveryFee")], [0, 1]],
      ["costPerRecipient", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CostPerRecipient")], [0, 1]],
      ["designAndSpamTestFee", ["SOAP::SOAPString", XSD::QName.new(NsApi, "DesignAndSpamTestFee")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ClientUpdateAccessAndBillingResponse,
    :schema_name => XSD::QName.new(NsApi, "Client.UpdateAccessAndBillingResponse"),
    :schema_element => [
      ["client_UpdateAccessAndBillingResult", ["Result", XSD::QName.new(NsApi, "Client.UpdateAccessAndBillingResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ClientGetDetail,
    :schema_name => XSD::QName.new(NsApi, "Client.GetDetail"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["clientID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ClientID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ClientGetDetailResponse,
    :schema_name => XSD::QName.new(NsApi, "Client.GetDetailResponse"),
    :schema_element => [
      ["client_GetDetailResult", [nil, XSD::QName.new(NsApi, "Client.GetDetailResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ClientDelete,
    :schema_name => XSD::QName.new(NsApi, "Client.Delete"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["clientID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ClientID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ClientDeleteResponse,
    :schema_name => XSD::QName.new(NsApi, "Client.DeleteResponse"),
    :schema_element => [
      ["client_DeleteResult", ["Result", XSD::QName.new(NsApi, "Client.DeleteResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CampaignGetSubscriberClicks,
    :schema_name => XSD::QName.new(NsApi, "Campaign.GetSubscriberClicks"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["campaignID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CampaignID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CampaignGetSubscriberClicksResponse,
    :schema_name => XSD::QName.new(NsApi, "Campaign.GetSubscriberClicksResponse"),
    :schema_element => [
      ["campaign_GetSubscriberClicksResult", [nil, XSD::QName.new(NsApi, "Campaign.GetSubscriberClicksResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CampaignGetOpens,
    :schema_name => XSD::QName.new(NsApi, "Campaign.GetOpens"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["campaignID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CampaignID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CampaignGetOpensResponse,
    :schema_name => XSD::QName.new(NsApi, "Campaign.GetOpensResponse"),
    :schema_element => [
      ["campaign_GetOpensResult", [nil, XSD::QName.new(NsApi, "Campaign.GetOpensResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CampaignGetBounces,
    :schema_name => XSD::QName.new(NsApi, "Campaign.GetBounces"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["campaignID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CampaignID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CampaignGetBouncesResponse,
    :schema_name => XSD::QName.new(NsApi, "Campaign.GetBouncesResponse"),
    :schema_element => [
      ["campaign_GetBouncesResult", [nil, XSD::QName.new(NsApi, "Campaign.GetBouncesResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CampaignGetUnsubscribes,
    :schema_name => XSD::QName.new(NsApi, "Campaign.GetUnsubscribes"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["campaignID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CampaignID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CampaignGetUnsubscribesResponse,
    :schema_name => XSD::QName.new(NsApi, "Campaign.GetUnsubscribesResponse"),
    :schema_element => [
      ["campaign_GetUnsubscribesResult", [nil, XSD::QName.new(NsApi, "Campaign.GetUnsubscribesResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CampaignGetSummary,
    :schema_name => XSD::QName.new(NsApi, "Campaign.GetSummary"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["campaignID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CampaignID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CampaignGetSummaryResponse,
    :schema_name => XSD::QName.new(NsApi, "Campaign.GetSummaryResponse"),
    :schema_element => [
      ["campaign_GetSummaryResult", [nil, XSD::QName.new(NsApi, "Campaign.GetSummaryResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CampaignGetLists,
    :schema_name => XSD::QName.new(NsApi, "Campaign.GetLists"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["campaignID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CampaignID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CampaignGetListsResponse,
    :schema_name => XSD::QName.new(NsApi, "Campaign.GetListsResponse"),
    :schema_element => [
      ["campaign_GetListsResult", [nil, XSD::QName.new(NsApi, "Campaign.GetListsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UserGetClients,
    :schema_name => XSD::QName.new(NsApi, "User.GetClients"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UserGetClientsResponse,
    :schema_name => XSD::QName.new(NsApi, "User.GetClientsResponse"),
    :schema_element => [
      ["user_GetClientsResult", [nil, XSD::QName.new(NsApi, "User.GetClientsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UserGetSystemDate,
    :schema_name => XSD::QName.new(NsApi, "User.GetSystemDate"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UserGetSystemDateResponse,
    :schema_name => XSD::QName.new(NsApi, "User.GetSystemDateResponse"),
    :schema_element => [
      ["user_GetSystemDateResult", [nil, XSD::QName.new(NsApi, "User.GetSystemDateResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UserGetTimezones,
    :schema_name => XSD::QName.new(NsApi, "User.GetTimezones"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UserGetTimezonesResponse,
    :schema_name => XSD::QName.new(NsApi, "User.GetTimezonesResponse"),
    :schema_element => [
      ["user_GetTimezonesResult", [nil, XSD::QName.new(NsApi, "User.GetTimezonesResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UserGetCountries,
    :schema_name => XSD::QName.new(NsApi, "User.GetCountries"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UserGetCountriesResponse,
    :schema_name => XSD::QName.new(NsApi, "User.GetCountriesResponse"),
    :schema_element => [
      ["user_GetCountriesResult", [nil, XSD::QName.new(NsApi, "User.GetCountriesResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CampaignCreate,
    :schema_name => XSD::QName.new(NsApi, "Campaign.Create"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["clientID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ClientID")], [0, 1]],
      ["campaignName", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CampaignName")], [0, 1]],
      ["campaignSubject", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CampaignSubject")], [0, 1]],
      ["fromName", ["SOAP::SOAPString", XSD::QName.new(NsApi, "FromName")], [0, 1]],
      ["fromEmail", ["SOAP::SOAPString", XSD::QName.new(NsApi, "FromEmail")], [0, 1]],
      ["replyTo", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ReplyTo")], [0, 1]],
      ["htmlUrl", ["SOAP::SOAPString", XSD::QName.new(NsApi, "HtmlUrl")], [0, 1]],
      ["textUrl", ["SOAP::SOAPString", XSD::QName.new(NsApi, "TextUrl")], [0, 1]],
      ["subscriberListIDs", ["ArrayOfString", XSD::QName.new(NsApi, "SubscriberListIDs")], [0, 1]],
      ["listSegments", ["ArrayOfList", XSD::QName.new(NsApi, "ListSegments")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CampaignCreateResponse,
    :schema_name => XSD::QName.new(NsApi, "Campaign.CreateResponse"),
    :schema_element => [
      ["campaign_CreateResult", [nil, XSD::QName.new(NsApi, "Campaign.CreateResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CampaignSend,
    :schema_name => XSD::QName.new(NsApi, "Campaign.Send"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["campaignID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CampaignID")], [0, 1]],
      ["confirmationEmail", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ConfirmationEmail")], [0, 1]],
      ["sendDate", ["SOAP::SOAPString", XSD::QName.new(NsApi, "SendDate")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CampaignSendResponse,
    :schema_name => XSD::QName.new(NsApi, "Campaign.SendResponse"),
    :schema_element => [
      ["campaign_SendResult", ["Result", XSD::QName.new(NsApi, "Campaign.SendResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Result,
    :schema_name => XSD::QName.new(NsApi, "Result"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsApi, "Code")]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Message")], [0, 1]]
    ]
  )

end
