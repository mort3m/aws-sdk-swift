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
AWS Elastic Beanstalk AWS Elastic Beanstalk makes it easy for you to create, deploy, and manage scalable, fault-tolerant applications running on the Amazon Web Services cloud. For more information about this product, go to the AWS Elastic Beanstalk details page. The location of the latest AWS Elastic Beanstalk WSDL is http://elasticbeanstalk.s3.amazonaws.com/doc/2010-12-01/AWSElasticBeanstalk.wsdl. To install the Software Development Kits (SDKs), Integrated Development Environment (IDE) Toolkits, and command line tools that enable you to access the API, go to Tools for Amazon Web Services.  Endpoints  For a list of region-specific endpoints that AWS Elastic Beanstalk supports, go to Regions and Endpoints in the Amazon Web Services Glossary.
*/
public struct Elasticbeanstalk {

    let request: AWSRequest

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: Core.Region? = nil, endpoint: String? = nil) {
        self.request = AWSRequest(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "elasticbeanstalk",
            endpoint: endpoint
        )
    }

    ///  Launches an environment for the specified application using the specified configuration.
    public func createEnvironment(_ input: CreateEnvironmentMessage) throws -> EnvironmentDescription {
        let (bodyData, urlResponse) = try request.invoke(operation: "CreateEnvironment", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticbeanstalkResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Creates the Amazon S3 storage location for the account. This location is used to store user log files.
    public func createStorageLocation() throws -> CreateStorageLocationResultMessage {
        let (bodyData, urlResponse) = try request.invoke(operation: "CreateStorageLocation", path: "/", httpMethod: "POST", httpHeaders: [:], input: nil)
        return try ElasticbeanstalkResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Retrieve a list of application versions.
    public func describeApplicationVersions(_ input: DescribeApplicationVersionsMessage) throws -> ApplicationVersionDescriptionsMessage {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeApplicationVersions", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticbeanstalkResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Describes the version of the platform.
    public func describePlatformVersion(_ input: DescribePlatformVersionRequest) throws -> DescribePlatformVersionResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribePlatformVersion", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticbeanstalkResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Creates an application version for the specified application. You can create an application version from a source bundle in Amazon S3, a commit in AWS CodeCommit, or the output of an AWS CodeBuild build as follows: Specify a commit in an AWS CodeCommit repository with SourceBuildInformation. Specify a build in an AWS CodeBuild with SourceBuildInformation and BuildConfiguration. Specify a source bundle in S3 with SourceBundle  Omit both SourceBuildInformation and SourceBundle to use the default sample application.  Once you create an application version with a specified Amazon S3 bucket and key location, you cannot change that Amazon S3 location. If you change the Amazon S3 location, you receive an exception when you attempt to launch an environment from the application version. 
    public func createApplicationVersion(_ input: CreateApplicationVersionMessage) throws -> ApplicationVersionDescriptionMessage {
        let (bodyData, urlResponse) = try request.invoke(operation: "CreateApplicationVersion", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticbeanstalkResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns AWS resources for this environment.
    public func describeEnvironmentResources(_ input: DescribeEnvironmentResourcesMessage) throws -> EnvironmentResourceDescriptionsMessage {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeEnvironmentResources", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticbeanstalkResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Retrives detailed information about the health of instances in your AWS Elastic Beanstalk. This operation requires enhanced health reporting.
    public func describeInstancesHealth(_ input: DescribeInstancesHealthRequest) throws -> DescribeInstancesHealthResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeInstancesHealth", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticbeanstalkResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Deletes the specified configuration template.  When you launch an environment using a configuration template, the environment gets a copy of the template. You can delete or modify the environment's copy of the template without affecting the running environment. 
    public func deleteConfigurationTemplate(_ input: DeleteConfigurationTemplateMessage) throws {
        _ = try request.invoke(operation: "DeleteConfigurationTemplate", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
    }

    ///  Create or update a group of environments that each run a separate component of a single application. Takes a list of version labels that specify application source bundles for each of the environments to create or update. The name of each environment and other required information must be included in the source bundles in an environment manifest named env.yaml. See Compose Environments for details.
    public func composeEnvironments(_ input: ComposeEnvironmentsMessage) throws -> EnvironmentDescriptionsMessage {
        let (bodyData, urlResponse) = try request.invoke(operation: "ComposeEnvironments", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticbeanstalkResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Deletes the specified application along with all associated versions and configurations. The application versions will not be deleted from your Amazon S3 bucket.  You cannot delete an application that has a running environment. 
    public func deleteApplication(_ input: DeleteApplicationMessage) throws {
        _ = try request.invoke(operation: "DeleteApplication", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
    }

    ///  Returns a list of the available solution stack names, with the public version first and then in reverse chronological order.
    public func listAvailableSolutionStacks() throws -> ListAvailableSolutionStacksResultMessage {
        let (bodyData, urlResponse) = try request.invoke(operation: "ListAvailableSolutionStacks", path: "/", httpMethod: "POST", httpHeaders: [:], input: nil)
        return try ElasticbeanstalkResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Applies a scheduled managed action immediately. A managed action can be applied only if its status is Scheduled. Get the status and action ID of a managed action with DescribeEnvironmentManagedActions.
    public func applyEnvironmentManagedAction(_ input: ApplyEnvironmentManagedActionRequest) throws -> ApplyEnvironmentManagedActionResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "ApplyEnvironmentManagedAction", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticbeanstalkResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns a description of the settings for the specified configuration set, that is, either a configuration template or the configuration set associated with a running environment. When describing the settings for the configuration set associated with a running environment, it is possible to receive two sets of setting descriptions. One is the deployed configuration set, and the other is a draft configuration of an environment that is either in the process of deployment or that failed to deploy. Related Topics    DeleteEnvironmentConfiguration   
    public func describeConfigurationSettings(_ input: DescribeConfigurationSettingsMessage) throws -> ConfigurationSettingsDescriptions {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeConfigurationSettings", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticbeanstalkResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Terminates the specified environment.
    public func terminateEnvironment(_ input: TerminateEnvironmentMessage) throws -> EnvironmentDescription {
        let (bodyData, urlResponse) = try request.invoke(operation: "TerminateEnvironment", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticbeanstalkResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Lists an environment's completed and failed managed actions.
    public func describeEnvironmentManagedActionHistory(_ input: DescribeEnvironmentManagedActionHistoryRequest) throws -> DescribeEnvironmentManagedActionHistoryResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeEnvironmentManagedActionHistory", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticbeanstalkResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Lists the available platforms.
    public func listPlatformVersions(_ input: ListPlatformVersionsRequest) throws -> ListPlatformVersionsResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "ListPlatformVersions", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticbeanstalkResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Retrieves the compiled information from a RequestEnvironmentInfo request. Related Topics    RequestEnvironmentInfo   
    public func retrieveEnvironmentInfo(_ input: RetrieveEnvironmentInfoMessage) throws -> RetrieveEnvironmentInfoResultMessage {
        let (bodyData, urlResponse) = try request.invoke(operation: "RetrieveEnvironmentInfo", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticbeanstalkResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Deletes and recreates all of the AWS resources (for example: the Auto Scaling group, load balancer, etc.) for a specified environment and forces a restart.
    public func rebuildEnvironment(_ input: RebuildEnvironmentMessage) throws {
        _ = try request.invoke(operation: "RebuildEnvironment", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
    }

    ///  Returns list of event descriptions matching criteria up to the last 6 weeks.  This action returns the most recent 1,000 events from the specified NextToken. 
    public func describeEvents(_ input: DescribeEventsMessage) throws -> EventDescriptionsMessage {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeEvents", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticbeanstalkResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Causes the environment to restart the application container server running on each Amazon EC2 instance.
    public func restartAppServer(_ input: RestartAppServerMessage) throws {
        _ = try request.invoke(operation: "RestartAppServer", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
    }

    ///  Updates the environment description, deploys a new application version, updates the configuration settings to an entirely new configuration template, or updates select configuration option values in the running environment.  Attempting to update both the release and configuration is not allowed and AWS Elastic Beanstalk returns an InvalidParameterCombination error.   When updating the configuration settings to a new template or individual settings, a draft configuration is created and DescribeConfigurationSettings for this environment returns two setting descriptions with different DeploymentStatus values. 
    public func updateEnvironment(_ input: UpdateEnvironmentMessage) throws -> EnvironmentDescription {
        let (bodyData, urlResponse) = try request.invoke(operation: "UpdateEnvironment", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticbeanstalkResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Updates the specified application to have the specified properties.  If a property (for example, description) is not provided, the value remains unchanged. To clear these properties, specify an empty string. 
    public func updateApplication(_ input: UpdateApplicationMessage) throws -> ApplicationDescriptionMessage {
        let (bodyData, urlResponse) = try request.invoke(operation: "UpdateApplication", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticbeanstalkResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Creates a configuration template. Templates are associated with a specific application and are used to deploy different versions of the application with the same configuration settings. Related Topics    DescribeConfigurationOptions     DescribeConfigurationSettings     ListAvailableSolutionStacks   
    public func createConfigurationTemplate(_ input: CreateConfigurationTemplateMessage) throws -> ConfigurationSettingsDescription {
        let (bodyData, urlResponse) = try request.invoke(operation: "CreateConfigurationTemplate", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticbeanstalkResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Modifies lifecycle settings for an application.
    public func updateApplicationResourceLifecycle(_ input: UpdateApplicationResourceLifecycleMessage) throws -> ApplicationResourceLifecycleDescriptionMessage {
        let (bodyData, urlResponse) = try request.invoke(operation: "UpdateApplicationResourceLifecycle", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticbeanstalkResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Updates the specified application version to have the specified properties.  If a property (for example, description) is not provided, the value remains unchanged. To clear properties, specify an empty string. 
    public func updateApplicationVersion(_ input: UpdateApplicationVersionMessage) throws -> ApplicationVersionDescriptionMessage {
        let (bodyData, urlResponse) = try request.invoke(operation: "UpdateApplicationVersion", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticbeanstalkResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///   Creates an application that has one configuration template named default and no application versions. 
    public func createApplication(_ input: CreateApplicationMessage) throws -> ApplicationDescriptionMessage {
        let (bodyData, urlResponse) = try request.invoke(operation: "CreateApplication", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticbeanstalkResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Create a new version of your custom platform.
    public func createPlatformVersion(_ input: CreatePlatformVersionRequest) throws -> CreatePlatformVersionResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "CreatePlatformVersion", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticbeanstalkResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Deletes the draft configuration associated with the running environment. Updating a running environment with any configuration changes creates a draft configuration set. You can get the draft configuration using DescribeConfigurationSettings while the update is in progress or if the update fails. The DeploymentStatus for the draft configuration indicates whether the deployment is in process or has failed. The draft configuration remains in existence until it is deleted with this action.
    public func deleteEnvironmentConfiguration(_ input: DeleteEnvironmentConfigurationMessage) throws {
        _ = try request.invoke(operation: "DeleteEnvironmentConfiguration", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
    }

    ///  Updates the specified configuration template to have the specified properties or configuration option values.  If a property (for example, ApplicationName) is not provided, its value remains unchanged. To clear such properties, specify an empty string.  Related Topics    DescribeConfigurationOptions   
    public func updateConfigurationTemplate(_ input: UpdateConfigurationTemplateMessage) throws -> ConfigurationSettingsDescription {
        let (bodyData, urlResponse) = try request.invoke(operation: "UpdateConfigurationTemplate", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticbeanstalkResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Deletes the specified version of a custom platform.
    public func deletePlatformVersion(_ input: DeletePlatformVersionRequest) throws -> DeletePlatformVersionResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "DeletePlatformVersion", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticbeanstalkResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Initiates a request to compile the specified type of information of the deployed environment.  Setting the InfoType to tail compiles the last lines from the application server log files of every Amazon EC2 instance in your environment.   Setting the InfoType to bundle compresses the application server log files for every Amazon EC2 instance into a .zip file. Legacy and .NET containers do not support bundle logs.   Use RetrieveEnvironmentInfo to obtain the set of logs.  Related Topics    RetrieveEnvironmentInfo   
    public func requestEnvironmentInfo(_ input: RequestEnvironmentInfoMessage) throws {
        _ = try request.invoke(operation: "RequestEnvironmentInfo", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
    }

    ///  Checks if the specified CNAME is available.
    public func checkDNSAvailability(_ input: CheckDNSAvailabilityMessage) throws -> CheckDNSAvailabilityResultMessage {
        let (bodyData, urlResponse) = try request.invoke(operation: "CheckDNSAvailability", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticbeanstalkResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Deletes the specified version from the specified application.  You cannot delete an application version that is associated with a running environment. 
    public func deleteApplicationVersion(_ input: DeleteApplicationVersionMessage) throws {
        _ = try request.invoke(operation: "DeleteApplicationVersion", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
    }

    ///  Returns descriptions for existing environments.
    public func describeEnvironments(_ input: DescribeEnvironmentsMessage) throws -> EnvironmentDescriptionsMessage {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeEnvironments", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticbeanstalkResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns information about the overall health of the specified environment. The DescribeEnvironmentHealth operation is only available with AWS Elastic Beanstalk Enhanced Health.
    public func describeEnvironmentHealth(_ input: DescribeEnvironmentHealthRequest) throws -> DescribeEnvironmentHealthResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeEnvironmentHealth", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticbeanstalkResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Lists an environment's upcoming and in-progress managed actions.
    public func describeEnvironmentManagedActions(_ input: DescribeEnvironmentManagedActionsRequest) throws -> DescribeEnvironmentManagedActionsResult {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeEnvironmentManagedActions", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticbeanstalkResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Describes the configuration options that are used in a particular configuration template or environment, or that a specified solution stack defines. The description includes the values the options, their default values, and an indication of the required action on a running environment if an option value is changed.
    public func describeConfigurationOptions(_ input: DescribeConfigurationOptionsMessage) throws -> ConfigurationOptionsDescription {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeConfigurationOptions", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticbeanstalkResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Takes a set of configuration settings and either a configuration template or environment, and determines whether those values are valid. This action returns a list of messages indicating any errors or warnings associated with the selection of option values.
    public func validateConfigurationSettings(_ input: ValidateConfigurationSettingsMessage) throws -> ConfigurationSettingsValidationMessages {
        let (bodyData, urlResponse) = try request.invoke(operation: "ValidateConfigurationSettings", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticbeanstalkResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Returns the descriptions of existing applications.
    public func describeApplications(_ input: DescribeApplicationsMessage) throws -> ApplicationDescriptionsMessage {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeApplications", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try ElasticbeanstalkResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Swaps the CNAMEs of two environments.
    public func swapEnvironmentCNAMEs(_ input: SwapEnvironmentCNAMEsMessage) throws {
        _ = try request.invoke(operation: "SwapEnvironmentCNAMEs", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
    }

    ///  Cancels in-progress environment configuration update or application version deployment.
    public func abortEnvironmentUpdate(_ input: AbortEnvironmentUpdateMessage) throws {
        _ = try request.invoke(operation: "AbortEnvironmentUpdate", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
    }


}