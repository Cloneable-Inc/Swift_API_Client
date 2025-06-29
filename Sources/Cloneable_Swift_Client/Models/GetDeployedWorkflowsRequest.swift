//
// GetDeployedWorkflowsRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct GetDeployedWorkflowsRequest: Sendable, Codable, ParameterConvertible, Hashable {

    public var id: [String]?
    public var filters: GetDeployedWorkflowsRequestFilters?
    public var latest: String?

    public init(id: [String]? = nil, filters: GetDeployedWorkflowsRequestFilters? = nil, latest: String? = nil) {
        self.id = id
        self.filters = filters
        self.latest = latest
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case filters
        case latest
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(filters, forKey: .filters)
        try container.encodeIfPresent(latest, forKey: .latest)
    }
}

