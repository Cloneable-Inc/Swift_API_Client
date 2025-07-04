//
// FindDataObjectFieldsByArrayValue200ResponseInnerFieldsInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct FindDataObjectFieldsByArrayValue200ResponseInnerFieldsInner: Sendable, Codable, ParameterConvertible, Hashable {

    public var id: String
    public var dataObjectId: String
    public var fieldName: String
    public var value: JSONValue?
    public var createdAt: Date
    public var updatedAt: Date

    public init(id: String, dataObjectId: String, fieldName: String, value: JSONValue? = nil, createdAt: Date, updatedAt: Date) {
        self.id = id
        self.dataObjectId = dataObjectId
        self.fieldName = fieldName
        self.value = value
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case dataObjectId = "data_object_id"
        case fieldName = "field_name"
        case value
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(dataObjectId, forKey: .dataObjectId)
        try container.encode(fieldName, forKey: .fieldName)
        try container.encodeIfPresent(value, forKey: .value)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(updatedAt, forKey: .updatedAt)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension FindDataObjectFieldsByArrayValue200ResponseInnerFieldsInner: Identifiable {}
