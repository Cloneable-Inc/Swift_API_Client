//
// GetCodeGenRequestInputsInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct GetCodeGenRequestInputsInner: Sendable, Codable, ParameterConvertible, Hashable {

    public var type: String
    public var name: String
    public var isArray: Bool

    public init(type: String, name: String, isArray: Bool) {
        self.type = type
        self.name = name
        self.isArray = isArray
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case name
        case isArray
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(name, forKey: .name)
        try container.encode(isArray, forKey: .isArray)
    }
}

