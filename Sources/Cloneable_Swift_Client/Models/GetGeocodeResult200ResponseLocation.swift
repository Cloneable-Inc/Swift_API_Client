//
// GetGeocodeResult200ResponseLocation.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct GetGeocodeResult200ResponseLocation: Sendable, Codable, ParameterConvertible, Hashable {

    public var x: String
    public var y: String

    public init(x: String, y: String) {
        self.x = x
        self.y = y
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case x
        case y
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(x, forKey: .x)
        try container.encode(y, forKey: .y)
    }
}

