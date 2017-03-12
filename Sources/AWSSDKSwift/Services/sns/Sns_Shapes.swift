// THIS FILE IS AUTOMATICALLY GENERATED. DO NOT EDIT.
/**
The MIT License (MIT)

Copyright (c) 2017 Yuki Takei(noppoMan)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

*/

import Foundation
import Core

extension Sns {

    public struct SetPlatformApplicationAttributesInput: Serializable, Initializable {
        /// PlatformApplicationArn for SetPlatformApplicationAttributes action.
        var platformApplicationArn: String = ""
        /// A map of the platform application attributes. Attributes in this map include the following:    PlatformCredential -- The credential received from the notification service. For APNS/APNS_SANDBOX, PlatformCredential is private key. For GCM, PlatformCredential is "API key". For ADM, PlatformCredential is "client secret".    PlatformPrincipal -- The principal received from the notification service. For APNS/APNS_SANDBOX, PlatformPrincipal is SSL certificate. For GCM, PlatformPrincipal is not applicable. For ADM, PlatformPrincipal is "client id".    EventEndpointCreated -- Topic ARN to which EndpointCreated event notifications should be sent.    EventEndpointDeleted -- Topic ARN to which EndpointDeleted event notifications should be sent.    EventEndpointUpdated -- Topic ARN to which EndpointUpdate event notifications should be sent.    EventDeliveryFailure -- Topic ARN to which DeliveryFailure event notifications should be sent upon Direct Publish delivery failure (permanent) to one of the application's endpoints.    SuccessFeedbackRoleArn -- IAM role ARN used to give Amazon SNS write access to use CloudWatch Logs on your behalf.    FailureFeedbackRoleArn -- IAM role ARN used to give Amazon SNS write access to use CloudWatch Logs on your behalf.    SuccessFeedbackSampleRate -- Sample rate percentage (0-100) of successfully delivered messages.  
        var attributes: [String: String] = [:]

        public init() {}

        public init(platformApplicationArn: String, attributes: [String: String]) {
            self.platformApplicationArn = platformApplicationArn
            self.attributes = attributes
        }

    }

    public struct RemovePermissionInput: Serializable, Initializable {
        /// The ARN of the topic whose access control policy you wish to modify.
        var topicArn: String = ""
        /// The unique label of the statement you want to remove.
        var label: String = ""

        public init() {}

        public init(topicArn: String, label: String) {
            self.topicArn = topicArn
            self.label = label
        }

    }

    public struct ListSubscriptionsByTopicInput: Serializable, Initializable {
        /// The ARN of the topic for which you wish to find subscriptions.
        var topicArn: String = ""
        /// Token returned by the previous ListSubscriptionsByTopic request.
        var nextToken: String? = nil

        public init() {}

        public init(topicArn: String, nextToken: String? = nil) {
            self.topicArn = topicArn
            self.nextToken = nextToken
        }

    }

    public struct ListPhoneNumbersOptedOutInput: Serializable, Initializable {
        /// A NextToken string is used when you call the ListPhoneNumbersOptedOut action to retrieve additional records that are available after the first page of results.
        var nextToken: String? = nil

        public init() {}

        public init(nextToken: String? = nil) {
            self.nextToken = nextToken
        }

    }

    public struct PublishResponse: Serializable, Initializable {
        /// Unique identifier assigned to the published message. Length Constraint: Maximum 100 characters
        var messageId: String? = nil

        public init() {}

        public init(messageId: String? = nil) {
            self.messageId = messageId
        }

    }

    public struct ListEndpointsByPlatformApplicationInput: Serializable, Initializable {
        /// NextToken string is used when calling ListEndpointsByPlatformApplication action to retrieve additional records that are available after the first page results.
        var nextToken: String? = nil
        /// PlatformApplicationArn for ListEndpointsByPlatformApplicationInput action.
        var platformApplicationArn: String = ""

        public init() {}

        public init(nextToken: String? = nil, platformApplicationArn: String) {
            self.nextToken = nextToken
            self.platformApplicationArn = platformApplicationArn
        }

    }

    public struct OptInPhoneNumberInput: Serializable, Initializable {
        /// The phone number to opt in.
        var phoneNumber: String = ""

        public init() {}

        public init(phoneNumber: String) {
            self.phoneNumber = phoneNumber
        }

    }

    public struct Subscription: Serializable, Initializable {
        /// The ARN of the subscription's topic.
        var topicArn: String? = nil
        /// The subscription's owner.
        var owner: String? = nil
        /// The subscription's ARN.
        var subscriptionArn: String? = nil
        /// The subscription's protocol.
        var `protocol`: String? = nil
        /// The subscription's endpoint (format depends on the protocol).
        var endpoint: String? = nil

        public init() {}

        public init(topicArn: String? = nil, owner: String? = nil, subscriptionArn: String? = nil, protocol: String? = nil, endpoint: String? = nil) {
            self.topicArn = topicArn
            self.owner = owner
            self.subscriptionArn = subscriptionArn
            self.`protocol` = `protocol`
            self.endpoint = endpoint
        }

    }

    public struct AddPermissionInput: Serializable, Initializable {
        /// The ARN of the topic whose access control policy you wish to modify.
        var topicArn: String = ""
        /// The AWS account IDs of the users (principals) who will be given access to the specified actions. The users must have AWS accounts, but do not need to be signed up for this service.
        var aWSAccountId: [String] = []
        /// The action you want to allow for the specified principal(s). Valid values: any Amazon SNS action name.
        var actionName: [String] = []
        /// A unique identifier for the new policy statement.
        var label: String = ""

        public init() {}

        public init(topicArn: String, aWSAccountId: [String], actionName: [String], label: String) {
            self.topicArn = topicArn
            self.aWSAccountId = aWSAccountId
            self.actionName = actionName
            self.label = label
        }

    }

    public struct ListTopicsInput: Serializable, Initializable {
        /// Token returned by the previous ListTopics request.
        var nextToken: String? = nil

        public init() {}

        public init(nextToken: String? = nil) {
            self.nextToken = nextToken
        }

    }

    public struct Endpoint: Serializable, Initializable {
        /// EndpointArn for mobile app and device.
        var endpointArn: String? = nil
        /// Attributes for endpoint.
        var attributes: [String: String]? = nil

        public init() {}

        public init(endpointArn: String? = nil, attributes: [String: String]? = nil) {
            self.endpointArn = endpointArn
            self.attributes = attributes
        }

    }

    public struct UnsubscribeInput: Serializable, Initializable {
        /// The ARN of the subscription to be deleted.
        var subscriptionArn: String = ""

        public init() {}

        public init(subscriptionArn: String) {
            self.subscriptionArn = subscriptionArn
        }

    }

    public struct SetEndpointAttributesInput: Serializable, Initializable {
        /// EndpointArn used for SetEndpointAttributes action.
        var endpointArn: String = ""
        /// A map of the endpoint attributes. Attributes in this map include the following:    CustomUserData -- arbitrary user data to associate with the endpoint. Amazon SNS does not use this data. The data must be in UTF-8 format and less than 2KB.    Enabled -- flag that enables/disables delivery to the endpoint. Amazon SNS will set this to false when a notification service indicates to Amazon SNS that the endpoint is invalid. Users can set it back to true, typically after updating Token.    Token -- device token, also referred to as a registration id, for an app and mobile device. This is returned from the notification service when an app and mobile device are registered with the notification service.  
        var attributes: [String: String] = [:]

        public init() {}

        public init(endpointArn: String, attributes: [String: String]) {
            self.endpointArn = endpointArn
            self.attributes = attributes
        }

    }

    public struct PlatformApplication: Serializable, Initializable {
        /// PlatformApplicationArn for platform application object.
        var platformApplicationArn: String? = nil
        /// Attributes for platform application object.
        var attributes: [String: String]? = nil

        public init() {}

        public init(platformApplicationArn: String? = nil, attributes: [String: String]? = nil) {
            self.platformApplicationArn = platformApplicationArn
            self.attributes = attributes
        }

    }

    public struct GetSubscriptionAttributesInput: Serializable, Initializable {
        /// The ARN of the subscription whose properties you want to get.
        var subscriptionArn: String = ""

        public init() {}

        public init(subscriptionArn: String) {
            self.subscriptionArn = subscriptionArn
        }

    }

    public struct SetSubscriptionAttributesInput: Serializable, Initializable {
        /// The name of the attribute you want to set. Only a subset of the subscriptions attributes are mutable. Valid values: DeliveryPolicy | RawMessageDelivery 
        var attributeName: String = ""
        /// The new value for the attribute in JSON format.
        var attributeValue: String? = nil
        /// The ARN of the subscription to modify.
        var subscriptionArn: String = ""

        public init() {}

        public init(attributeName: String, attributeValue: String? = nil, subscriptionArn: String) {
            self.attributeName = attributeName
            self.attributeValue = attributeValue
            self.subscriptionArn = subscriptionArn
        }

    }

    public struct GetSMSAttributesResponse: Serializable, Initializable {
        /// The SMS attribute names and their values.
        var attributes: [String: String]? = nil

        public init() {}

        public init(attributes: [String: String]? = nil) {
            self.attributes = attributes
        }

    }

    public struct CreatePlatformEndpointInput: Serializable, Initializable {
        /// Arbitrary user data to associate with the endpoint. Amazon SNS does not use this data. The data must be in UTF-8 format and less than 2KB.
        var customUserData: String? = nil
        /// For a list of attributes, see SetEndpointAttributes.
        var attributes: [String: String]? = nil
        /// Unique identifier created by the notification service for an app on a device. The specific name for Token will vary, depending on which notification service is being used. For example, when using APNS as the notification service, you need the device token. Alternatively, when using GCM or ADM, the device token equivalent is called the registration ID.
        var token: String = ""
        /// PlatformApplicationArn returned from CreatePlatformApplication is used to create a an endpoint.
        var platformApplicationArn: String = ""

        public init() {}

        public init(customUserData: String? = nil, attributes: [String: String]? = nil, token: String, platformApplicationArn: String) {
            self.customUserData = customUserData
            self.attributes = attributes
            self.token = token
            self.platformApplicationArn = platformApplicationArn
        }

    }

    public struct GetEndpointAttributesInput: Serializable, Initializable {
        /// EndpointArn for GetEndpointAttributes input.
        var endpointArn: String = ""

        public init() {}

        public init(endpointArn: String) {
            self.endpointArn = endpointArn
        }

    }

    public struct ListTopicsResponse: Serializable, Initializable {
        /// A list of topic ARNs.
        var topics: [Topic]? = nil
        /// Token to pass along to the next ListTopics request. This element is returned if there are additional topics to retrieve.
        var nextToken: String? = nil

        public init() {}

        public init(topics: [Topic]? = nil, nextToken: String? = nil) {
            self.topics = topics
            self.nextToken = nextToken
        }

    }

    public struct GetPlatformApplicationAttributesInput: Serializable, Initializable {
        /// PlatformApplicationArn for GetPlatformApplicationAttributesInput.
        var platformApplicationArn: String = ""

        public init() {}

        public init(platformApplicationArn: String) {
            self.platformApplicationArn = platformApplicationArn
        }

    }

    public struct GetPlatformApplicationAttributesResponse: Serializable, Initializable {
        /// Attributes include the following:    EventEndpointCreated -- Topic ARN to which EndpointCreated event notifications should be sent.    EventEndpointDeleted -- Topic ARN to which EndpointDeleted event notifications should be sent.    EventEndpointUpdated -- Topic ARN to which EndpointUpdate event notifications should be sent.    EventDeliveryFailure -- Topic ARN to which DeliveryFailure event notifications should be sent upon Direct Publish delivery failure (permanent) to one of the application's endpoints.  
        var attributes: [String: String]? = nil

        public init() {}

        public init(attributes: [String: String]? = nil) {
            self.attributes = attributes
        }

    }

    public struct GetTopicAttributesInput: Serializable, Initializable {
        /// The ARN of the topic whose properties you want to get.
        var topicArn: String = ""

        public init() {}

        public init(topicArn: String) {
            self.topicArn = topicArn
        }

    }

    public struct CreatePlatformApplicationInput: Serializable, Initializable {
        /// Application names must be made up of only uppercase and lowercase ASCII letters, numbers, underscores, hyphens, and periods, and must be between 1 and 256 characters long.
        var name: String = ""
        /// For a list of attributes, see SetPlatformApplicationAttributes 
        var attributes: [String: String] = [:]
        /// The following platforms are supported: ADM (Amazon Device Messaging), APNS (Apple Push Notification Service), APNS_SANDBOX, and GCM (Google Cloud Messaging).
        var platform: String = ""

        public init() {}

        public init(name: String, attributes: [String: String], platform: String) {
            self.name = name
            self.attributes = attributes
            self.platform = platform
        }

    }

    public struct CreatePlatformApplicationResponse: Serializable, Initializable {
        /// PlatformApplicationArn is returned.
        var platformApplicationArn: String? = nil

        public init() {}

        public init(platformApplicationArn: String? = nil) {
            self.platformApplicationArn = platformApplicationArn
        }

    }

    public struct DeleteTopicInput: Serializable, Initializable {
        /// The ARN of the topic you want to delete.
        var topicArn: String = ""

        public init() {}

        public init(topicArn: String) {
            self.topicArn = topicArn
        }

    }

    public struct ListEndpointsByPlatformApplicationResponse: Serializable, Initializable {
        /// NextToken string is returned when calling ListEndpointsByPlatformApplication action if additional records are available after the first page results.
        var nextToken: String? = nil
        /// Endpoints returned for ListEndpointsByPlatformApplication action.
        var endpoints: [Endpoint]? = nil

        public init() {}

        public init(nextToken: String? = nil, endpoints: [Endpoint]? = nil) {
            self.nextToken = nextToken
            self.endpoints = endpoints
        }

    }

    public struct ListPhoneNumbersOptedOutResponse: Serializable, Initializable {
        /// A list of phone numbers that are opted out of receiving SMS messages. The list is paginated, and each page can contain up to 100 phone numbers.
        var phoneNumbers: [String]? = nil
        /// A NextToken string is returned when you call the ListPhoneNumbersOptedOut action if additional records are available after the first page of results.
        var nextToken: String? = nil

        public init() {}

        public init(phoneNumbers: [String]? = nil, nextToken: String? = nil) {
            self.phoneNumbers = phoneNumbers
            self.nextToken = nextToken
        }

    }

    public struct CheckIfPhoneNumberIsOptedOutResponse: Serializable, Initializable {
        /// Indicates whether the phone number is opted out:    true – The phone number is opted out, meaning you cannot publish SMS messages to it.    false – The phone number is opted in, meaning you can publish SMS messages to it.  
        var isOptedOut: Bool? = nil

        public init() {}

        public init(isOptedOut: Bool? = nil) {
            self.isOptedOut = isOptedOut
        }

    }

    public struct ConfirmSubscriptionResponse: Serializable, Initializable {
        /// The ARN of the created subscription.
        var subscriptionArn: String? = nil

        public init() {}

        public init(subscriptionArn: String? = nil) {
            self.subscriptionArn = subscriptionArn
        }

    }

    public struct SubscribeResponse: Serializable, Initializable {
        /// The ARN of the subscription, if the service was able to create a subscription immediately (without requiring endpoint owner confirmation).
        var subscriptionArn: String? = nil

        public init() {}

        public init(subscriptionArn: String? = nil) {
            self.subscriptionArn = subscriptionArn
        }

    }

    public struct ListSubscriptionsByTopicResponse: Serializable, Initializable {
        /// Token to pass along to the next ListSubscriptionsByTopic request. This element is returned if there are more subscriptions to retrieve.
        var nextToken: String? = nil
        /// A list of subscriptions.
        var subscriptions: [Subscription]? = nil

        public init() {}

        public init(nextToken: String? = nil, subscriptions: [Subscription]? = nil) {
            self.nextToken = nextToken
            self.subscriptions = subscriptions
        }

    }

    public struct ListSubscriptionsResponse: Serializable, Initializable {
        /// Token to pass along to the next ListSubscriptions request. This element is returned if there are more subscriptions to retrieve.
        var nextToken: String? = nil
        /// A list of subscriptions.
        var subscriptions: [Subscription]? = nil

        public init() {}

        public init(nextToken: String? = nil, subscriptions: [Subscription]? = nil) {
            self.nextToken = nextToken
            self.subscriptions = subscriptions
        }

    }

    public struct MessageAttributeValue: Serializable, Initializable {
        /// Amazon SNS supports the following logical data types: String, Number, and Binary. For more information, see Message Attribute Data Types.
        var dataType: String = ""
        /// Binary type attributes can store any binary data, for example, compressed data, encrypted data, or images.
        var binaryValue: Data? = nil
        /// Strings are Unicode with UTF8 binary encoding. For a list of code values, see http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters.
        var stringValue: String? = nil

        public init() {}

        public init(dataType: String, binaryValue: Data? = nil, stringValue: String? = nil) {
            self.dataType = dataType
            self.binaryValue = binaryValue
            self.stringValue = stringValue
        }

    }

    public struct ListPlatformApplicationsResponse: Serializable, Initializable {
        /// NextToken string is returned when calling ListPlatformApplications action if additional records are available after the first page results.
        var nextToken: String? = nil
        /// Platform applications returned when calling ListPlatformApplications action.
        var platformApplications: [PlatformApplication]? = nil

        public init() {}

        public init(nextToken: String? = nil, platformApplications: [PlatformApplication]? = nil) {
            self.nextToken = nextToken
            self.platformApplications = platformApplications
        }

    }

    public struct ConfirmSubscriptionInput: Serializable, Initializable {
        /// Disallows unauthenticated unsubscribes of the subscription. If the value of this parameter is true and the request has an AWS signature, then only the topic owner and the subscription owner can unsubscribe the endpoint. The unsubscribe action requires AWS authentication. 
        var authenticateOnUnsubscribe: String? = nil
        /// The ARN of the topic for which you wish to confirm a subscription.
        var topicArn: String = ""
        /// Short-lived token sent to an endpoint during the Subscribe action.
        var token: String = ""

        public init() {}

        public init(authenticateOnUnsubscribe: String? = nil, topicArn: String, token: String) {
            self.authenticateOnUnsubscribe = authenticateOnUnsubscribe
            self.topicArn = topicArn
            self.token = token
        }

    }

    public struct ListSubscriptionsInput: Serializable, Initializable {
        /// Token returned by the previous ListSubscriptions request.
        var nextToken: String? = nil

        public init() {}

        public init(nextToken: String? = nil) {
            self.nextToken = nextToken
        }

    }

    public struct Topic: Serializable, Initializable {
        /// The topic's ARN.
        var topicArn: String? = nil

        public init() {}

        public init(topicArn: String? = nil) {
            self.topicArn = topicArn
        }

    }

    public struct OptInPhoneNumberResponse: Serializable, Initializable {

        public init() {}

    }

    public struct SetSMSAttributesInput: Serializable, Initializable {
        /// The default settings for sending SMS messages from your account. You can set values for the following attribute names:  MonthlySpendLimit – The maximum amount in USD that you are willing to spend each month to send SMS messages. When Amazon SNS determines that sending an SMS message would incur a cost that exceeds this limit, it stops sending SMS messages within minutes.  Amazon SNS stops sending SMS messages within minutes of the limit being crossed. During that interval, if you continue to send SMS messages, you will incur costs that exceed your limit.  By default, the spend limit is set to the maximum allowed by Amazon SNS. If you want to exceed the maximum, contact AWS Support or your AWS sales representative for a service limit increase.  DeliveryStatusIAMRole – The ARN of the IAM role that allows Amazon SNS to write logs about SMS deliveries in CloudWatch Logs. For each SMS message that you send, Amazon SNS writes a log that includes the message price, the success or failure status, the reason for failure (if the message failed), the message dwell time, and other information.  DeliveryStatusSuccessSamplingRate – The percentage of successful SMS deliveries for which Amazon SNS will write logs in CloudWatch Logs. The value can be an integer from 0 - 100. For example, to write logs only for failed deliveries, set this value to 0. To write logs for 10% of your successful deliveries, set it to 10.  DefaultSenderID – A string, such as your business brand, that is displayed as the sender on the receiving device. Support for sender IDs varies by country. The sender ID can be 1 - 11 alphanumeric characters, and it must contain at least one letter.  DefaultSMSType – The type of SMS message that you will send by default. You can assign the following values:    Promotional – (Default) Noncritical messages, such as marketing messages. Amazon SNS optimizes the message delivery to incur the lowest cost.    Transactional – Critical messages that support customer transactions, such as one-time passcodes for multi-factor authentication. Amazon SNS optimizes the message delivery to achieve the highest reliability.    UsageReportS3Bucket – The name of the Amazon S3 bucket to receive daily SMS usage reports from Amazon SNS. Each day, Amazon SNS will deliver a usage report as a CSV file to the bucket. The report includes the following information for each SMS message that was successfully delivered by your account:   Time that the message was published (in UTC)   Message ID   Destination phone number   Message type   Delivery status   Message price (in USD)   Part number (a message is split into multiple parts if it is too long for a single message)   Total number of parts   To receive the report, the bucket must have a policy that allows the Amazon SNS service principle to perform the s3:PutObject and s3:GetBucketLocation actions. For an example bucket policy and usage report, see Monitoring SMS Activity in the Amazon SNS Developer Guide.
        var attributes: [String: String] = [:]

        public init() {}

        public init(attributes: [String: String]) {
            self.attributes = attributes
        }

    }

    public struct SubscribeInput: Serializable, Initializable {
        /// The endpoint that you want to receive notifications. Endpoints vary by protocol:   For the http protocol, the endpoint is an URL beginning with "http://"   For the https protocol, the endpoint is a URL beginning with "https://"   For the email protocol, the endpoint is an email address   For the email-json protocol, the endpoint is an email address   For the sms protocol, the endpoint is a phone number of an SMS-enabled device   For the sqs protocol, the endpoint is the ARN of an Amazon SQS queue   For the application protocol, the endpoint is the EndpointArn of a mobile app and device.   For the lambda protocol, the endpoint is the ARN of an AWS Lambda function.  
        var endpoint: String? = nil
        /// The ARN of the topic you want to subscribe to.
        var topicArn: String = ""
        /// The protocol you want to use. Supported protocols include:    http -- delivery of JSON-encoded message via HTTP POST    https -- delivery of JSON-encoded message via HTTPS POST    email -- delivery of message via SMTP    email-json -- delivery of JSON-encoded message via SMTP    sms -- delivery of message via SMS    sqs -- delivery of JSON-encoded message to an Amazon SQS queue    application -- delivery of JSON-encoded message to an EndpointArn for a mobile app and device.    lambda -- delivery of JSON-encoded message to an AWS Lambda function.  
        var `protocol`: String = ""

        public init() {}

        public init(endpoint: String? = nil, topicArn: String, protocol: String) {
            self.endpoint = endpoint
            self.topicArn = topicArn
            self.`protocol` = `protocol`
        }

    }

    public struct GetTopicAttributesResponse: Serializable, Initializable {
        /// A map of the topic's attributes. Attributes in this map include the following:    TopicArn -- the topic's ARN    Owner -- the AWS account ID of the topic's owner    Policy -- the JSON serialization of the topic's access control policy    DisplayName -- the human-readable name used in the "From" field for notifications to email and email-json endpoints    SubscriptionsPending -- the number of subscriptions pending confirmation on this topic    SubscriptionsConfirmed -- the number of confirmed subscriptions on this topic    SubscriptionsDeleted -- the number of deleted subscriptions on this topic    DeliveryPolicy -- the JSON serialization of the topic's delivery policy    EffectiveDeliveryPolicy -- the JSON serialization of the effective delivery policy that takes into account system defaults  
        var attributes: [String: String]? = nil

        public init() {}

        public init(attributes: [String: String]? = nil) {
            self.attributes = attributes
        }

    }

    public struct CreateTopicResponse: Serializable, Initializable {
        /// The Amazon Resource Name (ARN) assigned to the created topic.
        var topicArn: String? = nil

        public init() {}

        public init(topicArn: String? = nil) {
            self.topicArn = topicArn
        }

    }

    public struct CreateEndpointResponse: Serializable, Initializable {
        /// EndpointArn returned from CreateEndpoint action.
        var endpointArn: String? = nil

        public init() {}

        public init(endpointArn: String? = nil) {
            self.endpointArn = endpointArn
        }

    }

    public struct PublishInput: Serializable, Initializable {
        /// Message attributes for Publish action.
        var messageAttributes: [String: MessageAttributeValue]? = nil
        /// The phone number to which you want to deliver an SMS message. Use E.164 format. If you don't specify a value for the PhoneNumber parameter, you must specify a value for the TargetArn or TopicArn parameters.
        var phoneNumber: String? = nil
        /// The message you want to send to the topic. If you want to send the same message to all transport protocols, include the text of the message as a String value. If you want to send different messages for each transport protocol, set the value of the MessageStructure parameter to json and use a JSON object for the Message parameter.  Constraints: Messages must be UTF-8 encoded strings at most 256 KB in size (262144 bytes, not 262144 characters). JSON-specific constraints:   Keys in the JSON object that correspond to supported transport protocols must have simple JSON string values.   The values will be parsed (unescaped) before they are used in outgoing messages.   Outbound notifications are JSON encoded (meaning that the characters will be reescaped for sending).   Values have a minimum length of 0 (the empty string, "", is allowed).   Values have a maximum length bounded by the overall message size (so, including multiple protocols may limit message sizes).   Non-string values will cause the key to be ignored.   Keys that do not correspond to supported transport protocols are ignored.   Duplicate keys are not allowed.   Failure to parse or validate any key or value in the message will cause the Publish call to return an error (no partial delivery).  
        var message: String = ""
        /// Either TopicArn or EndpointArn, but not both. If you don't specify a value for the TargetArn parameter, you must specify a value for the PhoneNumber or TopicArn parameters.
        var targetArn: String? = nil
        /// Set MessageStructure to json if you want to send a different message for each protocol. For example, using one publish action, you can send a short message to your SMS subscribers and a longer message to your email subscribers. If you set MessageStructure to json, the value of the Message parameter must:    be a syntactically valid JSON object; and   contain at least a top-level JSON key of "default" with a value that is a string.   You can define other top-level keys that define the message you want to send to a specific transport protocol (e.g., "http"). For information about sending different messages for each protocol using the AWS Management Console, go to Create Different Messages for Each Protocol in the Amazon Simple Notification Service Getting Started Guide.  Valid value: json 
        var messageStructure: String? = nil
        /// The topic you want to publish to. If you don't specify a value for the TopicArn parameter, you must specify a value for the PhoneNumber or TargetArn parameters.
        var topicArn: String? = nil
        /// Optional parameter to be used as the "Subject" line when the message is delivered to email endpoints. This field will also be included, if present, in the standard JSON messages delivered to other endpoints. Constraints: Subjects must be ASCII text that begins with a letter, number, or punctuation mark; must not include line breaks or control characters; and must be less than 100 characters long.
        var subject: String? = nil

        public init() {}

        public init(messageAttributes: [String: MessageAttributeValue]? = nil, phoneNumber: String? = nil, message: String, targetArn: String? = nil, messageStructure: String? = nil, topicArn: String? = nil, subject: String? = nil) {
            self.messageAttributes = messageAttributes
            self.phoneNumber = phoneNumber
            self.message = message
            self.targetArn = targetArn
            self.messageStructure = messageStructure
            self.topicArn = topicArn
            self.subject = subject
        }

    }

    public struct CheckIfPhoneNumberIsOptedOutInput: Serializable, Initializable {
        /// The phone number for which you want to check the opt out status.
        var phoneNumber: String = ""

        public init() {}

        public init(phoneNumber: String) {
            self.phoneNumber = phoneNumber
        }

    }

    public struct GetEndpointAttributesResponse: Serializable, Initializable {
        /// Attributes include the following:    CustomUserData -- arbitrary user data to associate with the endpoint. Amazon SNS does not use this data. The data must be in UTF-8 format and less than 2KB.    Enabled -- flag that enables/disables delivery to the endpoint. Amazon SNS will set this to false when a notification service indicates to Amazon SNS that the endpoint is invalid. Users can set it back to true, typically after updating Token.    Token -- device token, also referred to as a registration id, for an app and mobile device. This is returned from the notification service when an app and mobile device are registered with the notification service.  
        var attributes: [String: String]? = nil

        public init() {}

        public init(attributes: [String: String]? = nil) {
            self.attributes = attributes
        }

    }

    public struct DeleteEndpointInput: Serializable, Initializable {
        /// EndpointArn of endpoint to delete.
        var endpointArn: String = ""

        public init() {}

        public init(endpointArn: String) {
            self.endpointArn = endpointArn
        }

    }

    public struct SetSMSAttributesResponse: Serializable, Initializable {

        public init() {}

    }

    public struct SetTopicAttributesInput: Serializable, Initializable {
        /// The name of the attribute you want to set. Only a subset of the topic's attributes are mutable. Valid values: Policy | DisplayName | DeliveryPolicy 
        var attributeName: String = ""
        /// The ARN of the topic to modify.
        var topicArn: String = ""
        /// The new value for the attribute.
        var attributeValue: String? = nil

        public init() {}

        public init(attributeName: String, topicArn: String, attributeValue: String? = nil) {
            self.attributeName = attributeName
            self.topicArn = topicArn
            self.attributeValue = attributeValue
        }

    }

    public struct GetSMSAttributesInput: Serializable, Initializable {
        /// A list of the individual attribute names, such as MonthlySpendLimit, for which you want values. For all attribute names, see SetSMSAttributes. If you don't use this parameter, Amazon SNS returns all SMS attributes.
        var attributes: [String]? = nil

        public init() {}

        public init(attributes: [String]? = nil) {
            self.attributes = attributes
        }

    }

    public struct CreateTopicInput: Serializable, Initializable {
        /// The name of the topic you want to create. Constraints: Topic names must be made up of only uppercase and lowercase ASCII letters, numbers, underscores, and hyphens, and must be between 1 and 256 characters long.
        var name: String = ""

        public init() {}

        public init(name: String) {
            self.name = name
        }

    }

    public struct ListPlatformApplicationsInput: Serializable, Initializable {
        /// NextToken string is used when calling ListPlatformApplications action to retrieve additional records that are available after the first page results.
        var nextToken: String? = nil

        public init() {}

        public init(nextToken: String? = nil) {
            self.nextToken = nextToken
        }

    }

    public struct GetSubscriptionAttributesResponse: Serializable, Initializable {
        /// A map of the subscription's attributes. Attributes in this map include the following:    SubscriptionArn -- the subscription's ARN    TopicArn -- the topic ARN that the subscription is associated with    Owner -- the AWS account ID of the subscription's owner    ConfirmationWasAuthenticated -- true if the subscription confirmation request was authenticated    DeliveryPolicy -- the JSON serialization of the subscription's delivery policy    EffectiveDeliveryPolicy -- the JSON serialization of the effective delivery policy that takes into account the topic delivery policy and account system defaults  
        var attributes: [String: String]? = nil

        public init() {}

        public init(attributes: [String: String]? = nil) {
            self.attributes = attributes
        }

    }

    public struct DeletePlatformApplicationInput: Serializable, Initializable {
        /// PlatformApplicationArn of platform application object to delete.
        var platformApplicationArn: String = ""

        public init() {}

        public init(platformApplicationArn: String) {
            self.platformApplicationArn = platformApplicationArn
        }

    }

}