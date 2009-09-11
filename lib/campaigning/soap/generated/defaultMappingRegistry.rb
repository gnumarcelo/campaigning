require File.expand_path(File.dirname(__FILE__)) + '/default.rb'
require 'soap/mapping'

module Campaigning

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsApi = "http://api.createsend.com/api/"

  EncodedRegistry.register(
    :class => Campaigning::ArrayOfSubscriberCustomField,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfSubscriberCustomField"),
    :schema_element => [
      ["subscriberCustomField", ["Campaigning::SubscriberCustomField[]", XSD::QName.new(NsApi, "SubscriberCustomField")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Campaigning::SubscriberCustomField,
    :schema_type => XSD::QName.new(NsApi, "SubscriberCustomField"),
    :schema_element => [
      ["key", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Key")], [0, 1]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Value")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Campaigning::Result,
    :schema_type => XSD::QName.new(NsApi, "Result"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsApi, "Code")]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Message")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Campaigning::Client,
    :schema_type => XSD::QName.new(NsApi, "Client"),
    :schema_element => [
      ["clientID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ClientID")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Name")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Campaigning::CampaignSummary,
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
    :class => Campaigning::SubscriberUnsubscribe,
    :schema_type => XSD::QName.new(NsApi, "SubscriberUnsubscribe"),
    :schema_element => [
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(NsApi, "EmailAddress")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Campaigning::SubscriberBounce,
    :schema_type => XSD::QName.new(NsApi, "SubscriberBounce"),
    :schema_element => [
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(NsApi, "EmailAddress")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["bounceType", ["SOAP::SOAPString", XSD::QName.new(NsApi, "BounceType")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Campaigning::SubscriberOpen,
    :schema_type => XSD::QName.new(NsApi, "SubscriberOpen"),
    :schema_element => [
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(NsApi, "EmailAddress")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["numberOfOpens", ["SOAP::SOAPInt", XSD::QName.new(NsApi, "NumberOfOpens")]]
    ]
  )

  EncodedRegistry.register(
    :class => Campaigning::SubscriberClick,
    :schema_type => XSD::QName.new(NsApi, "SubscriberClick"),
    :schema_element => [
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(NsApi, "EmailAddress")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["clickedLinks", ["Campaigning::ArrayOfSubscriberClickedLink", XSD::QName.new(NsApi, "ClickedLinks")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Campaigning::ArrayOfSubscriberClickedLink,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfSubscriberClickedLink"),
    :schema_element => [
      ["subscriberClickedLink", ["Campaigning::SubscriberClickedLink[]", XSD::QName.new(NsApi, "SubscriberClickedLink")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Campaigning::SubscriberClickedLink,
    :schema_type => XSD::QName.new(NsApi, "SubscriberClickedLink"),
    :schema_element => [
      ["link", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Link")], [0, 1]],
      ["clicks", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Clicks")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Campaigning::ClientDetail,
    :schema_type => XSD::QName.new(NsApi, "ClientDetail"),
    :schema_element => [
      ["basicDetails", ["Campaigning::ClientBasicDetails", XSD::QName.new(NsApi, "BasicDetails")], [0, 1]],
      ["accessAndBilling", ["Campaigning::ClientAccessAndBilling", XSD::QName.new(NsApi, "AccessAndBilling")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Campaigning::ClientBasicDetails,
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
    :class => Campaigning::ClientAccessAndBilling,
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
    :class => Campaigning::Template,
    :schema_type => XSD::QName.new(NsApi, "Template"),
    :schema_element => [
      ["templateID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "TemplateID")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Name")], [0, 1]],
      ["previewURL", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PreviewURL")], [0, 1]],
      ["screenshotURL", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ScreenshotURL")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Campaigning::List,
    :schema_type => XSD::QName.new(NsApi, "List"),
    :schema_element => [
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Name")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Campaigning::Campaign,
    :schema_type => XSD::QName.new(NsApi, "Campaign"),
    :schema_element => [
      ["campaignID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CampaignID")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Subject")], [0, 1]],
      ["sentDate", ["SOAP::SOAPString", XSD::QName.new(NsApi, "SentDate")], [0, 1]],
      ["totalRecipients", ["SOAP::SOAPInt", XSD::QName.new(NsApi, "TotalRecipients")]]
    ]
  )

  EncodedRegistry.register(
    :class => Campaigning::ListCustomField,
    :schema_type => XSD::QName.new(NsApi, "ListCustomField"),
    :schema_element => [
      ["fieldName", ["SOAP::SOAPString", XSD::QName.new(NsApi, "FieldName")], [0, 1]],
      ["key", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Key")], [0, 1]],
      ["dataType", ["Campaigning::SubscriberFieldDataType", XSD::QName.new(NsApi, "DataType")]],
      ["fieldOptions", ["Campaigning::ArrayOfString", XSD::QName.new(NsApi, "FieldOptions")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Campaigning::ArrayOfString,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfString"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Campaigning::ListDetail,
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
    :class => Campaigning::Subscriber,
    :schema_type => XSD::QName.new(NsApi, "Subscriber"),
    :schema_element => [
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(NsApi, "EmailAddress")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Name")], [0, 1]],
      ["date", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Date")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(NsApi, "State")], [0, 1]],
      ["customFields", ["Campaigning::ArrayOfSubscriberCustomField", XSD::QName.new(NsApi, "CustomFields")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Campaigning::ArrayOfSubscriber,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfSubscriber"),
    :schema_element => [
      ["subscriber", ["Campaigning::Subscriber[]", XSD::QName.new(NsApi, "Subscriber")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Campaigning::ArrayOfListCustomField,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfListCustomField"),
    :schema_element => [
      ["listCustomField", ["Campaigning::ListCustomField[]", XSD::QName.new(NsApi, "ListCustomField")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Campaigning::ArrayOfCampaign,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfCampaign"),
    :schema_element => [
      ["campaign", ["Campaigning::Campaign[]", XSD::QName.new(NsApi, "Campaign")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Campaigning::ArrayOfList,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfList"),
    :schema_element => [
      ["list", ["Campaigning::List[]", XSD::QName.new(NsApi, "List")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Campaigning::ArrayOfTemplate,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfTemplate"),
    :schema_element => [
      ["template", ["Campaigning::Template[]", XSD::QName.new(NsApi, "Template")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Campaigning::ArrayOfSubscriberClick,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfSubscriberClick"),
    :schema_element => [
      ["subscriberClick", ["Campaigning::SubscriberClick[]", XSD::QName.new(NsApi, "SubscriberClick")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Campaigning::ArrayOfSubscriberOpen,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfSubscriberOpen"),
    :schema_element => [
      ["subscriberOpen", ["Campaigning::SubscriberOpen[]", XSD::QName.new(NsApi, "SubscriberOpen")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Campaigning::ArrayOfSubscriberBounce,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfSubscriberBounce"),
    :schema_element => [
      ["subscriberBounce", ["Campaigning::SubscriberBounce[]", XSD::QName.new(NsApi, "SubscriberBounce")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Campaigning::ArrayOfSubscriberUnsubscribe,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfSubscriberUnsubscribe"),
    :schema_element => [
      ["subscriberUnsubscribe", ["Campaigning::SubscriberUnsubscribe[]", XSD::QName.new(NsApi, "SubscriberUnsubscribe")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Campaigning::ArrayOfClient,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfClient"),
    :schema_element => [
      ["client", ["Campaigning::Client[]", XSD::QName.new(NsApi, "Client")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Campaigning::SubscriberFieldDataType,
    :schema_type => XSD::QName.new(NsApi, "SubscriberFieldDataType")
  )

  LiteralRegistry.register(
    :class => Campaigning::ArrayOfSubscriberCustomField,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfSubscriberCustomField"),
    :schema_element => [
      ["subscriberCustomField", ["Campaigning::SubscriberCustomField[]", XSD::QName.new(NsApi, "SubscriberCustomField")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::SubscriberCustomField,
    :schema_type => XSD::QName.new(NsApi, "SubscriberCustomField"),
    :schema_element => [
      ["key", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Key")], [0, 1]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Value")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::Result,
    :schema_type => XSD::QName.new(NsApi, "Result"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsApi, "Code")]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Message")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::Client,
    :schema_type => XSD::QName.new(NsApi, "Client"),
    :schema_element => [
      ["clientID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ClientID")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Name")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::CampaignSummary,
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
    :class => Campaigning::SubscriberUnsubscribe,
    :schema_type => XSD::QName.new(NsApi, "SubscriberUnsubscribe"),
    :schema_element => [
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(NsApi, "EmailAddress")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::SubscriberBounce,
    :schema_type => XSD::QName.new(NsApi, "SubscriberBounce"),
    :schema_element => [
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(NsApi, "EmailAddress")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["bounceType", ["SOAP::SOAPString", XSD::QName.new(NsApi, "BounceType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::SubscriberOpen,
    :schema_type => XSD::QName.new(NsApi, "SubscriberOpen"),
    :schema_element => [
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(NsApi, "EmailAddress")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["numberOfOpens", ["SOAP::SOAPInt", XSD::QName.new(NsApi, "NumberOfOpens")]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::SubscriberClick,
    :schema_type => XSD::QName.new(NsApi, "SubscriberClick"),
    :schema_element => [
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(NsApi, "EmailAddress")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["clickedLinks", ["Campaigning::ArrayOfSubscriberClickedLink", XSD::QName.new(NsApi, "ClickedLinks")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ArrayOfSubscriberClickedLink,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfSubscriberClickedLink"),
    :schema_element => [
      ["subscriberClickedLink", ["Campaigning::SubscriberClickedLink[]", XSD::QName.new(NsApi, "SubscriberClickedLink")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::SubscriberClickedLink,
    :schema_type => XSD::QName.new(NsApi, "SubscriberClickedLink"),
    :schema_element => [
      ["link", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Link")], [0, 1]],
      ["clicks", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Clicks")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ClientDetail,
    :schema_type => XSD::QName.new(NsApi, "ClientDetail"),
    :schema_element => [
      ["basicDetails", ["Campaigning::ClientBasicDetails", XSD::QName.new(NsApi, "BasicDetails")], [0, 1]],
      ["accessAndBilling", ["Campaigning::ClientAccessAndBilling", XSD::QName.new(NsApi, "AccessAndBilling")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ClientBasicDetails,
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
    :class => Campaigning::ClientAccessAndBilling,
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
    :class => Campaigning::Template,
    :schema_type => XSD::QName.new(NsApi, "Template"),
    :schema_element => [
      ["templateID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "TemplateID")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Name")], [0, 1]],
      ["previewURL", ["SOAP::SOAPString", XSD::QName.new(NsApi, "PreviewURL")], [0, 1]],
      ["screenshotURL", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ScreenshotURL")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::List,
    :schema_type => XSD::QName.new(NsApi, "List"),
    :schema_element => [
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Name")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::Campaign,
    :schema_type => XSD::QName.new(NsApi, "Campaign"),
    :schema_element => [
      ["campaignID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CampaignID")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Subject")], [0, 1]],
      ["sentDate", ["SOAP::SOAPString", XSD::QName.new(NsApi, "SentDate")], [0, 1]],
      ["totalRecipients", ["SOAP::SOAPInt", XSD::QName.new(NsApi, "TotalRecipients")]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ListCustomField,
    :schema_type => XSD::QName.new(NsApi, "ListCustomField"),
    :schema_element => [
      ["fieldName", ["SOAP::SOAPString", XSD::QName.new(NsApi, "FieldName")], [0, 1]],
      ["key", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Key")], [0, 1]],
      ["dataType", ["Campaigning::SubscriberFieldDataType", XSD::QName.new(NsApi, "DataType")]],
      ["fieldOptions", ["Campaigning::ArrayOfString", XSD::QName.new(NsApi, "FieldOptions")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ArrayOfString,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfString"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ListDetail,
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
    :class => Campaigning::Subscriber,
    :schema_type => XSD::QName.new(NsApi, "Subscriber"),
    :schema_element => [
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(NsApi, "EmailAddress")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Name")], [0, 1]],
      ["date", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Date")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(NsApi, "State")], [0, 1]],
      ["customFields", ["Campaigning::ArrayOfSubscriberCustomField", XSD::QName.new(NsApi, "CustomFields")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ArrayOfSubscriber,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfSubscriber"),
    :schema_element => [
      ["subscriber", ["Campaigning::Subscriber[]", XSD::QName.new(NsApi, "Subscriber")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ArrayOfListCustomField,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfListCustomField"),
    :schema_element => [
      ["listCustomField", ["Campaigning::ListCustomField[]", XSD::QName.new(NsApi, "ListCustomField")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ArrayOfCampaign,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfCampaign"),
    :schema_element => [
      ["campaign", ["Campaigning::Campaign[]", XSD::QName.new(NsApi, "Campaign")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ArrayOfList,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfList"),
    :schema_element => [
      ["list", ["Campaigning::List[]", XSD::QName.new(NsApi, "List")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ArrayOfTemplate,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfTemplate"),
    :schema_element => [
      ["template", ["Campaigning::Template[]", XSD::QName.new(NsApi, "Template")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ArrayOfSubscriberClick,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfSubscriberClick"),
    :schema_element => [
      ["subscriberClick", ["Campaigning::SubscriberClick[]", XSD::QName.new(NsApi, "SubscriberClick")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ArrayOfSubscriberOpen,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfSubscriberOpen"),
    :schema_element => [
      ["subscriberOpen", ["Campaigning::SubscriberOpen[]", XSD::QName.new(NsApi, "SubscriberOpen")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ArrayOfSubscriberBounce,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfSubscriberBounce"),
    :schema_element => [
      ["subscriberBounce", ["Campaigning::SubscriberBounce[]", XSD::QName.new(NsApi, "SubscriberBounce")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ArrayOfSubscriberUnsubscribe,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfSubscriberUnsubscribe"),
    :schema_element => [
      ["subscriberUnsubscribe", ["Campaigning::SubscriberUnsubscribe[]", XSD::QName.new(NsApi, "SubscriberUnsubscribe")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ArrayOfClient,
    :schema_type => XSD::QName.new(NsApi, "ArrayOfClient"),
    :schema_element => [
      ["client", ["Campaigning::Client[]", XSD::QName.new(NsApi, "Client")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::SubscriberFieldDataType,
    :schema_type => XSD::QName.new(NsApi, "SubscriberFieldDataType")
  )

  LiteralRegistry.register(
    :class => Campaigning::SubscriberAddWithCustomFields,
    :schema_name => XSD::QName.new(NsApi, "Subscriber.AddWithCustomFields"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Email")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Name")], [0, 1]],
      ["customFields", ["Campaigning::ArrayOfSubscriberCustomField", XSD::QName.new(NsApi, "CustomFields")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::SubscriberAddWithCustomFieldsResponse,
    :schema_name => XSD::QName.new(NsApi, "Subscriber.AddWithCustomFieldsResponse"),
    :schema_element => [
      ["subscriber_AddWithCustomFieldsResult", ["Campaigning::Result", XSD::QName.new(NsApi, "Subscriber.AddWithCustomFieldsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::SubscriberAddAndResubscribeWithCustomFields,
    :schema_name => XSD::QName.new(NsApi, "Subscriber.AddAndResubscribeWithCustomFields"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Email")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Name")], [0, 1]],
      ["customFields", ["Campaigning::ArrayOfSubscriberCustomField", XSD::QName.new(NsApi, "CustomFields")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::SubscriberAddAndResubscribeWithCustomFieldsResponse,
    :schema_name => XSD::QName.new(NsApi, "Subscriber.AddAndResubscribeWithCustomFieldsResponse"),
    :schema_element => [
      ["subscriber_AddAndResubscribeWithCustomFieldsResult", ["Campaigning::Result", XSD::QName.new(NsApi, "Subscriber.AddAndResubscribeWithCustomFieldsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::SubscriberAdd,
    :schema_name => XSD::QName.new(NsApi, "Subscriber.Add"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Email")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Name")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::SubscriberAddResponse,
    :schema_name => XSD::QName.new(NsApi, "Subscriber.AddResponse"),
    :schema_element => [
      ["subscriber_AddResult", ["Campaigning::Result", XSD::QName.new(NsApi, "Subscriber.AddResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::SubscriberAddAndResubscribe,
    :schema_name => XSD::QName.new(NsApi, "Subscriber.AddAndResubscribe"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Email")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Name")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::SubscriberAddAndResubscribeResponse,
    :schema_name => XSD::QName.new(NsApi, "Subscriber.AddAndResubscribeResponse"),
    :schema_element => [
      ["subscriber_AddAndResubscribeResult", ["Campaigning::Result", XSD::QName.new(NsApi, "Subscriber.AddAndResubscribeResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::SubscriberUnsubscribe_,
    :schema_name => XSD::QName.new(NsApi, "Subscriber.Unsubscribe"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Email")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::SubscriberUnsubscribeResponse,
    :schema_name => XSD::QName.new(NsApi, "Subscriber.UnsubscribeResponse"),
    :schema_element => [
      ["subscriber_UnsubscribeResult", ["Campaigning::Result", XSD::QName.new(NsApi, "Subscriber.UnsubscribeResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::SubscribersGetActive,
    :schema_name => XSD::QName.new(NsApi, "Subscribers.GetActive"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["date", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Date")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::SubscribersGetActiveResponse,
    :schema_name => XSD::QName.new(NsApi, "Subscribers.GetActiveResponse"),
    :schema_element => [
      ["subscribers_GetActiveResult", [nil, XSD::QName.new(NsApi, "Subscribers.GetActiveResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::SubscribersGetUnsubscribed,
    :schema_name => XSD::QName.new(NsApi, "Subscribers.GetUnsubscribed"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["date", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Date")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::SubscribersGetUnsubscribedResponse,
    :schema_name => XSD::QName.new(NsApi, "Subscribers.GetUnsubscribedResponse"),
    :schema_element => [
      ["subscribers_GetUnsubscribedResult", [nil, XSD::QName.new(NsApi, "Subscribers.GetUnsubscribedResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::SubscribersGetBounced,
    :schema_name => XSD::QName.new(NsApi, "Subscribers.GetBounced"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["date", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Date")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::SubscribersGetBouncedResponse,
    :schema_name => XSD::QName.new(NsApi, "Subscribers.GetBouncedResponse"),
    :schema_element => [
      ["subscribers_GetBouncedResult", [nil, XSD::QName.new(NsApi, "Subscribers.GetBouncedResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::SubscribersGetSingleSubscriber,
    :schema_name => XSD::QName.new(NsApi, "Subscribers.GetSingleSubscriber"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["emailAddress", ["SOAP::SOAPString", XSD::QName.new(NsApi, "EmailAddress")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::SubscribersGetSingleSubscriberResponse,
    :schema_name => XSD::QName.new(NsApi, "Subscribers.GetSingleSubscriberResponse"),
    :schema_element => [
      ["subscribers_GetSingleSubscriberResult", [nil, XSD::QName.new(NsApi, "Subscribers.GetSingleSubscriberResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::SubscribersGetIsSubscribed,
    :schema_name => XSD::QName.new(NsApi, "Subscribers.GetIsSubscribed"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Email")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::SubscribersGetIsSubscribedResponse,
    :schema_name => XSD::QName.new(NsApi, "Subscribers.GetIsSubscribedResponse"),
    :schema_element => [
      ["subscribers_GetIsSubscribedResult", [nil, XSD::QName.new(NsApi, "Subscribers.GetIsSubscribedResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ListCreate,
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
    :class => Campaigning::ListCreateResponse,
    :schema_name => XSD::QName.new(NsApi, "List.CreateResponse"),
    :schema_element => [
      ["list_CreateResult", [nil, XSD::QName.new(NsApi, "List.CreateResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ListUpdate,
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
    :class => Campaigning::ListUpdateResponse,
    :schema_name => XSD::QName.new(NsApi, "List.UpdateResponse"),
    :schema_element => [
      ["list_UpdateResult", ["Campaigning::Result", XSD::QName.new(NsApi, "List.UpdateResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ListGetDetail,
    :schema_name => XSD::QName.new(NsApi, "List.GetDetail"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ListGetDetailResponse,
    :schema_name => XSD::QName.new(NsApi, "List.GetDetailResponse"),
    :schema_element => [
      ["list_GetDetailResult", [nil, XSD::QName.new(NsApi, "List.GetDetailResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ListDelete,
    :schema_name => XSD::QName.new(NsApi, "List.Delete"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ListDeleteResponse,
    :schema_name => XSD::QName.new(NsApi, "List.DeleteResponse"),
    :schema_element => [
      ["list_DeleteResult", ["Campaigning::Result", XSD::QName.new(NsApi, "List.DeleteResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ListGetCustomFields,
    :schema_name => XSD::QName.new(NsApi, "List.GetCustomFields"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ListGetCustomFieldsResponse,
    :schema_name => XSD::QName.new(NsApi, "List.GetCustomFieldsResponse"),
    :schema_element => [
      ["list_GetCustomFieldsResult", [nil, XSD::QName.new(NsApi, "List.GetCustomFieldsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ListDeleteCustomField,
    :schema_name => XSD::QName.new(NsApi, "List.DeleteCustomField"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["key", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Key")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ListDeleteCustomFieldResponse,
    :schema_name => XSD::QName.new(NsApi, "List.DeleteCustomFieldResponse"),
    :schema_element => [
      ["list_DeleteCustomFieldResult", ["Campaigning::Result", XSD::QName.new(NsApi, "List.DeleteCustomFieldResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ListCreateCustomField,
    :schema_name => XSD::QName.new(NsApi, "List.CreateCustomField"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["listID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ListID")], [0, 1]],
      ["fieldName", ["SOAP::SOAPString", XSD::QName.new(NsApi, "FieldName")], [0, 1]],
      ["dataType", ["Campaigning::SubscriberFieldDataType", XSD::QName.new(NsApi, "DataType")]],
      ["options", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Options")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ListCreateCustomFieldResponse,
    :schema_name => XSD::QName.new(NsApi, "List.CreateCustomFieldResponse"),
    :schema_element => [
      ["list_CreateCustomFieldResult", ["Campaigning::Result", XSD::QName.new(NsApi, "List.CreateCustomFieldResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ClientGetCampaigns,
    :schema_name => XSD::QName.new(NsApi, "Client.GetCampaigns"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["clientID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ClientID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ClientGetCampaignsResponse,
    :schema_name => XSD::QName.new(NsApi, "Client.GetCampaignsResponse"),
    :schema_element => [
      ["client_GetCampaignsResult", [nil, XSD::QName.new(NsApi, "Client.GetCampaignsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ClientGetLists,
    :schema_name => XSD::QName.new(NsApi, "Client.GetLists"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["clientID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ClientID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ClientGetListsResponse,
    :schema_name => XSD::QName.new(NsApi, "Client.GetListsResponse"),
    :schema_element => [
      ["client_GetListsResult", [nil, XSD::QName.new(NsApi, "Client.GetListsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ClientGetSegments,
    :schema_name => XSD::QName.new(NsApi, "Client.GetSegments"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["clientID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ClientID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ClientGetSegmentsResponse,
    :schema_name => XSD::QName.new(NsApi, "Client.GetSegmentsResponse"),
    :schema_element => [
      ["client_GetSegmentsResult", [nil, XSD::QName.new(NsApi, "Client.GetSegmentsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ClientGetSuppressionList,
    :schema_name => XSD::QName.new(NsApi, "Client.GetSuppressionList"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["clientID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ClientID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ClientGetSuppressionListResponse,
    :schema_name => XSD::QName.new(NsApi, "Client.GetSuppressionListResponse"),
    :schema_element => [
      ["client_GetSuppressionListResult", [nil, XSD::QName.new(NsApi, "Client.GetSuppressionListResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ClientGetTemplates,
    :schema_name => XSD::QName.new(NsApi, "Client.GetTemplates"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["clientID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ClientID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ClientGetTemplatesResponse,
    :schema_name => XSD::QName.new(NsApi, "Client.GetTemplatesResponse"),
    :schema_element => [
      ["client_GetTemplatesResult", [nil, XSD::QName.new(NsApi, "Client.GetTemplatesResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ClientCreate,
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
    :class => Campaigning::ClientCreateResponse,
    :schema_name => XSD::QName.new(NsApi, "Client.CreateResponse"),
    :schema_element => [
      ["client_CreateResult", [nil, XSD::QName.new(NsApi, "Client.CreateResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ClientUpdateBasics,
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
    :class => Campaigning::ClientUpdateBasicsResponse,
    :schema_name => XSD::QName.new(NsApi, "Client.UpdateBasicsResponse"),
    :schema_element => [
      ["client_UpdateBasicsResult", [nil, XSD::QName.new(NsApi, "Client.UpdateBasicsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ClientUpdateAccessAndBilling,
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
    :class => Campaigning::ClientUpdateAccessAndBillingResponse,
    :schema_name => XSD::QName.new(NsApi, "Client.UpdateAccessAndBillingResponse"),
    :schema_element => [
      ["client_UpdateAccessAndBillingResult", ["Campaigning::Result", XSD::QName.new(NsApi, "Client.UpdateAccessAndBillingResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ClientGetDetail,
    :schema_name => XSD::QName.new(NsApi, "Client.GetDetail"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["clientID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ClientID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ClientGetDetailResponse,
    :schema_name => XSD::QName.new(NsApi, "Client.GetDetailResponse"),
    :schema_element => [
      ["client_GetDetailResult", [nil, XSD::QName.new(NsApi, "Client.GetDetailResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ClientDelete,
    :schema_name => XSD::QName.new(NsApi, "Client.Delete"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["clientID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ClientID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::ClientDeleteResponse,
    :schema_name => XSD::QName.new(NsApi, "Client.DeleteResponse"),
    :schema_element => [
      ["client_DeleteResult", ["Campaigning::Result", XSD::QName.new(NsApi, "Client.DeleteResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::CampaignGetSubscriberClicks,
    :schema_name => XSD::QName.new(NsApi, "Campaign.GetSubscriberClicks"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["campaignID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CampaignID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::CampaignGetSubscriberClicksResponse,
    :schema_name => XSD::QName.new(NsApi, "Campaign.GetSubscriberClicksResponse"),
    :schema_element => [
      ["campaign_GetSubscriberClicksResult", [nil, XSD::QName.new(NsApi, "Campaign.GetSubscriberClicksResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::CampaignGetOpens,
    :schema_name => XSD::QName.new(NsApi, "Campaign.GetOpens"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["campaignID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CampaignID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::CampaignGetOpensResponse,
    :schema_name => XSD::QName.new(NsApi, "Campaign.GetOpensResponse"),
    :schema_element => [
      ["campaign_GetOpensResult", [nil, XSD::QName.new(NsApi, "Campaign.GetOpensResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::CampaignGetBounces,
    :schema_name => XSD::QName.new(NsApi, "Campaign.GetBounces"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["campaignID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CampaignID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::CampaignGetBouncesResponse,
    :schema_name => XSD::QName.new(NsApi, "Campaign.GetBouncesResponse"),
    :schema_element => [
      ["campaign_GetBouncesResult", [nil, XSD::QName.new(NsApi, "Campaign.GetBouncesResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::CampaignGetUnsubscribes,
    :schema_name => XSD::QName.new(NsApi, "Campaign.GetUnsubscribes"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["campaignID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CampaignID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::CampaignGetUnsubscribesResponse,
    :schema_name => XSD::QName.new(NsApi, "Campaign.GetUnsubscribesResponse"),
    :schema_element => [
      ["campaign_GetUnsubscribesResult", [nil, XSD::QName.new(NsApi, "Campaign.GetUnsubscribesResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::CampaignGetSummary,
    :schema_name => XSD::QName.new(NsApi, "Campaign.GetSummary"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["campaignID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CampaignID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::CampaignGetSummaryResponse,
    :schema_name => XSD::QName.new(NsApi, "Campaign.GetSummaryResponse"),
    :schema_element => [
      ["campaign_GetSummaryResult", [nil, XSD::QName.new(NsApi, "Campaign.GetSummaryResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::CampaignGetLists,
    :schema_name => XSD::QName.new(NsApi, "Campaign.GetLists"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["campaignID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CampaignID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::CampaignGetListsResponse,
    :schema_name => XSD::QName.new(NsApi, "Campaign.GetListsResponse"),
    :schema_element => [
      ["campaign_GetListsResult", [nil, XSD::QName.new(NsApi, "Campaign.GetListsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::UserGetClients,
    :schema_name => XSD::QName.new(NsApi, "User.GetClients"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::UserGetClientsResponse,
    :schema_name => XSD::QName.new(NsApi, "User.GetClientsResponse"),
    :schema_element => [
      ["user_GetClientsResult", [nil, XSD::QName.new(NsApi, "User.GetClientsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::UserGetSystemDate,
    :schema_name => XSD::QName.new(NsApi, "User.GetSystemDate"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::UserGetSystemDateResponse,
    :schema_name => XSD::QName.new(NsApi, "User.GetSystemDateResponse"),
    :schema_element => [
      ["user_GetSystemDateResult", [nil, XSD::QName.new(NsApi, "User.GetSystemDateResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::UserGetTimezones,
    :schema_name => XSD::QName.new(NsApi, "User.GetTimezones"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::UserGetTimezonesResponse,
    :schema_name => XSD::QName.new(NsApi, "User.GetTimezonesResponse"),
    :schema_element => [
      ["user_GetTimezonesResult", [nil, XSD::QName.new(NsApi, "User.GetTimezonesResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::UserGetCountries,
    :schema_name => XSD::QName.new(NsApi, "User.GetCountries"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::UserGetCountriesResponse,
    :schema_name => XSD::QName.new(NsApi, "User.GetCountriesResponse"),
    :schema_element => [
      ["user_GetCountriesResult", [nil, XSD::QName.new(NsApi, "User.GetCountriesResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::CampaignCreate,
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
      ["subscriberListIDs", ["Campaigning::ArrayOfString", XSD::QName.new(NsApi, "SubscriberListIDs")], [0, 1]],
      ["listSegments", ["Campaigning::ArrayOfList", XSD::QName.new(NsApi, "ListSegments")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::CampaignCreateResponse,
    :schema_name => XSD::QName.new(NsApi, "Campaign.CreateResponse"),
    :schema_element => [
      ["campaign_CreateResult", [nil, XSD::QName.new(NsApi, "Campaign.CreateResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::CampaignSend,
    :schema_name => XSD::QName.new(NsApi, "Campaign.Send"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["campaignID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CampaignID")], [0, 1]],
      ["confirmationEmail", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ConfirmationEmail")], [0, 1]],
      ["sendDate", ["SOAP::SOAPString", XSD::QName.new(NsApi, "SendDate")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::CampaignSendResponse,
    :schema_name => XSD::QName.new(NsApi, "Campaign.SendResponse"),
    :schema_element => [
      ["campaign_SendResult", ["Campaigning::Result", XSD::QName.new(NsApi, "Campaign.SendResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::CampaignDelete,
    :schema_name => XSD::QName.new(NsApi, "Campaign.Delete"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["campaignID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "CampaignID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::CampaignDeleteResponse,
    :schema_name => XSD::QName.new(NsApi, "Campaign.DeleteResponse"),
    :schema_element => [
      ["campaign_DeleteResult", ["Campaigning::Result", XSD::QName.new(NsApi, "Campaign.DeleteResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::TemplateCreate,
    :schema_name => XSD::QName.new(NsApi, "Template.Create"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["clientID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ClientID")], [0, 1]],
      ["templateName", ["SOAP::SOAPString", XSD::QName.new(NsApi, "TemplateName")], [0, 1]],
      ["hTMLPageURL", ["SOAP::SOAPString", XSD::QName.new(NsApi, "HTMLPageURL")], [0, 1]],
      ["zipFileURL", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ZipFileURL")], [0, 1]],
      ["screenshotURL", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ScreenshotURL")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::TemplateCreateResponse,
    :schema_name => XSD::QName.new(NsApi, "Template.CreateResponse"),
    :schema_element => [
      ["template_CreateResult", [nil, XSD::QName.new(NsApi, "Template.CreateResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::TemplateGetDetail,
    :schema_name => XSD::QName.new(NsApi, "Template.GetDetail"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["templateID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "TemplateID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::TemplateGetDetailResponse,
    :schema_name => XSD::QName.new(NsApi, "Template.GetDetailResponse"),
    :schema_element => [
      ["template_GetDetailResult", [nil, XSD::QName.new(NsApi, "Template.GetDetailResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::TemplateUpdate,
    :schema_name => XSD::QName.new(NsApi, "Template.Update"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["templateID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "TemplateID")], [0, 1]],
      ["templateName", ["SOAP::SOAPString", XSD::QName.new(NsApi, "TemplateName")], [0, 1]],
      ["hTMLPageURL", ["SOAP::SOAPString", XSD::QName.new(NsApi, "HTMLPageURL")], [0, 1]],
      ["zipFileURL", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ZipFileURL")], [0, 1]],
      ["screenshotURL", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ScreenshotURL")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::TemplateUpdateResponse,
    :schema_name => XSD::QName.new(NsApi, "Template.UpdateResponse"),
    :schema_element => [
      ["template_UpdateResult", ["Campaigning::Result", XSD::QName.new(NsApi, "Template.UpdateResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::TemplateDelete,
    :schema_name => XSD::QName.new(NsApi, "Template.Delete"),
    :schema_element => [
      ["apiKey", ["SOAP::SOAPString", XSD::QName.new(NsApi, "ApiKey")], [0, 1]],
      ["templateID", ["SOAP::SOAPString", XSD::QName.new(NsApi, "TemplateID")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::TemplateDeleteResponse,
    :schema_name => XSD::QName.new(NsApi, "Template.DeleteResponse"),
    :schema_element => [
      ["template_DeleteResult", ["Campaigning::Result", XSD::QName.new(NsApi, "Template.DeleteResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaigning::Result,
    :schema_name => XSD::QName.new(NsApi, "Result"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsApi, "Code")]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsApi, "Message")], [0, 1]]
    ]
  )

end

end
