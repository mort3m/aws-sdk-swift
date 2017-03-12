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
All public APIs for AWS Budgets
*/
public struct Budgets {

    let request: AWSRequest

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: Core.Region? = nil, endpoint: String? = nil) {
        self.request = AWSRequest(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "AWSBudgetServiceGateway",
            service: "budgets",
            endpoint: endpoint
        )
    }

    ///  Delete a notification and related subscribers
    public func deleteNotification(_ input: DeleteNotificationRequest) throws -> DeleteNotificationResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DeleteNotification", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try BudgetsResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Create a new Notification with subscribers for a budget
    public func createNotification(_ input: CreateNotificationRequest) throws -> CreateNotificationResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "CreateNotification", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try BudgetsResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Get a single budget
    public func describeBudget(_ input: DescribeBudgetRequest) throws -> DescribeBudgetResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeBudget", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try BudgetsResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Get all budgets for an account
    public func describeBudgets(_ input: DescribeBudgetsRequest) throws -> DescribeBudgetsResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeBudgets", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try BudgetsResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Update the information about a notification already created
    public func updateNotification(_ input: UpdateNotificationRequest) throws -> UpdateNotificationResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "UpdateNotification", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try BudgetsResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Get notifications of a budget
    public func describeNotificationsForBudget(_ input: DescribeNotificationsForBudgetRequest) throws -> DescribeNotificationsForBudgetResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeNotificationsForBudget", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try BudgetsResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Update a subscriber
    public func updateSubscriber(_ input: UpdateSubscriberRequest) throws -> UpdateSubscriberResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "UpdateSubscriber", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try BudgetsResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Create a new Subscriber for a notification
    public func createSubscriber(_ input: CreateSubscriberRequest) throws -> CreateSubscriberResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "CreateSubscriber", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try BudgetsResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Delete a budget and related notifications
    public func deleteBudget(_ input: DeleteBudgetRequest) throws -> DeleteBudgetResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DeleteBudget", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try BudgetsResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Get subscribers of a notification
    public func describeSubscribersForNotification(_ input: DescribeSubscribersForNotificationRequest) throws -> DescribeSubscribersForNotificationResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DescribeSubscribersForNotification", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try BudgetsResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Update the information of a budget already created
    public func updateBudget(_ input: UpdateBudgetRequest) throws -> UpdateBudgetResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "UpdateBudget", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try BudgetsResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Delete a Subscriber for a notification
    public func deleteSubscriber(_ input: DeleteSubscriberRequest) throws -> DeleteSubscriberResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "DeleteSubscriber", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try BudgetsResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }

    ///  Create a new budget
    public func createBudget(_ input: CreateBudgetRequest) throws -> CreateBudgetResponse {
        let (bodyData, urlResponse) = try request.invoke(operation: "CreateBudget", path: "/", httpMethod: "POST", httpHeaders: [:], input: input)
        return try BudgetsResponseBuilder(bodyData: bodyData, urlResponse: urlResponse).build()
    }


}