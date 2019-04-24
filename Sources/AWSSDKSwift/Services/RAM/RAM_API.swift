// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

/**
Use AWS Resource Access Manager to share AWS resources between AWS accounts. To share a resource, you create a resource share, associate the resource with the resource share, and specify the principals that can access the resource. The following principals are supported:   The ID of an AWS account   The Amazon Resource Name (ARN) of an OU from AWS Organizations   The Amazon Resource Name (ARN) of an organization from AWS Organizations   If you specify an AWS account that doesn't exist in the same organization as the account that owns the resource share, the owner of the specified account receives an invitation to accept the resource share. After the owner accepts the invitation, they can access the resources in the resource share. An administrator of the specified account can use IAM policies to restrict access resources in the resource share.
*/
public struct RAM {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "ram",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-01-04",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [RAMErrorType.self]
        )
    }

    ///  Accepts an invitation to a resource share from another AWS account.
    public func acceptResourceShareInvitation(_ input: AcceptResourceShareInvitationRequest) throws -> AcceptResourceShareInvitationResponse {
        return try client.send(operation: "AcceptResourceShareInvitation", path: "/acceptresourceshareinvitation", httpMethod: "POST", input: input)
    }

    ///  Associates the specified resource share with the specified principals and resources.
    public func associateResourceShare(_ input: AssociateResourceShareRequest) throws -> AssociateResourceShareResponse {
        return try client.send(operation: "AssociateResourceShare", path: "/associateresourceshare", httpMethod: "POST", input: input)
    }

    ///  Creates a resource share.
    public func createResourceShare(_ input: CreateResourceShareRequest) throws -> CreateResourceShareResponse {
        return try client.send(operation: "CreateResourceShare", path: "/createresourceshare", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified resource share.
    public func deleteResourceShare(_ input: DeleteResourceShareRequest) throws -> DeleteResourceShareResponse {
        return try client.send(operation: "DeleteResourceShare", path: "/deleteresourceshare", httpMethod: "DELETE", input: input)
    }

    ///  Disassociates the specified principals or resources from the specified resource share.
    public func disassociateResourceShare(_ input: DisassociateResourceShareRequest) throws -> DisassociateResourceShareResponse {
        return try client.send(operation: "DisassociateResourceShare", path: "/disassociateresourceshare", httpMethod: "POST", input: input)
    }

    ///  Enables resource sharing within your organization.
    public func enableSharingWithAwsOrganization(_ input: EnableSharingWithAwsOrganizationRequest) throws -> EnableSharingWithAwsOrganizationResponse {
        return try client.send(operation: "EnableSharingWithAwsOrganization", path: "/enablesharingwithawsorganization", httpMethod: "POST", input: input)
    }

    ///  Gets the policies for the specifies resources.
    public func getResourcePolicies(_ input: GetResourcePoliciesRequest) throws -> GetResourcePoliciesResponse {
        return try client.send(operation: "GetResourcePolicies", path: "/getresourcepolicies", httpMethod: "POST", input: input)
    }

    ///  Gets the associations for the specified resource share.
    public func getResourceShareAssociations(_ input: GetResourceShareAssociationsRequest) throws -> GetResourceShareAssociationsResponse {
        return try client.send(operation: "GetResourceShareAssociations", path: "/getresourceshareassociations", httpMethod: "POST", input: input)
    }

    ///  Gets the specified invitations for resource sharing.
    public func getResourceShareInvitations(_ input: GetResourceShareInvitationsRequest) throws -> GetResourceShareInvitationsResponse {
        return try client.send(operation: "GetResourceShareInvitations", path: "/getresourceshareinvitations", httpMethod: "POST", input: input)
    }

    ///  Gets the specified resource shares or all of your resource shares.
    public func getResourceShares(_ input: GetResourceSharesRequest) throws -> GetResourceSharesResponse {
        return try client.send(operation: "GetResourceShares", path: "/getresourceshares", httpMethod: "POST", input: input)
    }

    ///  Lists the principals with access to the specified resource.
    public func listPrincipals(_ input: ListPrincipalsRequest) throws -> ListPrincipalsResponse {
        return try client.send(operation: "ListPrincipals", path: "/listprincipals", httpMethod: "POST", input: input)
    }

    ///  Lists the resources that the specified principal can access.
    public func listResources(_ input: ListResourcesRequest) throws -> ListResourcesResponse {
        return try client.send(operation: "ListResources", path: "/listresources", httpMethod: "POST", input: input)
    }

    ///  Rejects an invitation to a resource share from another AWS account.
    public func rejectResourceShareInvitation(_ input: RejectResourceShareInvitationRequest) throws -> RejectResourceShareInvitationResponse {
        return try client.send(operation: "RejectResourceShareInvitation", path: "/rejectresourceshareinvitation", httpMethod: "POST", input: input)
    }

    ///  Adds the specified tags to the specified resource share.
    public func tagResource(_ input: TagResourceRequest) throws -> TagResourceResponse {
        return try client.send(operation: "TagResource", path: "/tagresource", httpMethod: "POST", input: input)
    }

    ///  Removes the specified tags from the specified resource share.
    public func untagResource(_ input: UntagResourceRequest) throws -> UntagResourceResponse {
        return try client.send(operation: "UntagResource", path: "/untagresource", httpMethod: "POST", input: input)
    }

    ///  Updates the specified resource share.
    public func updateResourceShare(_ input: UpdateResourceShareRequest) throws -> UpdateResourceShareResponse {
        return try client.send(operation: "UpdateResourceShare", path: "/updateresourceshare", httpMethod: "POST", input: input)
    }


}