//
// CreateTriggerRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct CreateTriggerRequest: Sendable, Codable, ParameterConvertible, Hashable {

    public enum Runtime: String, Sendable, Codable, CaseIterable {
        case python = "python"
        case javascript = "javascript"
    }
    public enum ModelType: String, Sendable, Codable, CaseIterable {
        case scheduled = "scheduled"
        case webhook = "webhook"
        case dataChange = "data_change"
    }
    public enum ExecutionType: String, Sendable, Codable, CaseIterable {
        case single = "single"
        case multiple = "multiple"
    }
    public enum ResourcePreset: String, Sendable, Codable, CaseIterable {
        case basic = "basic"
        case boost = "boost"
        case performance = "performance"
    }
    public var name: String
    public var description: String
    public var code: String
    public var runtime: Runtime
    public var schedule: String?
    public var type: ModelType
    public var executionType: ExecutionType?
    public var executionWaitTime: Double?
    public var resourcePreset: ResourcePreset?

    public init(name: String, description: String, code: String, runtime: Runtime, schedule: String? = nil, type: ModelType, executionType: ExecutionType? = nil, executionWaitTime: Double? = nil, resourcePreset: ResourcePreset? = nil) {
        self.name = name
        self.description = description
        self.code = code
        self.runtime = runtime
        self.schedule = schedule
        self.type = type
        self.executionType = executionType
        self.executionWaitTime = executionWaitTime
        self.resourcePreset = resourcePreset
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case description
        case code
        case runtime
        case schedule
        case type
        case executionType = "execution_type"
        case executionWaitTime = "execution_wait_time"
        case resourcePreset = "resource_preset"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(description, forKey: .description)
        try container.encode(code, forKey: .code)
        try container.encode(runtime, forKey: .runtime)
        try container.encodeIfPresent(schedule, forKey: .schedule)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(executionType, forKey: .executionType)
        try container.encodeIfPresent(executionWaitTime, forKey: .executionWaitTime)
        try container.encodeIfPresent(resourcePreset, forKey: .resourcePreset)
    }
}

