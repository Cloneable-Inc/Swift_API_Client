//
// GetOneExecution200ResponseInputsParametersInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct GetOneExecution200ResponseInputsParametersInner: Sendable, Codable, ParameterConvertible, Hashable {

    public var name: String
    public var type: String
    public var _required: Bool
    public var description: String?

    public init(name: String, type: String, _required: Bool, description: String? = nil) {
        self.name = name
        self.type = type
        self._required = _required
        self.description = description
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case type
        case _required = "required"
        case description
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(type, forKey: .type)
        try container.encode(_required, forKey: ._required)
        try container.encodeIfPresent(description, forKey: .description)
    }
}

