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
Amazon CloudSearch Configuration Service You use the Amazon CloudSearch configuration service to create, configure, and manage search domains. Configuration service requests are submitted using the AWS Query protocol. AWS Query requests are HTTP or HTTPS requests submitted via HTTP GET or POST with a query parameter named Action. The endpoint for configuration service requests is region-specific: cloudsearch.region.amazonaws.com. For example, cloudsearch.us-east-1.amazonaws.com. For a current list of supported regions and endpoints, see Regions and Endpoints.
*/
public struct Cloudsearch {

    let request: AWSRequest

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: Core.Region? = nil, endpoint: String? = nil) {
        self.request = AWSRequest(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "cloudsearch",
            endpoint: endpoint
        )
    }

    ///  Configures an IndexField for the search domain. Used to create new fields and modify existing ones. You must specify the name of the domain you are configuring and an index field configuration. The index field configuration specifies a unique name, the index field type, and the options you want to configure for the field. The options you can specify depend on the IndexFieldType. If the field exists, the new configuration replaces the old one. For more information, see Configuring Index Fields in the Amazon CloudSearch Developer Guide. 
    public func defineIndexField(_ input: DefineIndexFieldRequest) throws -> DefineIndexFieldResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DefineIndexField", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudsearchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Indexes the search suggestions. For more information, see Configuring Suggesters in the Amazon CloudSearch Developer Guide.
    public func buildSuggesters(_ input: BuildSuggestersRequest) throws -> BuildSuggestersResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "BuildSuggesters", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudsearchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Lists all search domains owned by an account.
    public func listDomainNames() throws -> ListDomainNamesResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "ListDomainNames", path: "/", httpMethod: "POST", httpHeaders: [:], input: nil)
        return try CloudsearchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Configures the availability options for a domain. Enabling the Multi-AZ option expands an Amazon CloudSearch domain to an additional Availability Zone in the same Region to increase fault tolerance in the event of a service disruption. Changes to the Multi-AZ option can take about half an hour to become active. For more information, see Configuring Availability Options in the Amazon CloudSearch Developer Guide.
    public func updateAvailabilityOptions(_ input: UpdateAvailabilityOptionsRequest) throws -> UpdateAvailabilityOptionsResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "UpdateAvailabilityOptions", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudsearchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Creates a new search domain. For more information, see Creating a Search Domain in the Amazon CloudSearch Developer Guide.
    public func createDomain(_ input: CreateDomainRequest) throws -> CreateDomainResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "CreateDomain", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudsearchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Gets information about the access policies that control access to the domain's document and search endpoints. By default, shows the configuration with any pending changes. Set the Deployed option to true to show the active configuration and exclude pending changes. For more information, see Configuring Access for a Search Domain in the Amazon CloudSearch Developer Guide.
    public func describeServiceAccessPolicies(_ input: DescribeServiceAccessPoliciesRequest) throws -> DescribeServiceAccessPoliciesResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeServiceAccessPolicies", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudsearchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Configures the access rules that control access to the domain's document and search endpoints. For more information, see  Configuring Access for an Amazon CloudSearch Domain.
    public func updateServiceAccessPolicies(_ input: UpdateServiceAccessPoliciesRequest) throws -> UpdateServiceAccessPoliciesResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "UpdateServiceAccessPolicies", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudsearchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Configures an Expression for the search domain. Used to create new expressions and modify existing ones. If the expression exists, the new configuration replaces the old one. For more information, see Configuring Expressions in the Amazon CloudSearch Developer Guide.
    public func defineExpression(_ input: DefineExpressionRequest) throws -> DefineExpressionResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DefineExpression", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudsearchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Removes an Expression from the search domain. For more information, see Configuring Expressions in the Amazon CloudSearch Developer Guide.
    public func deleteExpression(_ input: DeleteExpressionRequest) throws -> DeleteExpressionResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DeleteExpression", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudsearchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Gets the analysis schemes configured for a domain. An analysis scheme defines language-specific text processing options for a text field. Can be limited to specific analysis schemes by name. By default, shows all analysis schemes and includes any pending changes to the configuration. Set the Deployed option to true to show the active configuration and exclude pending changes. For more information, see Configuring Analysis Schemes in the Amazon CloudSearch Developer Guide.
    public func describeAnalysisSchemes(_ input: DescribeAnalysisSchemesRequest) throws -> DescribeAnalysisSchemesResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeAnalysisSchemes", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudsearchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Deletes a suggester. For more information, see Getting Search Suggestions in the Amazon CloudSearch Developer Guide.
    public func deleteSuggester(_ input: DeleteSuggesterRequest) throws -> DeleteSuggesterResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DeleteSuggester", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudsearchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Tells the search domain to start indexing its documents using the latest indexing options. This operation must be invoked to activate options whose OptionStatus is RequiresIndexDocuments.
    public func indexDocuments(_ input: IndexDocumentsRequest) throws -> IndexDocumentsResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "IndexDocuments", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudsearchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Gets information about the index fields configured for the search domain. Can be limited to specific fields by name. By default, shows all fields and includes any pending changes to the configuration. Set the Deployed option to true to show the active configuration and exclude pending changes. For more information, see Getting Domain Information in the Amazon CloudSearch Developer Guide.
    public func describeIndexFields(_ input: DescribeIndexFieldsRequest) throws -> DescribeIndexFieldsResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeIndexFields", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudsearchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Configures a suggester for a domain. A suggester enables you to display possible matches before users finish typing their queries. When you configure a suggester, you must specify the name of the text field you want to search for possible matches and a unique name for the suggester. For more information, see Getting Search Suggestions in the Amazon CloudSearch Developer Guide.
    public func defineSuggester(_ input: DefineSuggesterRequest) throws -> DefineSuggesterResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DefineSuggester", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudsearchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Removes an IndexField from the search domain. For more information, see Configuring Index Fields in the Amazon CloudSearch Developer Guide.
    public func deleteIndexField(_ input: DeleteIndexFieldRequest) throws -> DeleteIndexFieldResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DeleteIndexField", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudsearchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Gets the availability options configured for a domain. By default, shows the configuration with any pending changes. Set the Deployed option to true to show the active configuration and exclude pending changes. For more information, see Configuring Availability Options in the Amazon CloudSearch Developer Guide.
    public func describeAvailabilityOptions(_ input: DescribeAvailabilityOptionsRequest) throws -> DescribeAvailabilityOptionsResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeAvailabilityOptions", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudsearchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Gets the scaling parameters configured for a domain. A domain's scaling parameters specify the desired search instance type and replication count. For more information, see Configuring Scaling Options in the Amazon CloudSearch Developer Guide.
    public func describeScalingParameters(_ input: DescribeScalingParametersRequest) throws -> DescribeScalingParametersResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeScalingParameters", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudsearchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Gets information about the search domains owned by this account. Can be limited to specific domains. Shows all domains by default. To get the number of searchable documents in a domain, use the console or submit a matchall request to your domain's search endpoint: q=matchall&amp;amp;q.parser=structured&amp;amp;size=0. For more information, see Getting Information about a Search Domain in the Amazon CloudSearch Developer Guide.
    public func describeDomains(_ input: DescribeDomainsRequest) throws -> DescribeDomainsResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeDomains", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudsearchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Configures an analysis scheme that can be applied to a text or text-array field to define language-specific text processing options. For more information, see Configuring Analysis Schemes in the Amazon CloudSearch Developer Guide.
    public func defineAnalysisScheme(_ input: DefineAnalysisSchemeRequest) throws -> DefineAnalysisSchemeResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DefineAnalysisScheme", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudsearchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Gets the suggesters configured for a domain. A suggester enables you to display possible matches before users finish typing their queries. Can be limited to specific suggesters by name. By default, shows all suggesters and includes any pending changes to the configuration. Set the Deployed option to true to show the active configuration and exclude pending changes. For more information, see Getting Search Suggestions in the Amazon CloudSearch Developer Guide.
    public func describeSuggesters(_ input: DescribeSuggestersRequest) throws -> DescribeSuggestersResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeSuggesters", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudsearchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Gets the expressions configured for the search domain. Can be limited to specific expressions by name. By default, shows all expressions and includes any pending changes to the configuration. Set the Deployed option to true to show the active configuration and exclude pending changes. For more information, see Configuring Expressions in the Amazon CloudSearch Developer Guide.
    public func describeExpressions(_ input: DescribeExpressionsRequest) throws -> DescribeExpressionsResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeExpressions", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudsearchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Deletes an analysis scheme. For more information, see Configuring Analysis Schemes in the Amazon CloudSearch Developer Guide. 
    public func deleteAnalysisScheme(_ input: DeleteAnalysisSchemeRequest) throws -> DeleteAnalysisSchemeResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DeleteAnalysisScheme", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudsearchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Configures scaling parameters for a domain. A domain's scaling parameters specify the desired search instance type and replication count. Amazon CloudSearch will still automatically scale your domain based on the volume of data and traffic, but not below the desired instance type and replication count. If the Multi-AZ option is enabled, these values control the resources used per Availability Zone. For more information, see Configuring Scaling Options in the Amazon CloudSearch Developer Guide. 
    public func updateScalingParameters(_ input: UpdateScalingParametersRequest) throws -> UpdateScalingParametersResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "UpdateScalingParameters", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudsearchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Permanently deletes a search domain and all of its data. Once a domain has been deleted, it cannot be recovered. For more information, see Deleting a Search Domain in the Amazon CloudSearch Developer Guide. 
    public func deleteDomain(_ input: DeleteDomainRequest) throws -> DeleteDomainResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DeleteDomain", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try CloudsearchResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }


}