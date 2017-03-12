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

extension Events {

    public struct InputTransformer: Serializable, Initializable {
        /// Input template where you can use the values of the keys from InputPathsMap to customize the data sent to the target.
        var inputTemplate: String = ""
        /// Map of JSON paths to be extracted from the event. These are key-value pairs, where each value is a JSON path.
        var inputPathsMap: [String: String]? = nil

        public init() {}

        public init(inputTemplate: String, inputPathsMap: [String: String]? = nil) {
            self.inputTemplate = inputTemplate
            self.inputPathsMap = inputPathsMap
        }

    }

    public struct PutTargetsResponse: Serializable, Initializable {
        /// The number of failed entries.
        var failedEntryCount: Int32? = nil
        /// The failed target entries.
        var failedEntries: [PutTargetsResultEntry]? = nil

        public init() {}

        public init(failedEntryCount: Int32? = nil, failedEntries: [PutTargetsResultEntry]? = nil) {
            self.failedEntryCount = failedEntryCount
            self.failedEntries = failedEntries
        }

    }

    public struct Rule: Serializable, Initializable {
        /// The Amazon Resource Name (ARN) of the rule.
        var arn: String? = nil
        /// The state of the rule.
        var state: String? = nil
        /// The name of the rule.
        var name: String? = nil
        /// The event pattern of the rule.
        var eventPattern: String? = nil
        /// The Amazon Resource Name (ARN) of the role that is used for target invocation.
        var roleArn: String? = nil
        /// The scheduling expression. For example, "cron(0 20 * * ? *)", "rate(5 minutes)".
        var scheduleExpression: String? = nil
        /// The description of the rule.
        var description: String? = nil

        public init() {}

        public init(arn: String? = nil, state: String? = nil, name: String? = nil, eventPattern: String? = nil, roleArn: String? = nil, scheduleExpression: String? = nil, description: String? = nil) {
            self.arn = arn
            self.state = state
            self.name = name
            self.eventPattern = eventPattern
            self.roleArn = roleArn
            self.scheduleExpression = scheduleExpression
            self.description = description
        }

    }

    public struct Target: Serializable, Initializable {
        /// Parameters used when you are using the rule to invoke Amazon EC2 Run Command.
        var runCommandParameters: RunCommandParameters? = nil
        /// Settings to enable you to provide custom input to a target based on certain event data. You can extract one or more key-value pairs from the event and then use that data to send customized input to the target.
        var inputTransformer: InputTransformer? = nil
        /// The Amazon Resource Name (ARN) of the target.
        var arn: String = ""
        /// Valid JSON text passed to the target. In this case, nothing from the event itself is passed to the target. For more information, see The JavaScript Object Notation (JSON) Data Interchange Format.
        var input: String? = nil
        /// The value of the JSONPath that is used for extracting part of the matched event when passing it to the target. For more information about JSON paths, see JSONPath.
        var inputPath: String? = nil
        /// Contains the Amazon ECS task definition and task count to be used, if the event target is an Amazon ECS task. For more information about Amazon ECS tasks, see Task Definitions  in the Amazon EC2 Container Service Developer Guide.
        var ecsParameters: EcsParameters? = nil
        /// The Amazon Resource Name (ARN) of the IAM role to be used for this target when the rule is triggered. If one rule triggers multiple targets, you can use a different IAM role for each target.
        var roleArn: String? = nil
        /// The custom parameter you can use to control shard assignment, when the target is an Amazon Kinesis stream. If you do not include this parameter, the default is to use the eventId as the partition key.
        var kinesisParameters: KinesisParameters? = nil
        /// The ID of the target.
        var id: String = ""

        public init() {}

        public init(runCommandParameters: RunCommandParameters? = nil, inputTransformer: InputTransformer? = nil, arn: String, input: String? = nil, inputPath: String? = nil, ecsParameters: EcsParameters? = nil, roleArn: String? = nil, kinesisParameters: KinesisParameters? = nil, id: String) {
            self.runCommandParameters = runCommandParameters
            self.inputTransformer = inputTransformer
            self.arn = arn
            self.input = input
            self.inputPath = inputPath
            self.ecsParameters = ecsParameters
            self.roleArn = roleArn
            self.kinesisParameters = kinesisParameters
            self.id = id
        }

    }

    public struct DisableRuleRequest: Serializable, Initializable {
        /// The name of the rule.
        var name: String = ""

        public init() {}

        public init(name: String) {
            self.name = name
        }

    }

    public struct TestEventPatternRequest: Serializable, Initializable {
        /// The event, in JSON format, to test against the event pattern.
        var event: String = ""
        /// The event pattern.
        var eventPattern: String = ""

        public init() {}

        public init(event: String, eventPattern: String) {
            self.event = event
            self.eventPattern = eventPattern
        }

    }

    public struct RunCommandTarget: Serializable, Initializable {
        /// Can be either tag: tag-key or InstanceIds.
        var key: String = ""
        /// If Key is tag: tag-key, Values is a list of tag values. If Key is InstanceIds, Values is a list of Amazon EC2 instance IDs.
        var values: [String] = []

        public init() {}

        public init(key: String, values: [String]) {
            self.key = key
            self.values = values
        }

    }

    public struct ListRuleNamesByTargetRequest: Serializable, Initializable {
        /// The token returned by a previous call to retrieve the next set of results.
        var nextToken: String? = nil
        /// The Amazon Resource Name (ARN) of the target resource.
        var targetArn: String = ""
        /// The maximum number of results to return.
        var limit: Int32? = nil

        public init() {}

        public init(nextToken: String? = nil, targetArn: String, limit: Int32? = nil) {
            self.nextToken = nextToken
            self.targetArn = targetArn
            self.limit = limit
        }

    }

    public struct PutRuleRequest: Serializable, Initializable {
        /// A description of the rule.
        var description: String? = nil
        /// The event pattern.
        var eventPattern: String? = nil
        /// The Amazon Resource Name (ARN) of the IAM role associated with the rule.
        var roleArn: String? = nil
        /// The scheduling expression. For example, "cron(0 20 * * ? *)", "rate(5 minutes)".
        var scheduleExpression: String? = nil
        /// The name of the rule that you are creating or updating.
        var name: String = ""
        /// Indicates whether the rule is enabled or disabled.
        var state: String? = nil

        public init() {}

        public init(description: String? = nil, eventPattern: String? = nil, roleArn: String? = nil, scheduleExpression: String? = nil, name: String, state: String? = nil) {
            self.description = description
            self.eventPattern = eventPattern
            self.roleArn = roleArn
            self.scheduleExpression = scheduleExpression
            self.name = name
            self.state = state
        }

    }

    public struct RunCommandParameters: Serializable, Initializable {
        /// Currently, we support including only one RunCommandTarget block, which specifies either an array of InstanceIds or a tag.
        var runCommandTargets: [RunCommandTarget] = []

        public init() {}

        public init(runCommandTargets: [RunCommandTarget]) {
            self.runCommandTargets = runCommandTargets
        }

    }

    public struct ListTargetsByRuleResponse: Serializable, Initializable {
        /// The targets assigned to the rule.
        var targets: [Target]? = nil
        /// Indicates whether there are additional results to retrieve. If there are no more results, the value is null.
        var nextToken: String? = nil

        public init() {}

        public init(targets: [Target]? = nil, nextToken: String? = nil) {
            self.targets = targets
            self.nextToken = nextToken
        }

    }

    public struct DeleteRuleRequest: Serializable, Initializable {
        /// The name of the rule.
        var name: String = ""

        public init() {}

        public init(name: String) {
            self.name = name
        }

    }

    public struct DescribeRuleResponse: Serializable, Initializable {
        /// The Amazon Resource Name (ARN) of the rule.
        var arn: String? = nil
        /// Specifies whether the rule is enabled or disabled.
        var state: String? = nil
        /// The name of the rule.
        var name: String? = nil
        /// The event pattern.
        var eventPattern: String? = nil
        /// The Amazon Resource Name (ARN) of the IAM role associated with the rule.
        var roleArn: String? = nil
        /// The scheduling expression. For example, "cron(0 20 * * ? *)", "rate(5 minutes)".
        var scheduleExpression: String? = nil
        /// The description of the rule.
        var description: String? = nil

        public init() {}

        public init(arn: String? = nil, state: String? = nil, name: String? = nil, eventPattern: String? = nil, roleArn: String? = nil, scheduleExpression: String? = nil, description: String? = nil) {
            self.arn = arn
            self.state = state
            self.name = name
            self.eventPattern = eventPattern
            self.roleArn = roleArn
            self.scheduleExpression = scheduleExpression
            self.description = description
        }

    }

    public struct PutEventsRequest: Serializable, Initializable {
        /// The entry that defines an event in your system. You can specify several parameters for the entry such as the source and type of the event, resources associated with the event, and so on.
        var entries: [PutEventsRequestEntry] = []

        public init() {}

        public init(entries: [PutEventsRequestEntry]) {
            self.entries = entries
        }

    }

    public struct PutEventsRequestEntry: Serializable, Initializable {
        /// In the JSON sense, an object containing fields, which may also contain nested subobjects. No constraints are imposed on its contents.
        var detail: String? = nil
        /// Free-form string used to decide what fields to expect in the event detail.
        var detailType: String? = nil
        /// The source of the event.
        var source: String? = nil
        /// The timestamp of the event, per RFC3339. If no timestamp is provided, the timestamp of the PutEvents call is used.
        var time: Date? = nil
        /// AWS resources, identified by Amazon Resource Name (ARN), which the event primarily concerns. Any number, including zero, may be present.
        var resources: [String]? = nil

        public init() {}

        public init(detail: String? = nil, detailType: String? = nil, source: String? = nil, time: Date? = nil, resources: [String]? = nil) {
            self.detail = detail
            self.detailType = detailType
            self.source = source
            self.time = time
            self.resources = resources
        }

    }

    public struct RemoveTargetsResultEntry: Serializable, Initializable {
        /// The error message that explains why the target removal failed.
        var errorMessage: String? = nil
        /// The error code that indicates why the target removal failed.
        var errorCode: String? = nil
        /// The ID of the target.
        var targetId: String? = nil

        public init() {}

        public init(errorMessage: String? = nil, errorCode: String? = nil, targetId: String? = nil) {
            self.errorMessage = errorMessage
            self.errorCode = errorCode
            self.targetId = targetId
        }

    }

    public struct TestEventPatternResponse: Serializable, Initializable {
        /// Indicates whether the event matches the event pattern.
        var result: Bool? = nil

        public init() {}

        public init(result: Bool? = nil) {
            self.result = result
        }

    }

    public struct PutTargetsRequest: Serializable, Initializable {
        /// The targets to update or add to the rule.
        var targets: [Target] = []
        /// The name of the rule.
        var rule: String = ""

        public init() {}

        public init(targets: [Target], rule: String) {
            self.targets = targets
            self.rule = rule
        }

    }

    public struct EnableRuleRequest: Serializable, Initializable {
        /// The name of the rule.
        var name: String = ""

        public init() {}

        public init(name: String) {
            self.name = name
        }

    }

    public struct PutTargetsResultEntry: Serializable, Initializable {
        /// The error message that explains why the target addition failed.
        var errorMessage: String? = nil
        /// The error code that indicates why the target addition failed.
        var errorCode: String? = nil
        /// The ID of the target.
        var targetId: String? = nil

        public init() {}

        public init(errorMessage: String? = nil, errorCode: String? = nil, targetId: String? = nil) {
            self.errorMessage = errorMessage
            self.errorCode = errorCode
            self.targetId = targetId
        }

    }

    public struct ListRulesResponse: Serializable, Initializable {
        /// Indicates whether there are additional results to retrieve. If there are no more results, the value is null.
        var nextToken: String? = nil
        /// The rules that match the specified criteria.
        var rules: [Rule]? = nil

        public init() {}

        public init(nextToken: String? = nil, rules: [Rule]? = nil) {
            self.nextToken = nextToken
            self.rules = rules
        }

    }

    public struct RemoveTargetsResponse: Serializable, Initializable {
        /// The number of failed entries.
        var failedEntryCount: Int32? = nil
        /// The failed target entries.
        var failedEntries: [RemoveTargetsResultEntry]? = nil

        public init() {}

        public init(failedEntryCount: Int32? = nil, failedEntries: [RemoveTargetsResultEntry]? = nil) {
            self.failedEntryCount = failedEntryCount
            self.failedEntries = failedEntries
        }

    }

    public struct EcsParameters: Serializable, Initializable {
        /// The number of tasks to create based on the TaskDefinition. The default is one.
        var taskCount: Int32? = nil
        /// The ARN of the task definition to use if the event target is an Amazon ECS cluster. 
        var taskDefinitionArn: String = ""

        public init() {}

        public init(taskCount: Int32? = nil, taskDefinitionArn: String) {
            self.taskCount = taskCount
            self.taskDefinitionArn = taskDefinitionArn
        }

    }

    public struct DescribeRuleRequest: Serializable, Initializable {
        /// The name of the rule.
        var name: String = ""

        public init() {}

        public init(name: String) {
            self.name = name
        }

    }

    public struct RemoveTargetsRequest: Serializable, Initializable {
        /// The IDs of the targets to remove from the rule.
        var ids: [String] = []
        /// The name of the rule.
        var rule: String = ""

        public init() {}

        public init(ids: [String], rule: String) {
            self.ids = ids
            self.rule = rule
        }

    }

    public struct PutRuleResponse: Serializable, Initializable {
        /// The Amazon Resource Name (ARN) of the rule.
        var ruleArn: String? = nil

        public init() {}

        public init(ruleArn: String? = nil) {
            self.ruleArn = ruleArn
        }

    }

    public struct ListRulesRequest: Serializable, Initializable {
        /// The prefix matching the rule name.
        var namePrefix: String? = nil
        /// The token returned by a previous call to retrieve the next set of results.
        var nextToken: String? = nil
        /// The maximum number of results to return.
        var limit: Int32? = nil

        public init() {}

        public init(namePrefix: String? = nil, nextToken: String? = nil, limit: Int32? = nil) {
            self.namePrefix = namePrefix
            self.nextToken = nextToken
            self.limit = limit
        }

    }

    public struct ListRuleNamesByTargetResponse: Serializable, Initializable {
        /// Indicates whether there are additional results to retrieve. If there are no more results, the value is null.
        var nextToken: String? = nil
        /// The names of the rules that can invoke the given target.
        var ruleNames: [String]? = nil

        public init() {}

        public init(nextToken: String? = nil, ruleNames: [String]? = nil) {
            self.nextToken = nextToken
            self.ruleNames = ruleNames
        }

    }

    public struct ListTargetsByRuleRequest: Serializable, Initializable {
        /// The name of the rule.
        var rule: String = ""
        /// The token returned by a previous call to retrieve the next set of results.
        var nextToken: String? = nil
        /// The maximum number of results to return.
        var limit: Int32? = nil

        public init() {}

        public init(rule: String, nextToken: String? = nil, limit: Int32? = nil) {
            self.rule = rule
            self.nextToken = nextToken
            self.limit = limit
        }

    }

    public struct PutEventsResultEntry: Serializable, Initializable {
        /// The error message that explains why the event submission failed.
        var errorMessage: String? = nil
        /// The ID of the event.
        var eventId: String? = nil
        /// The error code that indicates why the event submission failed.
        var errorCode: String? = nil

        public init() {}

        public init(errorMessage: String? = nil, eventId: String? = nil, errorCode: String? = nil) {
            self.errorMessage = errorMessage
            self.eventId = eventId
            self.errorCode = errorCode
        }

    }

    public struct PutEventsResponse: Serializable, Initializable {
        /// The number of failed entries.
        var failedEntryCount: Int32? = nil
        /// The successfully and unsuccessfully ingested events results. If the ingestion was successful, the entry has the event ID in it. Otherwise, you can use the error code and error message to identify the problem with the entry.
        var entries: [PutEventsResultEntry]? = nil

        public init() {}

        public init(failedEntryCount: Int32? = nil, entries: [PutEventsResultEntry]? = nil) {
            self.failedEntryCount = failedEntryCount
            self.entries = entries
        }

    }

    public struct KinesisParameters: Serializable, Initializable {
        /// The JSON path to be extracted from the event and used as the partition key. For more information, see Amazon Kinesis Streams Key Concepts in the Amazon Kinesis Streams Developer Guide.
        var partitionKeyPath: String = ""

        public init() {}

        public init(partitionKeyPath: String) {
            self.partitionKeyPath = partitionKeyPath
        }

    }

}