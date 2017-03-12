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



/// Error enum for Sms
public enum SmsError: Error {
    case invalidParameterException(message: String?)
    case missingRequiredParameterException(message: String?)
    case unauthorizedOperationException(message: String?)
    case operationNotPermittedException(message: String?)
    case replicationRunLimitExceededException(message: String?)
    case serverCannotBeReplicatedException(message: String?)
    case replicationJobNotFoundException(message: String?)
    case internalError(message: String?)
    case replicationJobAlreadyExistsException(message: String?)
    case noConnectorsAvailableException(message: String?)
}

extension SmsError {
    public init?(errorCode: String, message: String?){
        switch errorCode {
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "MissingRequiredParameterException":
            self = .missingRequiredParameterException(message: message)
        case "UnauthorizedOperationException":
            self = .unauthorizedOperationException(message: message)
        case "OperationNotPermittedException":
            self = .operationNotPermittedException(message: message)
        case "ReplicationRunLimitExceededException":
            self = .replicationRunLimitExceededException(message: message)
        case "ServerCannotBeReplicatedException":
            self = .serverCannotBeReplicatedException(message: message)
        case "ReplicationJobNotFoundException":
            self = .replicationJobNotFoundException(message: message)
        case "InternalError":
            self = .internalError(message: message)
        case "ReplicationJobAlreadyExistsException":
            self = .replicationJobAlreadyExistsException(message: message)
        case "NoConnectorsAvailableException":
            self = .noConnectorsAvailableException(message: message)
        default:
            return nil
        }
    }
}