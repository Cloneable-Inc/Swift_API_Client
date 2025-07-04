//
// GetOneExecution200ResponseResourceUsage.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct GetOneExecution200ResponseResourceUsage: Sendable, Codable, ParameterConvertible, Hashable {

    public var cpuUsed: Double?
    public var memoryUsed: Double?
    public var duration: Double?

    public init(cpuUsed: Double?, memoryUsed: Double?, duration: Double?) {
        self.cpuUsed = cpuUsed
        self.memoryUsed = memoryUsed
        self.duration = duration
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case cpuUsed = "cpu_used"
        case memoryUsed = "memory_used"
        case duration
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(cpuUsed, forKey: .cpuUsed)
        try container.encode(memoryUsed, forKey: .memoryUsed)
        try container.encode(duration, forKey: .duration)
    }
}

