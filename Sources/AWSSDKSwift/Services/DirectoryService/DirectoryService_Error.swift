// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for DirectoryService
public enum DirectoryServiceErrorType: AWSErrorType {
    case accessDeniedException(message: String?)
    case authenticationFailedException(message: String?)
    case clientException(message: String?)
    case directoryAlreadySharedException(message: String?)
    case directoryLimitExceededException(message: String?)
    case directoryNotSharedException(message: String?)
    case directoryUnavailableException(message: String?)
    case domainControllerLimitExceededException(message: String?)
    case entityAlreadyExistsException(message: String?)
    case entityDoesNotExistException(message: String?)
    case insufficientPermissionsException(message: String?)
    case invalidNextTokenException(message: String?)
    case invalidParameterException(message: String?)
    case invalidPasswordException(message: String?)
    case invalidTargetException(message: String?)
    case ipRouteLimitExceededException(message: String?)
    case organizationsException(message: String?)
    case serviceException(message: String?)
    case shareLimitExceededException(message: String?)
    case snapshotLimitExceededException(message: String?)
    case tagLimitExceededException(message: String?)
    case unsupportedOperationException(message: String?)
    case userDoesNotExistException(message: String?)
}

extension DirectoryServiceErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "AuthenticationFailedException":
            self = .authenticationFailedException(message: message)
        case "ClientException":
            self = .clientException(message: message)
        case "DirectoryAlreadySharedException":
            self = .directoryAlreadySharedException(message: message)
        case "DirectoryLimitExceededException":
            self = .directoryLimitExceededException(message: message)
        case "DirectoryNotSharedException":
            self = .directoryNotSharedException(message: message)
        case "DirectoryUnavailableException":
            self = .directoryUnavailableException(message: message)
        case "DomainControllerLimitExceededException":
            self = .domainControllerLimitExceededException(message: message)
        case "EntityAlreadyExistsException":
            self = .entityAlreadyExistsException(message: message)
        case "EntityDoesNotExistException":
            self = .entityDoesNotExistException(message: message)
        case "InsufficientPermissionsException":
            self = .insufficientPermissionsException(message: message)
        case "InvalidNextTokenException":
            self = .invalidNextTokenException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "InvalidPasswordException":
            self = .invalidPasswordException(message: message)
        case "InvalidTargetException":
            self = .invalidTargetException(message: message)
        case "IpRouteLimitExceededException":
            self = .ipRouteLimitExceededException(message: message)
        case "OrganizationsException":
            self = .organizationsException(message: message)
        case "ServiceException":
            self = .serviceException(message: message)
        case "ShareLimitExceededException":
            self = .shareLimitExceededException(message: message)
        case "SnapshotLimitExceededException":
            self = .snapshotLimitExceededException(message: message)
        case "TagLimitExceededException":
            self = .tagLimitExceededException(message: message)
        case "UnsupportedOperationException":
            self = .unsupportedOperationException(message: message)
        case "UserDoesNotExistException":
            self = .userDoesNotExistException(message: message)
        default:
            return nil
        }
    }
}