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



/// Error enum for Lightsail
public enum LightsailError: Error {
    case serviceException(message: String?)
    case invalidInputException(message: String?)
    case notFoundException(message: String?)
    case operationFailureException(message: String?)
    case accessDeniedException(message: String?)
    case accountSetupInProgressException(message: String?)
    case unauthenticatedException(message: String?)
}

extension LightsailError {
    public init?(errorCode: String, message: String?){
        switch errorCode {
        case "ServiceException":
            self = .serviceException(message: message)
        case "InvalidInputException":
            self = .invalidInputException(message: message)
        case "NotFoundException":
            self = .notFoundException(message: message)
        case "OperationFailureException":
            self = .operationFailureException(message: message)
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "AccountSetupInProgressException":
            self = .accountSetupInProgressException(message: message)
        case "UnauthenticatedException":
            self = .unauthenticatedException(message: message)
        default:
            return nil
        }
    }
}