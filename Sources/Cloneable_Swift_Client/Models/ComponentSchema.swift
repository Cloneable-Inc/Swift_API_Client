//
// ComponentSchema.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ComponentSchema: Sendable, Codable, ParameterConvertible, Hashable {

    public var id: UUID
    public var schema: ComponentSchemaSchema
    public var companyId: String
    public var createdAt: Date
    public var createdBy: String
    public var updatedAt: Date
    public var name: String
    public var description: String?
    public var version: String
    public var target: String
    public var isPublic: Bool
    public var isActive: Bool
    public var deletedAt: Date?
    public var documentation: String?
    public var promptInstructions: String?
    public var code: String?

    public init(id: UUID, schema: ComponentSchemaSchema, companyId: String, createdAt: Date, createdBy: String, updatedAt: Date, name: String, description: String?, version: String, target: String, isPublic: Bool, isActive: Bool, deletedAt: Date?, documentation: String?, promptInstructions: String?, code: String?) {
        self.id = id
        self.schema = schema
        self.companyId = companyId
        self.createdAt = createdAt
        self.createdBy = createdBy
        self.updatedAt = updatedAt
        self.name = name
        self.description = description
        self.version = version
        self.target = target
        self.isPublic = isPublic
        self.isActive = isActive
        self.deletedAt = deletedAt
        self.documentation = documentation
        self.promptInstructions = promptInstructions
        self.code = code
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case schema
        case companyId = "company_id"
        case createdAt = "created_at"
        case createdBy = "created_by"
        case updatedAt = "updated_at"
        case name
        case description
        case version
        case target
        case isPublic = "is_public"
        case isActive = "is_active"
        case deletedAt = "deleted_at"
        case documentation
        case promptInstructions = "prompt_instructions"
        case code
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(schema, forKey: .schema)
        try container.encode(companyId, forKey: .companyId)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(createdBy, forKey: .createdBy)
        try container.encode(updatedAt, forKey: .updatedAt)
        try container.encode(name, forKey: .name)
        try container.encode(description, forKey: .description)
        try container.encode(version, forKey: .version)
        try container.encode(target, forKey: .target)
        try container.encode(isPublic, forKey: .isPublic)
        try container.encode(isActive, forKey: .isActive)
        try container.encode(deletedAt, forKey: .deletedAt)
        try container.encode(documentation, forKey: .documentation)
        try container.encode(promptInstructions, forKey: .promptInstructions)
        try container.encode(code, forKey: .code)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension ComponentSchema: Identifiable {}
