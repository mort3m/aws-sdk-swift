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

/**
AWS Security Token Service The AWS Security Token Service (STS) is a web service that enables you to request temporary, limited-privilege credentials for AWS Identity and Access Management (IAM) users or for users that you authenticate (federated users). This guide provides descriptions of the STS API. For more detailed information about using this service, go to Temporary Security Credentials.    As an alternative to using the API, you can use one of the AWS SDKs, which consist of libraries and sample code for various programming languages and platforms (Java, Ruby, .NET, iOS, Android, etc.). The SDKs provide a convenient way to create programmatic access to STS. For example, the SDKs take care of cryptographically signing requests, managing errors, and retrying requests automatically. For information about the AWS SDKs, including how to download and install them, see the Tools for Amazon Web Services page.   For information about setting up signatures and authorization through the API, go to Signing AWS API Requests in the AWS General Reference. For general information about the Query API, go to Making Query Requests in Using IAM. For information about using security tokens with other AWS products, go to AWS Services That Work with IAM in the IAM User Guide.  If you're new to AWS and need additional technical information about a specific AWS product, you can find the product's technical documentation at http://aws.amazon.com/documentation/.   Endpoints  The AWS Security Token Service (STS) has a default endpoint of https://sts.amazonaws.com that maps to the US East (N. Virginia) region. Additional regions are available and are activated by default. For more information, see Activating and Deactivating AWS STS in an AWS Region in the IAM User Guide. For information about STS endpoints, see Regions and Endpoints in the AWS General Reference.  Recording API requests  STS supports AWS CloudTrail, which is a service that records AWS calls for your AWS account and delivers log files to an Amazon S3 bucket. By using information collected by CloudTrail, you can determine what requests were successfully made to STS, who made the request, when it was made, and so on. To learn more about CloudTrail, including how to turn it on and find your log files, see the AWS CloudTrail User Guide.
*/
public struct Sts {

    let request: AWSRequest

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: Core.Region? = nil, endpoint: String? = nil) {
        self.request = AWSRequest(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "sts",
            endpoint: endpoint
        )
    }

    ///  Returns a set of temporary security credentials (consisting of an access key ID, a secret access key, and a security token) for a federated user. A typical use is in a proxy application that gets temporary security credentials on behalf of distributed applications inside a corporate network. Because you must call the GetFederationToken action using the long-term security credentials of an IAM user, this call is appropriate in contexts where those credentials can be safely stored, usually in a server-based application. For a comparison of GetFederationToken with the other APIs that produce temporary credentials, see Requesting Temporary Security Credentials and Comparing the AWS STS APIs in the IAM User Guide.  If you are creating a mobile-based or browser-based app that can authenticate users using a web identity provider like Login with Amazon, Facebook, Google, or an OpenID Connect-compatible identity provider, we recommend that you use Amazon Cognito or AssumeRoleWithWebIdentity. For more information, see Federation Through a Web-based Identity Provider.  The GetFederationToken action must be called by using the long-term AWS security credentials of an IAM user. You can also call GetFederationToken using the security credentials of an AWS root account, but we do not recommended it. Instead, we recommend that you create an IAM user for the purpose of the proxy application and then attach a policy to the IAM user that limits federated users to only the actions and resources that they need access to. For more information, see IAM Best Practices in the IAM User Guide.  The temporary security credentials that are obtained by using the long-term credentials of an IAM user are valid for the specified duration, from 900 seconds (15 minutes) up to a maximium of 129600 seconds (36 hours). The default is 43200 seconds (12 hours). Temporary credentials that are obtained by using AWS root account credentials have a maximum duration of 3600 seconds (1 hour). The temporary security credentials created by GetFederationToken can be used to make API calls to any AWS service with the following exceptions:   You cannot use these credentials to call any IAM APIs.   You cannot call any STS APIs except GetCallerIdentity.    Permissions  The permissions for the temporary security credentials returned by GetFederationToken are determined by a combination of the following:    The policy or policies that are attached to the IAM user whose credentials are used to call GetFederationToken.   The policy that is passed as a parameter in the call.   The passed policy is attached to the temporary security credentials that result from the GetFederationToken API call--that is, to the federated user. When the federated user makes an AWS request, AWS evaluates the policy attached to the federated user in combination with the policy or policies attached to the IAM user whose credentials were used to call GetFederationToken. AWS allows the federated user's request only when both the federated user  and  the IAM user are explicitly allowed to perform the requested action. The passed policy cannot grant more permissions than those that are defined in the IAM user policy. A typical use case is that the permissions of the IAM user whose credentials are used to call GetFederationToken are designed to allow access to all the actions and resources that any federated user will need. Then, for individual users, you pass a policy to the operation that scopes down the permissions to a level that's appropriate to that individual user, using a policy that allows only a subset of permissions that are granted to the IAM user.  If you do not pass a policy, the resulting temporary security credentials have no effective permissions. The only exception is when the temporary security credentials are used to access a resource that has a resource-based policy that specifically allows the federated user to access the resource. For more information about how permissions work, see Permissions for GetFederationToken. For information about using GetFederationToken to create temporary security credentials, see GetFederationToken—Federation Through a Custom Identity Broker. 
    public func getFederationToken(_ input: GetFederationTokenRequest) throws -> GetFederationTokenResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "GetFederationToken", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try StsResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns a set of temporary security credentials for users who have been authenticated in a mobile or web application with a web identity provider, such as Amazon Cognito, Login with Amazon, Facebook, Google, or any OpenID Connect-compatible identity provider.  For mobile applications, we recommend that you use Amazon Cognito. You can use Amazon Cognito with the AWS SDK for iOS and the AWS SDK for Android to uniquely identify a user and supply the user with a consistent identity throughout the lifetime of an application. To learn more about Amazon Cognito, see Amazon Cognito Overview in the AWS SDK for Android Developer Guide guide and Amazon Cognito Overview in the AWS SDK for iOS Developer Guide.  Calling AssumeRoleWithWebIdentity does not require the use of AWS security credentials. Therefore, you can distribute an application (for example, on mobile devices) that requests temporary security credentials without including long-term AWS credentials in the application, and without deploying server-based proxy services that use long-term AWS credentials. Instead, the identity of the caller is validated by using a token from the web identity provider. For a comparison of AssumeRoleWithWebIdentity with the other APIs that produce temporary credentials, see Requesting Temporary Security Credentials and Comparing the AWS STS APIs in the IAM User Guide. The temporary security credentials returned by this API consist of an access key ID, a secret access key, and a security token. Applications can use these temporary security credentials to sign calls to AWS service APIs. The credentials are valid for the duration that you specified when calling AssumeRoleWithWebIdentity, which can be from 900 seconds (15 minutes) to a maximum of 3600 seconds (1 hour). The default is 1 hour.  The temporary security credentials created by AssumeRoleWithWebIdentity can be used to make API calls to any AWS service with the following exception: you cannot call the STS service's GetFederationToken or GetSessionToken APIs. Optionally, you can pass an IAM access policy to this operation. If you choose not to pass a policy, the temporary security credentials that are returned by the operation have the permissions that are defined in the access policy of the role that is being assumed. If you pass a policy to this operation, the temporary security credentials that are returned by the operation have the permissions that are allowed by both the access policy of the role that is being assumed,  and  the policy that you pass. This gives you a way to further restrict the permissions for the resulting temporary security credentials. You cannot use the passed policy to grant permissions that are in excess of those allowed by the access policy of the role that is being assumed. For more information, see Permissions for AssumeRole, AssumeRoleWithSAML, and AssumeRoleWithWebIdentity in the IAM User Guide. Before your application can call AssumeRoleWithWebIdentity, you must have an identity token from a supported identity provider and create a role that the application can assume. The role that your application assumes must trust the identity provider that is associated with the identity token. In other words, the identity provider must be specified in the role's trust policy.   Calling AssumeRoleWithWebIdentity can result in an entry in your AWS CloudTrail logs. The entry includes the Subject of the provided Web Identity Token. We recommend that you avoid using any personally identifiable information (PII) in this field. For example, you could instead use a GUID or a pairwise identifier, as suggested in the OIDC specification.  For more information about how to use web identity federation and the AssumeRoleWithWebIdentity API, see the following resources:     Using Web Identity Federation APIs for Mobile Apps and Federation Through a Web-based Identity Provider.      Web Identity Federation Playground. This interactive website lets you walk through the process of authenticating via Login with Amazon, Facebook, or Google, getting temporary security credentials, and then using those credentials to make a request to AWS.     AWS SDK for iOS and AWS SDK for Android. These toolkits contain sample apps that show how to invoke the identity providers, and then how to use the information from these providers to get and use temporary security credentials.     Web Identity Federation with Mobile Applications. This article discusses web identity federation and shows an example of how to use web identity federation to get access to content in Amazon S3.   
    public func assumeRoleWithWebIdentity(_ input: AssumeRoleWithWebIdentityRequest) throws -> AssumeRoleWithWebIdentityResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "AssumeRoleWithWebIdentity", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try StsResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns a set of temporary credentials for an AWS account or IAM user. The credentials consist of an access key ID, a secret access key, and a security token. Typically, you use GetSessionToken if you want to use MFA to protect programmatic calls to specific AWS APIs like Amazon EC2 StopInstances. MFA-enabled IAM users would need to call GetSessionToken and submit an MFA code that is associated with their MFA device. Using the temporary security credentials that are returned from the call, IAM users can then make programmatic calls to APIs that require MFA authentication. If you do not supply a correct MFA code, then the API returns an access denied error. For a comparison of GetSessionToken with the other APIs that produce temporary credentials, see Requesting Temporary Security Credentials and Comparing the AWS STS APIs in the IAM User Guide. The GetSessionToken action must be called by using the long-term AWS security credentials of the AWS account or an IAM user. Credentials that are created by IAM users are valid for the duration that you specify, from 900 seconds (15 minutes) up to a maximum of 129600 seconds (36 hours), with a default of 43200 seconds (12 hours); credentials that are created by using account credentials can range from 900 seconds (15 minutes) up to a maximum of 3600 seconds (1 hour), with a default of 1 hour.  The temporary security credentials created by GetSessionToken can be used to make API calls to any AWS service with the following exceptions:   You cannot call any IAM APIs unless MFA authentication information is included in the request.   You cannot call any STS API except AssumeRole or GetCallerIdentity.    We recommend that you do not call GetSessionToken with root account credentials. Instead, follow our best practices by creating one or more IAM users, giving them the necessary permissions, and using IAM users for everyday interaction with AWS.   The permissions associated with the temporary security credentials returned by GetSessionToken are based on the permissions associated with account or IAM user whose credentials are used to call the action. If GetSessionToken is called using root account credentials, the temporary credentials have root account permissions. Similarly, if GetSessionToken is called using the credentials of an IAM user, the temporary credentials have the same permissions as the IAM user.  For more information about using GetSessionToken to create temporary credentials, go to Temporary Credentials for Users in Untrusted Environments in the IAM User Guide. 
    public func getSessionToken(_ input: GetSessionTokenRequest) throws -> GetSessionTokenResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "GetSessionToken", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try StsResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns a set of temporary security credentials for users who have been authenticated via a SAML authentication response. This operation provides a mechanism for tying an enterprise identity store or directory to role-based AWS access without user-specific credentials or configuration. For a comparison of AssumeRoleWithSAML with the other APIs that produce temporary credentials, see Requesting Temporary Security Credentials and Comparing the AWS STS APIs in the IAM User Guide. The temporary security credentials returned by this operation consist of an access key ID, a secret access key, and a security token. Applications can use these temporary security credentials to sign calls to AWS services. The temporary security credentials are valid for the duration that you specified when calling AssumeRole, or until the time specified in the SAML authentication response's SessionNotOnOrAfter value, whichever is shorter. The duration can be from 900 seconds (15 minutes) to a maximum of 3600 seconds (1 hour). The default is 1 hour. The temporary security credentials created by AssumeRoleWithSAML can be used to make API calls to any AWS service with the following exception: you cannot call the STS service's GetFederationToken or GetSessionToken APIs. Optionally, you can pass an IAM access policy to this operation. If you choose not to pass a policy, the temporary security credentials that are returned by the operation have the permissions that are defined in the access policy of the role that is being assumed. If you pass a policy to this operation, the temporary security credentials that are returned by the operation have the permissions that are allowed by the intersection of both the access policy of the role that is being assumed,  and  the policy that you pass. This means that both policies must grant the permission for the action to be allowed. This gives you a way to further restrict the permissions for the resulting temporary security credentials. You cannot use the passed policy to grant permissions that are in excess of those allowed by the access policy of the role that is being assumed. For more information, see Permissions for AssumeRole, AssumeRoleWithSAML, and AssumeRoleWithWebIdentity in the IAM User Guide. Before your application can call AssumeRoleWithSAML, you must configure your SAML identity provider (IdP) to issue the claims required by AWS. Additionally, you must use AWS Identity and Access Management (IAM) to create a SAML provider entity in your AWS account that represents your identity provider, and create an IAM role that specifies this SAML provider in its trust policy.  Calling AssumeRoleWithSAML does not require the use of AWS security credentials. The identity of the caller is validated by using keys in the metadata document that is uploaded for the SAML provider entity for your identity provider.   Calling AssumeRoleWithSAML can result in an entry in your AWS CloudTrail logs. The entry includes the value in the NameID element of the SAML assertion. We recommend that you use a NameIDType that is not associated with any personally identifiable information (PII). For example, you could instead use the Persistent Identifier (urn:oasis:names:tc:SAML:2.0:nameid-format:persistent).  For more information, see the following resources:    About SAML 2.0-based Federation in the IAM User Guide.     Creating SAML Identity Providers in the IAM User Guide.     Configuring a Relying Party and Claims in the IAM User Guide.     Creating a Role for SAML 2.0 Federation in the IAM User Guide.   
    public func assumeRoleWithSAML(_ input: AssumeRoleWithSAMLRequest) throws -> AssumeRoleWithSAMLResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "AssumeRoleWithSAML", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try StsResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns a set of temporary security credentials (consisting of an access key ID, a secret access key, and a security token) that you can use to access AWS resources that you might not normally have access to. Typically, you use AssumeRole for cross-account access or federation. For a comparison of AssumeRole with the other APIs that produce temporary credentials, see Requesting Temporary Security Credentials and Comparing the AWS STS APIs in the IAM User Guide.  Important: You cannot call AssumeRole by using AWS root account credentials; access is denied. You must use credentials for an IAM user or an IAM role to call AssumeRole.  For cross-account access, imagine that you own multiple accounts and need to access resources in each account. You could create long-term credentials in each account to access those resources. However, managing all those credentials and remembering which one can access which account can be time consuming. Instead, you can create one set of long-term credentials in one account and then use temporary security credentials to access all the other accounts by assuming roles in those accounts. For more information about roles, see IAM Roles (Delegation and Federation) in the IAM User Guide.  For federation, you can, for example, grant single sign-on access to the AWS Management Console. If you already have an identity and authentication system in your corporate network, you don't have to recreate user identities in AWS in order to grant those user identities access to AWS. Instead, after a user has been authenticated, you call AssumeRole (and specify the role with the appropriate permissions) to get temporary security credentials for that user. With those temporary security credentials, you construct a sign-in URL that users can use to access the console. For more information, see Common Scenarios for Temporary Credentials in the IAM User Guide. The temporary security credentials are valid for the duration that you specified when calling AssumeRole, which can be from 900 seconds (15 minutes) to a maximum of 3600 seconds (1 hour). The default is 1 hour.  The temporary security credentials created by AssumeRole can be used to make API calls to any AWS service with the following exception: you cannot call the STS service's GetFederationToken or GetSessionToken APIs. Optionally, you can pass an IAM access policy to this operation. If you choose not to pass a policy, the temporary security credentials that are returned by the operation have the permissions that are defined in the access policy of the role that is being assumed. If you pass a policy to this operation, the temporary security credentials that are returned by the operation have the permissions that are allowed by both the access policy of the role that is being assumed,  and  the policy that you pass. This gives you a way to further restrict the permissions for the resulting temporary security credentials. You cannot use the passed policy to grant permissions that are in excess of those allowed by the access policy of the role that is being assumed. For more information, see Permissions for AssumeRole, AssumeRoleWithSAML, and AssumeRoleWithWebIdentity in the IAM User Guide. To assume a role, your AWS account must be trusted by the role. The trust relationship is defined in the role's trust policy when the role is created. That trust policy states which accounts are allowed to delegate access to this account's role. The user who wants to access the role must also have permissions delegated from the role's administrator. If the user is in a different account than the role, then the user's administrator must attach a policy that allows the user to call AssumeRole on the ARN of the role in the other account. If the user is in the same account as the role, then you can either attach a policy to the user (identical to the previous different account user), or you can add the user as a principal directly in the role's trust policy  Using MFA with AssumeRole  You can optionally include multi-factor authentication (MFA) information when you call AssumeRole. This is useful for cross-account scenarios in which you want to make sure that the user who is assuming the role has been authenticated using an AWS MFA device. In that scenario, the trust policy of the role being assumed includes a condition that tests for MFA authentication; if the caller does not include valid MFA information, the request to assume the role is denied. The condition in a trust policy that tests for MFA authentication might look like the following example.  "Condition": {"Bool": {"aws:MultiFactorAuthPresent": true}}  For more information, see Configuring MFA-Protected API Access in the IAM User Guide guide. To use MFA with AssumeRole, you pass values for the SerialNumber and TokenCode parameters. The SerialNumber value identifies the user's hardware or virtual MFA device. The TokenCode is the time-based one-time password (TOTP) that the MFA devices produces. 
    public func assumeRole(_ input: AssumeRoleRequest) throws -> AssumeRoleResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "AssumeRole", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try StsResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns details about the IAM identity whose credentials are used to call the API.
    public func getCallerIdentity(_ input: GetCallerIdentityRequest) throws -> GetCallerIdentityResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "GetCallerIdentity", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try StsResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Decodes additional information about the authorization status of a request from an encoded message returned in response to an AWS request. For example, if a user is not authorized to perform an action that he or she has requested, the request returns a Client.UnauthorizedOperation response (an HTTP 403 response). Some AWS actions additionally return an encoded message that can provide details about this authorization failure.   Only certain AWS actions return an encoded authorization message. The documentation for an individual action indicates whether that action returns an encoded message in addition to returning an HTTP code.  The message is encoded because the details of the authorization status can constitute privileged information that the user who requested the action should not see. To decode an authorization status message, a user must be granted permissions via an IAM policy to request the DecodeAuthorizationMessage (sts:DecodeAuthorizationMessage) action.  The decoded message includes the following type of information:   Whether the request was denied due to an explicit deny or due to the absence of an explicit allow. For more information, see Determining Whether a Request is Allowed or Denied in the IAM User Guide.    The principal who made the request.   The requested action.   The requested resource.   The values of condition keys in the context of the user's request.  
    public func decodeAuthorizationMessage(_ input: DecodeAuthorizationMessageRequest) throws -> DecodeAuthorizationMessageResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DecodeAuthorizationMessage", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try StsResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }


}