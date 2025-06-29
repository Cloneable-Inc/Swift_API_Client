//
// DeployedWorkflowSchemaComponentsInnerOutputsInnerOutputConnectionsInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct DeployedWorkflowSchemaComponentsInnerOutputsInnerOutputConnectionsInner: Sendable, Codable, ParameterConvertible, Hashable {

    public var targetInputStaticId: String
    public var targetDynamicId: String
    public var targetInput: String
    public var targetStaticId: String
    public var targetType: String

    public init(targetInputStaticId: String, targetDynamicId: String, targetInput: String, targetStaticId: String, targetType: String) {
        self.targetInputStaticId = targetInputStaticId
        self.targetDynamicId = targetDynamicId
        self.targetInput = targetInput
        self.targetStaticId = targetStaticId
        self.targetType = targetType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case targetInputStaticId = "target_input_static_id"
        case targetDynamicId = "target_dynamic_id"
        case targetInput = "target_input"
        case targetStaticId = "target_static_id"
        case targetType = "target_type"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(targetInputStaticId, forKey: .targetInputStaticId)
        try container.encode(targetDynamicId, forKey: .targetDynamicId)
        try container.encode(targetInput, forKey: .targetInput)
        try container.encode(targetStaticId, forKey: .targetStaticId)
        try container.encode(targetType, forKey: .targetType)
    }
}

