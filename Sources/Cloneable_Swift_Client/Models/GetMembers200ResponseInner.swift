//
// GetMembers200ResponseInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct GetMembers200ResponseInner: Sendable, Codable, ParameterConvertible, Hashable {

    public var id: String
    public var email: String
    public var name: String
    public var phone: String
    public var roles: [String]
    public var status: String

    public init(id: String, email: String, name: String, phone: String, roles: [String], status: String) {
        self.id = id
        self.email = email
        self.name = name
        self.phone = phone
        self.roles = roles
        self.status = status
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case email
        case name
        case phone
        case roles
        case status
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(email, forKey: .email)
        try container.encode(name, forKey: .name)
        try container.encode(phone, forKey: .phone)
        try container.encode(roles, forKey: .roles)
        try container.encode(status, forKey: .status)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension GetMembers200ResponseInner: Identifiable {}
