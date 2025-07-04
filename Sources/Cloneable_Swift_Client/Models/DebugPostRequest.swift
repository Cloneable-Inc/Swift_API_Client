//
// DebugPostRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct DebugPostRequest: Sendable, Codable, ParameterConvertible, Hashable {

    public enum Action: String, Sendable, Codable, CaseIterable {
        case reset = "reset"
        case autoRecover = "auto_recover"
        case resumeProcessing = "resume_processing"
        case forceProcessQueue = "force_process_queue"
    }
    public var action: Action

    public init(action: Action) {
        self.action = action
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case action
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(action, forKey: .action)
    }
}

