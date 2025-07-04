//
// GetOneExecution200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct GetOneExecution200Response: Sendable, Codable, ParameterConvertible, Hashable {

    public var id: UUID
    public var triggerId: UUID
    public var status: String
    public var createdAt: Date
    public var startedAt: Date?
    public var completedAt: Date?
    public var error: String?
    public var inputs: GetOneExecution200ResponseInputs
    public var outputs: GetOneExecution200ResponseInputs
    public var metadata: GetOneExecution200ResponseMetadata
    public var resourceLimits: GetOneExecution200ResponseResourceLimits
    public var resourceUsage: GetOneExecution200ResponseResourceUsage

    public init(id: UUID, triggerId: UUID, status: String, createdAt: Date, startedAt: Date?, completedAt: Date?, error: String?, inputs: GetOneExecution200ResponseInputs, outputs: GetOneExecution200ResponseInputs, metadata: GetOneExecution200ResponseMetadata, resourceLimits: GetOneExecution200ResponseResourceLimits, resourceUsage: GetOneExecution200ResponseResourceUsage) {
        self.id = id
        self.triggerId = triggerId
        self.status = status
        self.createdAt = createdAt
        self.startedAt = startedAt
        self.completedAt = completedAt
        self.error = error
        self.inputs = inputs
        self.outputs = outputs
        self.metadata = metadata
        self.resourceLimits = resourceLimits
        self.resourceUsage = resourceUsage
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case triggerId = "trigger_id"
        case status
        case createdAt = "created_at"
        case startedAt = "started_at"
        case completedAt = "completed_at"
        case error
        case inputs
        case outputs
        case metadata
        case resourceLimits = "resource_limits"
        case resourceUsage = "resource_usage"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(triggerId, forKey: .triggerId)
        try container.encode(status, forKey: .status)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(startedAt, forKey: .startedAt)
        try container.encode(completedAt, forKey: .completedAt)
        try container.encode(error, forKey: .error)
        try container.encode(inputs, forKey: .inputs)
        try container.encode(outputs, forKey: .outputs)
        try container.encode(metadata, forKey: .metadata)
        try container.encode(resourceLimits, forKey: .resourceLimits)
        try container.encode(resourceUsage, forKey: .resourceUsage)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension GetOneExecution200Response: Identifiable {}
