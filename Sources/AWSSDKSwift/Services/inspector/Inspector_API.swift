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
Amazon Inspector Amazon Inspector enables you to analyze the behavior of your AWS resources and to identify potential security issues. For more information, see  Amazon Inspector User Guide.
*/
public struct Inspector {

    let request: AWSRequest

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: Core.Region? = nil, endpoint: String? = nil) {
        self.request = AWSRequest(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "InspectorService",
            service: "inspector",
            endpoint: endpoint
        )
    }

    ///  Removes entire attributes (key and value pairs) from the findings that are specified by the ARNs of the findings where an attribute with the specified key exists.
    public func removeAttributesFromFindings(_ input: RemoveAttributesFromFindingsRequest) throws -> RemoveAttributesFromFindingsResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "RemoveAttributesFromFindings", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try InspectorResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Deletes the assessment template that is specified by the ARN of the assessment template.
    public func deleteAssessmentTemplate(_ input: DeleteAssessmentTemplateRequest) throws {
        _ = try request.invoke(operation: "DeleteAssessmentTemplate", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
    }

    ///  Disables the process of sending Amazon Simple Notification Service (SNS) notifications about a specified event to a specified SNS topic.
    public func unsubscribeFromEvent(_ input: UnsubscribeFromEventRequest) throws {
        _ = try request.invoke(operation: "UnsubscribeFromEvent", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
    }

    ///  Starts the assessment run specified by the ARN of the assessment template. For this API to function properly, you must not exceed the limit of running up to 500 concurrent agents per AWS account.
    public func startAssessmentRun(_ input: StartAssessmentRunRequest) throws -> StartAssessmentRunResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "StartAssessmentRun", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try InspectorResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Lists the ARNs of the assessment targets within this AWS account. For more information about assessment targets, see Amazon Inspector Assessment Targets.
    public func listAssessmentTargets(_ input: ListAssessmentTargetsRequest) throws -> ListAssessmentTargetsResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "ListAssessmentTargets", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try InspectorResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Lists all available Amazon Inspector rules packages.
    public func listRulesPackages(_ input: ListRulesPackagesRequest) throws -> ListRulesPackagesResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "ListRulesPackages", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try InspectorResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Creates a resource group using the specified set of tags (key and value pairs) that are used to select the EC2 instances to be included in an Amazon Inspector assessment target. The created resource group is then used to create an Amazon Inspector assessment target. For more information, see CreateAssessmentTarget.
    public func createResourceGroup(_ input: CreateResourceGroupRequest) throws -> CreateResourceGroupResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "CreateResourceGroup", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try InspectorResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Describes the resource groups that are specified by the ARNs of the resource groups.
    public func describeResourceGroups(_ input: DescribeResourceGroupsRequest) throws -> DescribeResourceGroupsResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeResourceGroups", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try InspectorResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Stops the assessment run that is specified by the ARN of the assessment run.
    public func stopAssessmentRun(_ input: StopAssessmentRunRequest) throws {
        _ = try request.invoke(operation: "StopAssessmentRun", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
    }

    ///  Lists all tags associated with an assessment template.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) throws -> ListTagsForResourceResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "ListTagsForResource", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try InspectorResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Lists the assessment templates that correspond to the assessment targets that are specified by the ARNs of the assessment targets.
    public func listAssessmentTemplates(_ input: ListAssessmentTemplatesRequest) throws -> ListAssessmentTemplatesResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "ListAssessmentTemplates", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try InspectorResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Describes the IAM role that enables Amazon Inspector to access your AWS account.
    public func describeCrossAccountAccessRole() throws -> DescribeCrossAccountAccessRoleResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeCrossAccountAccessRole", path: "/", httpMethod: "POST", httpHeaders: [:], input: nil)
        return try InspectorResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Assigns attributes (key and value pairs) to the findings that are specified by the ARNs of the findings.
    public func addAttributesToFindings(_ input: AddAttributesToFindingsRequest) throws -> AddAttributesToFindingsResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "AddAttributesToFindings", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try InspectorResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Lists all the event subscriptions for the assessment template that is specified by the ARN of the assessment template. For more information, see SubscribeToEvent and UnsubscribeFromEvent.
    public func listEventSubscriptions(_ input: ListEventSubscriptionsRequest) throws -> ListEventSubscriptionsResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "ListEventSubscriptions", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try InspectorResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Creates an assessment template for the assessment target that is specified by the ARN of the assessment target.
    public func createAssessmentTemplate(_ input: CreateAssessmentTemplateRequest) throws -> CreateAssessmentTemplateResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "CreateAssessmentTemplate", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try InspectorResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Enables the process of sending Amazon Simple Notification Service (SNS) notifications about a specified event to a specified SNS topic.
    public func subscribeToEvent(_ input: SubscribeToEventRequest) throws {
        _ = try request.invoke(operation: "SubscribeToEvent", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
    }

    ///  Updates the assessment target that is specified by the ARN of the assessment target.
    public func updateAssessmentTarget(_ input: UpdateAssessmentTargetRequest) throws {
        _ = try request.invoke(operation: "UpdateAssessmentTarget", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
    }

    ///  Registers the IAM role that Amazon Inspector uses to list your EC2 instances at the start of the assessment run or when you call the PreviewAgents action.
    public func registerCrossAccountAccessRole(_ input: RegisterCrossAccountAccessRoleRequest) throws {
        _ = try request.invoke(operation: "RegisterCrossAccountAccessRole", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
    }

    ///  Describes the findings that are specified by the ARNs of the findings.
    public func describeFindings(_ input: DescribeFindingsRequest) throws -> DescribeFindingsResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeFindings", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try InspectorResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Lists the assessment runs that correspond to the assessment templates that are specified by the ARNs of the assessment templates.
    public func listAssessmentRuns(_ input: ListAssessmentRunsRequest) throws -> ListAssessmentRunsResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "ListAssessmentRuns", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try InspectorResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Deletes the assessment target that is specified by the ARN of the assessment target.
    public func deleteAssessmentTarget(_ input: DeleteAssessmentTargetRequest) throws {
        _ = try request.invoke(operation: "DeleteAssessmentTarget", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
    }

    ///  Creates a new assessment target using the ARN of the resource group that is generated by CreateResourceGroup. You can create up to 50 assessment targets per AWS account. You can run up to 500 concurrent agents per AWS account. For more information, see  Amazon Inspector Assessment Targets.
    public func createAssessmentTarget(_ input: CreateAssessmentTargetRequest) throws -> CreateAssessmentTargetResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "CreateAssessmentTarget", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try InspectorResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Lists findings that are generated by the assessment runs that are specified by the ARNs of the assessment runs.
    public func listFindings(_ input: ListFindingsRequest) throws -> ListFindingsResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "ListFindings", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try InspectorResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Information about the data that is collected for the specified assessment run.
    public func getTelemetryMetadata(_ input: GetTelemetryMetadataRequest) throws -> GetTelemetryMetadataResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "GetTelemetryMetadata", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try InspectorResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Describes the assessment runs that are specified by the ARNs of the assessment runs.
    public func describeAssessmentRuns(_ input: DescribeAssessmentRunsRequest) throws -> DescribeAssessmentRunsResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeAssessmentRuns", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try InspectorResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Describes the rules packages that are specified by the ARNs of the rules packages.
    public func describeRulesPackages(_ input: DescribeRulesPackagesRequest) throws -> DescribeRulesPackagesResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeRulesPackages", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try InspectorResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Sets tags (key and value pairs) to the assessment template that is specified by the ARN of the assessment template.
    public func setTagsForResource(_ input: SetTagsForResourceRequest) throws {
        _ = try request.invoke(operation: "SetTagsForResource", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
    }

    ///  Deletes the assessment run that is specified by the ARN of the assessment run.
    public func deleteAssessmentRun(_ input: DeleteAssessmentRunRequest) throws {
        _ = try request.invoke(operation: "DeleteAssessmentRun", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
    }

    ///  Describes the assessment targets that are specified by the ARNs of the assessment targets.
    public func describeAssessmentTargets(_ input: DescribeAssessmentTargetsRequest) throws -> DescribeAssessmentTargetsResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeAssessmentTargets", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try InspectorResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Describes the assessment templates that are specified by the ARNs of the assessment templates.
    public func describeAssessmentTemplates(_ input: DescribeAssessmentTemplatesRequest) throws -> DescribeAssessmentTemplatesResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeAssessmentTemplates", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try InspectorResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Previews the agents installed on the EC2 instances that are part of the specified assessment target.
    public func previewAgents(_ input: PreviewAgentsRequest) throws -> PreviewAgentsResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "PreviewAgents", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try InspectorResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Lists the agents of the assessment runs that are specified by the ARNs of the assessment runs.
    public func listAssessmentRunAgents(_ input: ListAssessmentRunAgentsRequest) throws -> ListAssessmentRunAgentsResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "ListAssessmentRunAgents", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try InspectorResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }


}