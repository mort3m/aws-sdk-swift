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
AWS Batch enables you to run batch computing workloads on the AWS Cloud. Batch computing is a common way for developers, scientists, and engineers to access large amounts of compute resources, and AWS Batch removes the undifferentiated heavy lifting of configuring and managing the required infrastructure. AWS Batch will be familiar to users of traditional batch computing software. This service can efficiently provision resources in response to jobs submitted in order to eliminate capacity constraints, reduce compute costs, and deliver results quickly. As a fully managed service, AWS Batch enables developers, scientists, and engineers to run batch computing workloads of any scale. AWS Batch automatically provisions compute resources and optimizes the workload distribution based on the quantity and scale of the workloads. With AWS Batch, there is no need to install or manage batch computing software, which allows you to focus on analyzing results and solving problems. AWS Batch reduces operational complexities, saves time, and reduces costs, which makes it easy for developers, scientists, and engineers to run their batch jobs in the AWS Cloud.
*/
public struct Batch {

    let request: AWSRequest

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: Core.Region? = nil, endpoint: String? = nil) {
        self.request = AWSRequest(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "batch",
            endpoint: endpoint
        )
    }

    ///  Describes one or more of your job queues.
    public func describeJobQueues(_ input: DescribeJobQueuesRequest) throws -> DescribeJobQueuesResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeJobQueues", path: "/v1/describejobqueues", httpMethod: "POST", httpHeaders: [:], input: input)
        return try BatchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Describes a list of AWS Batch jobs.
    public func describeJobs(_ input: DescribeJobsRequest) throws -> DescribeJobsResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeJobs", path: "/v1/describejobs", httpMethod: "POST", httpHeaders: [:], input: input)
        return try BatchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Deregisters an AWS Batch job definition.
    public func deregisterJobDefinition(_ input: DeregisterJobDefinitionRequest) throws -> DeregisterJobDefinitionResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DeregisterJobDefinition", path: "/v1/deregisterjobdefinition", httpMethod: "POST", httpHeaders: [:], input: input)
        return try BatchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Creates an AWS Batch compute environment. You can create MANAGED or UNMANAGEDcompute environments. In a managed compute environment, AWS Batch manages the compute resources within the environment, based on the compute resources that you specify. Instances launched into a managed compute environment use the latest Amazon ECS-optimized AMI. You can choose to use Amazon EC2 On-Demand instances in your managed compute environment, or you can use Amazon EC2 Spot instances that only launch when the Spot bid price is below a specified percentage of the On-Demand price. In an unmanaged compute environment, you can manage your own compute resources. This provides more compute resource configuration options, such as using a custom AMI, but you must ensure that your AMI meets the Amazon ECS container instance AMI specification. For more information, see Container Instance AMIs in the Amazon EC2 Container Service Developer Guide. After you have created your unmanaged compute environment, you can use the DescribeComputeEnvironments operation to find the Amazon ECS cluster that is associated with it and then manually launch your container instances into that Amazon ECS cluster. For more information, see Launching an Amazon ECS Container Instance in the Amazon EC2 Container Service Developer Guide.
    public func createComputeEnvironment(_ input: CreateComputeEnvironmentRequest) throws -> CreateComputeEnvironmentResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "CreateComputeEnvironment", path: "/v1/createcomputeenvironment", httpMethod: "POST", httpHeaders: [:], input: input)
        return try BatchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Describes a list of job definitions. You can specify a status (such as ACTIVE) to only return job definitions that match that status.
    public func describeJobDefinitions(_ input: DescribeJobDefinitionsRequest) throws -> DescribeJobDefinitionsResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeJobDefinitions", path: "/v1/describejobdefinitions", httpMethod: "POST", httpHeaders: [:], input: input)
        return try BatchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Updates an AWS Batch compute environment.
    public func updateComputeEnvironment(_ input: UpdateComputeEnvironmentRequest) throws -> UpdateComputeEnvironmentResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "UpdateComputeEnvironment", path: "/v1/updatecomputeenvironment", httpMethod: "POST", httpHeaders: [:], input: input)
        return try BatchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Creates an AWS Batch job queue. When you create a job queue, you associate one or more compute environments to the queue and assign an order of preference for the compute environments. You also set a priority to the job queue that determines the order in which the AWS Batch scheduler places jobs onto its associated compute environments. For example, if a compute environment is associated with more than one job queue, the job queue with a higher priority is given preference for scheduling jobs to that compute environment.
    public func createJobQueue(_ input: CreateJobQueueRequest) throws -> CreateJobQueueResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "CreateJobQueue", path: "/v1/createjobqueue", httpMethod: "POST", httpHeaders: [:], input: input)
        return try BatchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Updates a job queue.
    public func updateJobQueue(_ input: UpdateJobQueueRequest) throws -> UpdateJobQueueResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "UpdateJobQueue", path: "/v1/updatejobqueue", httpMethod: "POST", httpHeaders: [:], input: input)
        return try BatchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Terminates jobs in a job queue. Jobs that are in the STARTING or RUNNING state are terminated, which causes them to transition to FAILED. Jobs that have not progressed to the STARTING state are cancelled.
    public func terminateJob(_ input: TerminateJobRequest) throws -> TerminateJobResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "TerminateJob", path: "/v1/terminatejob", httpMethod: "POST", httpHeaders: [:], input: input)
        return try BatchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Registers an AWS Batch job definition. 
    public func registerJobDefinition(_ input: RegisterJobDefinitionRequest) throws -> RegisterJobDefinitionResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "RegisterJobDefinition", path: "/v1/registerjobdefinition", httpMethod: "POST", httpHeaders: [:], input: input)
        return try BatchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Submits an AWS Batch job from a job definition. Parameters specified during SubmitJob override parameters defined in the job definition. 
    public func submitJob(_ input: SubmitJobRequest) throws -> SubmitJobResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "SubmitJob", path: "/v1/submitjob", httpMethod: "POST", httpHeaders: [:], input: input)
        return try BatchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Deletes an AWS Batch compute environment. Before you can delete a compute environment, you must set its state to DISABLED with the UpdateComputeEnvironment API operation and disassociate it from any job queues with the UpdateJobQueue API operation.
    public func deleteComputeEnvironment(_ input: DeleteComputeEnvironmentRequest) throws -> DeleteComputeEnvironmentResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DeleteComputeEnvironment", path: "/v1/deletecomputeenvironment", httpMethod: "POST", httpHeaders: [:], input: input)
        return try BatchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns a list of task jobs for a specified job queue. You can filter the results by job status with the jobStatus parameter.
    public func listJobs(_ input: ListJobsRequest) throws -> ListJobsResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "ListJobs", path: "/v1/listjobs", httpMethod: "POST", httpHeaders: [:], input: input)
        return try BatchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Deletes the specified job queue. You must first disable submissions for a queue with the UpdateJobQueue operation and terminate any jobs that have not completed with the TerminateJob. It is not necessary to disassociate compute environments from a queue before submitting a DeleteJobQueue request. 
    public func deleteJobQueue(_ input: DeleteJobQueueRequest) throws -> DeleteJobQueueResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DeleteJobQueue", path: "/v1/deletejobqueue", httpMethod: "POST", httpHeaders: [:], input: input)
        return try BatchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Describes one or more of your compute environments. If you are using an unmanaged compute environment, you can use the DescribeComputeEnvironment operation to determine the ecsClusterArn that you should launch your Amazon ECS container instances into.
    public func describeComputeEnvironments(_ input: DescribeComputeEnvironmentsRequest) throws -> DescribeComputeEnvironmentsResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeComputeEnvironments", path: "/v1/describecomputeenvironments", httpMethod: "POST", httpHeaders: [:], input: input)
        return try BatchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Cancels jobs in an AWS Batch job queue. Jobs that are in the SUBMITTED, PENDING, or RUNNABLE state are cancelled. Jobs that have progressed to STARTING or RUNNING are not cancelled (but the API operation still succeeds, even if no jobs are cancelled); these jobs must be terminated with the TerminateJob operation.
    public func cancelJob(_ input: CancelJobRequest) throws -> CancelJobResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "CancelJob", path: "/v1/canceljob", httpMethod: "POST", httpHeaders: [:], input: input)
        return try BatchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }


}