// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

/**
All public APIs for AWS Budgets
*/
public struct Budgets {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "AWSBudgetServiceGateway",
            service: "budgets",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2016-10-20",
            endpoint: endpoint,
            serviceEndpoints: ["aws-global": "budgets.amazonaws.com"],
            partitionEndpoint: "aws-global",
            middlewares: [],
            possibleErrorTypes: [BudgetsError.self]
        )
    }

    ///  Delete a notification and related subscribers
    public func deleteNotification(_ input: DeleteNotificationRequest) throws -> DeleteNotificationResponse {
        return try client.send(operation: "DeleteNotification", path: "/", httpMethod: "POST", input: input)
    }

    ///  Create a new Notification with subscribers for a budget
    public func createNotification(_ input: CreateNotificationRequest) throws -> CreateNotificationResponse {
        return try client.send(operation: "CreateNotification", path: "/", httpMethod: "POST", input: input)
    }

    ///  Get a single budget
    public func describeBudget(_ input: DescribeBudgetRequest) throws -> DescribeBudgetResponse {
        return try client.send(operation: "DescribeBudget", path: "/", httpMethod: "POST", input: input)
    }

    ///  Get all budgets for an account
    public func describeBudgets(_ input: DescribeBudgetsRequest) throws -> DescribeBudgetsResponse {
        return try client.send(operation: "DescribeBudgets", path: "/", httpMethod: "POST", input: input)
    }

    ///  Update the information about a notification already created
    public func updateNotification(_ input: UpdateNotificationRequest) throws -> UpdateNotificationResponse {
        return try client.send(operation: "UpdateNotification", path: "/", httpMethod: "POST", input: input)
    }

    ///  Get notifications of a budget
    public func describeNotificationsForBudget(_ input: DescribeNotificationsForBudgetRequest) throws -> DescribeNotificationsForBudgetResponse {
        return try client.send(operation: "DescribeNotificationsForBudget", path: "/", httpMethod: "POST", input: input)
    }

    ///  Update a subscriber
    public func updateSubscriber(_ input: UpdateSubscriberRequest) throws -> UpdateSubscriberResponse {
        return try client.send(operation: "UpdateSubscriber", path: "/", httpMethod: "POST", input: input)
    }

    ///  Create a new Subscriber for a notification
    public func createSubscriber(_ input: CreateSubscriberRequest) throws -> CreateSubscriberResponse {
        return try client.send(operation: "CreateSubscriber", path: "/", httpMethod: "POST", input: input)
    }

    ///  Delete a budget and related notifications
    public func deleteBudget(_ input: DeleteBudgetRequest) throws -> DeleteBudgetResponse {
        return try client.send(operation: "DeleteBudget", path: "/", httpMethod: "POST", input: input)
    }

    ///  Get subscribers of a notification
    public func describeSubscribersForNotification(_ input: DescribeSubscribersForNotificationRequest) throws -> DescribeSubscribersForNotificationResponse {
        return try client.send(operation: "DescribeSubscribersForNotification", path: "/", httpMethod: "POST", input: input)
    }

    ///  Update the information of a budget already created
    public func updateBudget(_ input: UpdateBudgetRequest) throws -> UpdateBudgetResponse {
        return try client.send(operation: "UpdateBudget", path: "/", httpMethod: "POST", input: input)
    }

    ///  Delete a Subscriber for a notification
    public func deleteSubscriber(_ input: DeleteSubscriberRequest) throws -> DeleteSubscriberResponse {
        return try client.send(operation: "DeleteSubscriber", path: "/", httpMethod: "POST", input: input)
    }

    ///  Create a new budget
    public func createBudget(_ input: CreateBudgetRequest) throws -> CreateBudgetResponse {
        return try client.send(operation: "CreateBudget", path: "/", httpMethod: "POST", input: input)
    }


}