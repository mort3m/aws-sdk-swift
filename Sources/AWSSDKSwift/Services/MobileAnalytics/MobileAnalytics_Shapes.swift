// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension MobileAnalytics {

    public struct Event: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "attributes", required: false, type: .map), 
            AWSShapeMember(label: "metrics", required: false, type: .map), 
            AWSShapeMember(label: "eventType", required: true, type: .string), 
            AWSShapeMember(label: "session", required: false, type: .structure), 
            AWSShapeMember(label: "version", required: false, type: .string), 
            AWSShapeMember(label: "timestamp", required: true, type: .string)
        ]
        /// A collection of key-value pairs that give additional context to the event. The key-value pairs are specified by the developer. This collection can be empty or the attribute object can be omitted.
        public let attributes: [String: String]?
        /// A collection of key-value pairs that gives additional, measurable context to the event. The key-value pairs are specified by the developer. This collection can be empty or the attribute object can be omitted.
        public let metrics: [String: Double]?
        /// A name signifying an event that occurred in your app. This is used for grouping and aggregating like events together for reporting purposes.
        public let eventType: String
        /// The session the event occured within. 
        public let session: Session?
        /// The version of the event.
        public let version: String?
        /// The time the event occurred in ISO 8601 standard date time format. For example, 2014-06-30T19:07:47.885Z
        public let timestamp: String

        public init(attributes: [String: String]? = nil, metrics: [String: Double]? = nil, eventType: String, session: Session? = nil, version: String? = nil, timestamp: String) {
            self.attributes = attributes
            self.metrics = metrics
            self.eventType = eventType
            self.session = session
            self.version = version
            self.timestamp = timestamp
        }

        private enum CodingKeys: String, CodingKey {
            case attributes = "attributes"
            case metrics = "metrics"
            case eventType = "eventType"
            case session = "session"
            case version = "version"
            case timestamp = "timestamp"
        }
    }

    public struct PutEventsInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "clientContextEncoding", location: .header(locationName: "x-amz-Client-Context-Encoding"), required: false, type: .string), 
            AWSShapeMember(label: "events", required: true, type: .list), 
            AWSShapeMember(label: "clientContext", location: .header(locationName: "x-amz-Client-Context"), required: true, type: .string)
        ]
        /// The encoding used for the client context.
        public let clientContextEncoding: String?
        /// An array of Event JSON objects
        public let events: [Event]
        /// The client context including the client ID, app title, app version and package name.
        public let clientContext: String

        public init(clientContextEncoding: String? = nil, events: [Event], clientContext: String) {
            self.clientContextEncoding = clientContextEncoding
            self.events = events
            self.clientContext = clientContext
        }

        private enum CodingKeys: String, CodingKey {
            case clientContextEncoding = "x-amz-Client-Context-Encoding"
            case events = "events"
            case clientContext = "x-amz-Client-Context"
        }
    }

    public struct Session: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "duration", required: false, type: .long), 
            AWSShapeMember(label: "startTimestamp", required: false, type: .string), 
            AWSShapeMember(label: "stopTimestamp", required: false, type: .string), 
            AWSShapeMember(label: "id", required: false, type: .string)
        ]
        /// The duration of the session.
        public let duration: Int64?
        /// The time the event started in ISO 8601 standard date time format. For example, 2014-06-30T19:07:47.885Z
        public let startTimestamp: String?
        /// The time the event terminated in ISO 8601 standard date time format. For example, 2014-06-30T19:07:47.885Z
        public let stopTimestamp: String?
        /// A unique identifier for the session
        public let id: String?

        public init(duration: Int64? = nil, startTimestamp: String? = nil, stopTimestamp: String? = nil, id: String? = nil) {
            self.duration = duration
            self.startTimestamp = startTimestamp
            self.stopTimestamp = stopTimestamp
            self.id = id
        }

        private enum CodingKeys: String, CodingKey {
            case duration = "duration"
            case startTimestamp = "startTimestamp"
            case stopTimestamp = "stopTimestamp"
            case id = "id"
        }
    }

}