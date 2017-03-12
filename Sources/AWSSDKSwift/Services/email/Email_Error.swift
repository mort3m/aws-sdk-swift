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



/// Error enum for Email
public enum EmailError: Error {
    case messageRejected(message: String?)
    case ruleSetDoesNotExistException(message: String?)
    case ruleDoesNotExistException(message: String?)
    case mailFromDomainNotVerifiedException(message: String?)
    case configurationSetDoesNotExistException(message: String?)
    case invalidSnsTopicException(message: String?)
    case invalidS3ConfigurationException(message: String?)
    case invalidLambdaFunctionException(message: String?)
    case alreadyExistsException(message: String?)
    case limitExceededException(message: String?)
    case invalidPolicyException(message: String?)
    case configurationSetAlreadyExistsException(message: String?)
    case invalidConfigurationSetException(message: String?)
    case cannotDeleteException(message: String?)
    case eventDestinationDoesNotExistException(message: String?)
    case invalidCloudWatchDestinationException(message: String?)
    case invalidFirehoseDestinationException(message: String?)
    case eventDestinationAlreadyExistsException(message: String?)
}

extension EmailError {
    public init?(errorCode: String, message: String?){
        switch errorCode {
        case "MessageRejected":
            self = .messageRejected(message: message)
        case "RuleSetDoesNotExistException":
            self = .ruleSetDoesNotExistException(message: message)
        case "RuleDoesNotExistException":
            self = .ruleDoesNotExistException(message: message)
        case "MailFromDomainNotVerifiedException":
            self = .mailFromDomainNotVerifiedException(message: message)
        case "ConfigurationSetDoesNotExistException":
            self = .configurationSetDoesNotExistException(message: message)
        case "InvalidSnsTopicException":
            self = .invalidSnsTopicException(message: message)
        case "InvalidS3ConfigurationException":
            self = .invalidS3ConfigurationException(message: message)
        case "InvalidLambdaFunctionException":
            self = .invalidLambdaFunctionException(message: message)
        case "AlreadyExistsException":
            self = .alreadyExistsException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "InvalidPolicyException":
            self = .invalidPolicyException(message: message)
        case "ConfigurationSetAlreadyExistsException":
            self = .configurationSetAlreadyExistsException(message: message)
        case "InvalidConfigurationSetException":
            self = .invalidConfigurationSetException(message: message)
        case "CannotDeleteException":
            self = .cannotDeleteException(message: message)
        case "EventDestinationDoesNotExistException":
            self = .eventDestinationDoesNotExistException(message: message)
        case "InvalidCloudWatchDestinationException":
            self = .invalidCloudWatchDestinationException(message: message)
        case "InvalidFirehoseDestinationException":
            self = .invalidFirehoseDestinationException(message: message)
        case "EventDestinationAlreadyExistsException":
            self = .eventDestinationAlreadyExistsException(message: message)
        default:
            return nil
        }
    }
}