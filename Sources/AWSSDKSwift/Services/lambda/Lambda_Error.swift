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



/// Error enum for Lambda
public enum LambdaError: Error {
    case serviceException(message: String?)
    case resourceNotFoundException(message: String?)
    case resourceConflictException(message: String?)
    case invalidParameterValueException(message: String?)
    case policyLengthExceededException(message: String?)
    case tooManyRequestsException(message: String?)
    case invalidRequestContentException(message: String?)
    case requestTooLargeException(message: String?)
    case unsupportedMediaTypeException(message: String?)
    case eC2UnexpectedException(message: String?)
    case subnetIPAddressLimitReachedException(message: String?)
    case eNILimitReachedException(message: String?)
    case eC2ThrottledException(message: String?)
    case eC2AccessDeniedException(message: String?)
    case invalidSubnetIDException(message: String?)
    case invalidSecurityGroupIDException(message: String?)
    case invalidZipFileException(message: String?)
    case kMSDisabledException(message: String?)
    case kMSInvalidStateException(message: String?)
    case kMSAccessDeniedException(message: String?)
    case kMSNotFoundException(message: String?)
    case codeStorageExceededException(message: String?)
}

extension LambdaError {
    public init?(errorCode: String, message: String?){
        switch errorCode {
        case "ServiceException":
            self = .serviceException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ResourceConflictException":
            self = .resourceConflictException(message: message)
        case "InvalidParameterValueException":
            self = .invalidParameterValueException(message: message)
        case "PolicyLengthExceededException":
            self = .policyLengthExceededException(message: message)
        case "TooManyRequestsException":
            self = .tooManyRequestsException(message: message)
        case "InvalidRequestContentException":
            self = .invalidRequestContentException(message: message)
        case "RequestTooLargeException":
            self = .requestTooLargeException(message: message)
        case "UnsupportedMediaTypeException":
            self = .unsupportedMediaTypeException(message: message)
        case "EC2UnexpectedException":
            self = .eC2UnexpectedException(message: message)
        case "SubnetIPAddressLimitReachedException":
            self = .subnetIPAddressLimitReachedException(message: message)
        case "ENILimitReachedException":
            self = .eNILimitReachedException(message: message)
        case "EC2ThrottledException":
            self = .eC2ThrottledException(message: message)
        case "EC2AccessDeniedException":
            self = .eC2AccessDeniedException(message: message)
        case "InvalidSubnetIDException":
            self = .invalidSubnetIDException(message: message)
        case "InvalidSecurityGroupIDException":
            self = .invalidSecurityGroupIDException(message: message)
        case "InvalidZipFileException":
            self = .invalidZipFileException(message: message)
        case "KMSDisabledException":
            self = .kMSDisabledException(message: message)
        case "KMSInvalidStateException":
            self = .kMSInvalidStateException(message: message)
        case "KMSAccessDeniedException":
            self = .kMSAccessDeniedException(message: message)
        case "KMSNotFoundException":
            self = .kMSNotFoundException(message: message)
        case "CodeStorageExceededException":
            self = .codeStorageExceededException(message: message)
        default:
            return nil
        }
    }
}