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
AWS CloudFormation AWS CloudFormation allows you to create and manage AWS infrastructure deployments predictably and repeatedly. You can use AWS CloudFormation to leverage AWS products, such as Amazon Elastic Compute Cloud, Amazon Elastic Block Store, Amazon Simple Notification Service, Elastic Load Balancing, and Auto Scaling to build highly-reliable, highly scalable, cost-effective applications without creating or configuring the underlying AWS infrastructure. With AWS CloudFormation, you declare all of your resources and dependencies in a template file. The template defines a collection of resources as a single unit called a stack. AWS CloudFormation creates and deletes all member resources of the stack together and manages all dependencies between the resources for you. For more information about AWS CloudFormation, see the AWS CloudFormation Product Page. Amazon CloudFormation makes use of other AWS products. For additional technical information about a specific AWS product, see its technical documentation.
*/
public struct Cloudformation {

    let request: AWSRequest

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: Core.Region? = nil, endpoint: String? = nil) {
        self.request = AWSRequest(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "cloudformation",
            endpoint: endpoint
        )
    }

    ///  Validates a specified template. AWS CloudFormation first checks if the template is valid JSON. If it isn't, AWS CloudFormation checks if the template is valid YAML. If both these checks fail, AWS CloudFormation returns a template validation error.
    public func validateTemplate(_ input: ValidateTemplateInput) throws -> ValidateTemplateOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "ValidateTemplate", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudformationResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns all stack related events for a specified stack in reverse chronological order. For more information about a stack's event history, go to Stacks in the AWS CloudFormation User Guide.  You can list events for stacks that have failed to create or have been deleted by specifying the unique stack identifier (stack ID). 
    public func describeStackEvents(_ input: DescribeStackEventsInput) throws -> DescribeStackEventsOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeStackEvents", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudformationResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns the estimated monthly cost of a template. The return value is an AWS Simple Monthly Calculator URL with a query string that describes the resources required to run the template.
    public func estimateTemplateCost(_ input: EstimateTemplateCostInput) throws -> EstimateTemplateCostOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "EstimateTemplateCost", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudformationResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Sets a stack policy for a specified stack.
    public func setStackPolicy(_ input: SetStackPolicyInput) throws {
        _ = try request.invoke(operation: "SetStackPolicy", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
    }

    ///  Lists all stacks that are importing an exported output value. To modify or remove an exported output value, first use this action to see which stacks are using it. To see the exported output values in your account, see ListExports.  For more information about importing an exported output value, see the  Fn::ImportValue  function. 
    public func listImports(_ input: ListImportsInput) throws -> ListImportsOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "ListImports", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudformationResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Lists all exported output values in the account and region in which you call this action. Use this action to see the exported output values that you can import into other stacks. To import values, use the  Fn::ImportValue  function.  For more information, see  AWS CloudFormation Export Stack Output Values.
    public func listExports(_ input: ListExportsInput) throws -> ListExportsOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "ListExports", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudformationResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns the ID and status of each active change set for a stack. For example, AWS CloudFormation lists change sets that are in the CREATE_IN_PROGRESS or CREATE_PENDING state.
    public func listChangeSets(_ input: ListChangeSetsInput) throws -> ListChangeSetsOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "ListChangeSets", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudformationResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Retrieves your account's AWS CloudFormation limits, such as the maximum number of stacks that you can create in your account.
    public func describeAccountLimits(_ input: DescribeAccountLimitsInput) throws -> DescribeAccountLimitsOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeAccountLimits", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudformationResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns the summary information for stacks whose status matches the specified StackStatusFilter. Summary information for stacks that have been deleted is kept for 90 days after the stack is deleted. If no StackStatusFilter is specified, summary information for all stacks is returned (including existing stacks and stacks that have been deleted).
    public func listStacks(_ input: ListStacksInput) throws -> ListStacksOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "ListStacks", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudformationResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns descriptions of all resources of the specified stack. For deleted stacks, ListStackResources returns resource information for up to 90 days after the stack has been deleted.
    public func listStackResources(_ input: ListStackResourcesInput) throws -> ListStackResourcesOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "ListStackResources", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudformationResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Deletes a specified stack. Once the call completes successfully, stack deletion starts. Deleted stacks do not show up in the DescribeStacks API if the deletion has been completed successfully.
    public func deleteStack(_ input: DeleteStackInput) throws {
        _ = try request.invoke(operation: "DeleteStack", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
    }

    ///  Returns the inputs for the change set and a list of changes that AWS CloudFormation will make if you execute the change set. For more information, see Updating Stacks Using Change Sets in the AWS CloudFormation User Guide.
    public func describeChangeSet(_ input: DescribeChangeSetInput) throws -> DescribeChangeSetOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeChangeSet", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudformationResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns AWS resource descriptions for running and deleted stacks. If StackName is specified, all the associated resources that are part of the stack are returned. If PhysicalResourceId is specified, the associated resources of the stack that the resource belongs to are returned.  Only the first 100 resources will be returned. If your stack has more resources than this, you should use ListStackResources instead.  For deleted stacks, DescribeStackResources returns resource information for up to 90 days after the stack has been deleted. You must specify either StackName or PhysicalResourceId, but not both. In addition, you can specify LogicalResourceId to filter the returned result. For more information about resources, the LogicalResourceId and PhysicalResourceId, go to the AWS CloudFormation User Guide.  A ValidationError is returned if you specify both StackName and PhysicalResourceId in the same request. 
    public func describeStackResources(_ input: DescribeStackResourcesInput) throws -> DescribeStackResourcesOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeStackResources", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudformationResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Creates a stack as specified in the template. After the call completes successfully, the stack creation starts. You can check the status of the stack via the DescribeStacks API.
    public func createStack(_ input: CreateStackInput) throws -> CreateStackOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "CreateStack", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudformationResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Creates a list of changes for a stack. AWS CloudFormation generates the change set by comparing the template's information with the information that you submit. A change set can help you understand which resources AWS CloudFormation will change, and how it will change them, before you update your stack. Change sets allow you to check before making a change to avoid deleting or replacing critical resources. AWS CloudFormation doesn't make any changes to the stack when you create a change set. To make the specified changes, you must execute the change set by using the ExecuteChangeSet action. After the call successfully completes, AWS CloudFormation starts creating the change set. To check the status of the change set, use the DescribeChangeSet action.
    public func createChangeSet(_ input: CreateChangeSetInput) throws -> CreateChangeSetOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "CreateChangeSet", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudformationResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Cancels an update on the specified stack. If the call completes successfully, the stack rolls back the update and reverts to the previous stack configuration.  You can cancel only stacks that are in the UPDATE_IN_PROGRESS state. 
    public func cancelUpdateStack(_ input: CancelUpdateStackInput) throws {
        _ = try request.invoke(operation: "CancelUpdateStack", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
    }

    ///  Returns the template body for a specified stack. You can get the template for running or deleted stacks. For deleted stacks, GetTemplate returns the template for up to 90 days after the stack has been deleted.   If the template does not exist, a ValidationError is returned.  
    public func getTemplate(_ input: GetTemplateInput) throws -> GetTemplateOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "GetTemplate", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudformationResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Updates a stack using the input information that was provided when the specified change set was created. After the call successfully completes, AWS CloudFormation starts updating the stack. Use the DescribeStacks action to view the status of the update. When you execute a change set, AWS CloudFormation deletes all other change sets associated with the stack because they aren't valid for the updated stack. If a stack policy is associated with the stack, AWS CloudFormation enforces the policy during the update. You can't specify a temporary stack policy that overrides the current policy.
    public func executeChangeSet(_ input: ExecuteChangeSetInput) throws -> ExecuteChangeSetOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "ExecuteChangeSet", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudformationResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Sends a signal to the specified resource with a success or failure status. You can use the SignalResource API in conjunction with a creation policy or update policy. AWS CloudFormation doesn't proceed with a stack creation or update until resources receive the required number of signals or the timeout period is exceeded. The SignalResource API is useful in cases where you want to send signals from anywhere other than an Amazon EC2 instance.
    public func signalResource(_ input: SignalResourceInput) throws {
        _ = try request.invoke(operation: "SignalResource", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
    }

    ///  Returns a description of the specified resource in the specified stack. For deleted stacks, DescribeStackResource returns resource information for up to 90 days after the stack has been deleted.
    public func describeStackResource(_ input: DescribeStackResourceInput) throws -> DescribeStackResourceOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeStackResource", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudformationResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns the description for the specified stack; if no stack name was specified, then it returns the description for all the stacks created.  If the stack does not exist, an AmazonCloudFormationException is returned. 
    public func describeStacks(_ input: DescribeStacksInput) throws -> DescribeStacksOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeStacks", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudformationResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  For a specified stack that is in the UPDATE_ROLLBACK_FAILED state, continues rolling it back to the UPDATE_ROLLBACK_COMPLETE state. Depending on the cause of the failure, you can manually  fix the error and continue the rollback. By continuing the rollback, you can return your stack to a working state (the UPDATE_ROLLBACK_COMPLETE state), and then try to update the stack again. A stack goes into the UPDATE_ROLLBACK_FAILED state when AWS CloudFormation cannot roll back all changes after a failed stack update. For example, you might have a stack that is rolling back to an old database instance that was deleted outside of AWS CloudFormation. Because AWS CloudFormation doesn't know the database was deleted, it assumes that the database instance still exists and attempts to roll back to it, causing the update rollback to fail.
    public func continueUpdateRollback(_ input: ContinueUpdateRollbackInput) throws -> ContinueUpdateRollbackOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "ContinueUpdateRollback", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudformationResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Deletes the specified change set. Deleting change sets ensures that no one executes the wrong change set. If the call successfully completes, AWS CloudFormation successfully deleted the change set.
    public func deleteChangeSet(_ input: DeleteChangeSetInput) throws -> DeleteChangeSetOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "DeleteChangeSet", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudformationResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Updates a stack as specified in the template. After the call completes successfully, the stack update starts. You can check the status of the stack via the DescribeStacks action. To get a copy of the template for an existing stack, you can use the GetTemplate action. For more information about creating an update template, updating a stack, and monitoring the progress of the update, see Updating a Stack.
    public func updateStack(_ input: UpdateStackInput) throws -> UpdateStackOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "UpdateStack", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudformationResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns information about a new or existing template. The GetTemplateSummary action is useful for viewing parameter information, such as default parameter values and parameter types, before you create or update a stack. You can use the GetTemplateSummary action when you submit a template, or you can get template information for a running or deleted stack. For deleted stacks, GetTemplateSummary returns the template information for up to 90 days after the stack has been deleted. If the template does not exist, a ValidationError is returned.
    public func getTemplateSummary(_ input: GetTemplateSummaryInput) throws -> GetTemplateSummaryOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "GetTemplateSummary", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudformationResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns the stack policy for a specified stack. If a stack doesn't have a policy, a null value is returned.
    public func getStackPolicy(_ input: GetStackPolicyInput) throws -> GetStackPolicyOutput {
        let (bodyData, urlResponse) = try request.invoke(operation: "GetStackPolicy", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudformationResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }


}