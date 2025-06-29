//
// ChatAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class ChatAPI {

    /**

     - parameter chatRequest: (body) Body (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func chat(chatRequest: ChatRequest? = nil, apiConfiguration: Cloneable_Swift_ClientAPIConfiguration = Cloneable_Swift_ClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await chatWithRequestBuilder(chatRequest: chatRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     - POST /llm/gpt-4o
     - parameter chatRequest: (body) Body (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func chatWithRequestBuilder(chatRequest: ChatRequest? = nil, apiConfiguration: Cloneable_Swift_ClientAPIConfiguration = Cloneable_Swift_ClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/llm/gpt-4o"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: chatRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Get chat components
     
     - parameter id: (path)  
     - parameter componentAssitantRequestInner: (body) Body (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func componentAssitant(id: String, componentAssitantRequestInner: [ComponentAssitantRequestInner]? = nil, apiConfiguration: Cloneable_Swift_ClientAPIConfiguration = Cloneable_Swift_ClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await componentAssitantWithRequestBuilder(id: id, componentAssitantRequestInner: componentAssitantRequestInner, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get chat components
     - POST /chat/components/{id}
     - parameter id: (path)  
     - parameter componentAssitantRequestInner: (body) Body (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func componentAssitantWithRequestBuilder(id: String, componentAssitantRequestInner: [ComponentAssitantRequestInner]? = nil, apiConfiguration: Cloneable_Swift_ClientAPIConfiguration = Cloneable_Swift_ClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/chat/components/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: componentAssitantRequestInner, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Get chat code gen stream
     
     - parameter getCodeGenRequest: (body) Body (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getCodeGen(getCodeGenRequest: GetCodeGenRequest? = nil, apiConfiguration: Cloneable_Swift_ClientAPIConfiguration = Cloneable_Swift_ClientAPIConfiguration.shared) async throws(ErrorResponse) {
        return try await getCodeGenWithRequestBuilder(getCodeGenRequest: getCodeGenRequest, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get chat code gen stream
     - POST /chat/code-gen
     - parameter getCodeGenRequest: (body) Body (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func getCodeGenWithRequestBuilder(getCodeGenRequest: GetCodeGenRequest? = nil, apiConfiguration: Cloneable_Swift_ClientAPIConfiguration = Cloneable_Swift_ClientAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/chat/code-gen"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: getCodeGenRequest, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }
}
