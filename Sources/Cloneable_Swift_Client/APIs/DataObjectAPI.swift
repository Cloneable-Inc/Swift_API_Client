//
// DataObjectAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class DataObjectAPI {

    /**
     Archive a data object
     
     - parameter id: (path)  
     - parameter body: (body) Body (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: UpdateFile200Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func archiveDataObject(id: String, body: JSONValue? = nil, apiConfiguration: Cloneable_Swift_ClientAPIConfiguration = Cloneable_Swift_ClientAPIConfiguration.shared) async throws(ErrorResponse) -> UpdateFile200Response {
        return try await archiveDataObjectWithRequestBuilder(id: id, body: body, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Archive a data object
     - POST /data-object/{id}/archive
     - parameter id: (path)  
     - parameter body: (body) Body (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<UpdateFile200Response> 
     */
    open class func archiveDataObjectWithRequestBuilder(id: String, body: JSONValue? = nil, apiConfiguration: Cloneable_Swift_ClientAPIConfiguration = Cloneable_Swift_ClientAPIConfiguration.shared) -> RequestBuilder<UpdateFile200Response> {
        var localVariablePath = "/data-object/{id}/archive"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UpdateFile200Response>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Create a data object
     
     - parameter dataObjectSchema: (body) Body (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: UpdateFile200Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createDataObject(dataObjectSchema: DataObjectSchema? = nil, apiConfiguration: Cloneable_Swift_ClientAPIConfiguration = Cloneable_Swift_ClientAPIConfiguration.shared) async throws(ErrorResponse) -> UpdateFile200Response {
        return try await createDataObjectWithRequestBuilder(dataObjectSchema: dataObjectSchema, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create a data object
     - PUT /data-object
     - parameter dataObjectSchema: (body) Body (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<UpdateFile200Response> 
     */
    open class func createDataObjectWithRequestBuilder(dataObjectSchema: DataObjectSchema? = nil, apiConfiguration: Cloneable_Swift_ClientAPIConfiguration = Cloneable_Swift_ClientAPIConfiguration.shared) -> RequestBuilder<UpdateFile200Response> {
        let localVariablePath = "/data-object"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dataObjectSchema, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UpdateFile200Response>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Create an explorer page
     
     - parameter dataObjectSchema: (body) Body (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: UpdateFile200Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createExplorerPage(dataObjectSchema: DataObjectSchema? = nil, apiConfiguration: Cloneable_Swift_ClientAPIConfiguration = Cloneable_Swift_ClientAPIConfiguration.shared) async throws(ErrorResponse) -> UpdateFile200Response {
        return try await createExplorerPageWithRequestBuilder(dataObjectSchema: dataObjectSchema, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create an explorer page
     - PUT /explorer-page
     - parameter dataObjectSchema: (body) Body (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<UpdateFile200Response> 
     */
    open class func createExplorerPageWithRequestBuilder(dataObjectSchema: DataObjectSchema? = nil, apiConfiguration: Cloneable_Swift_ClientAPIConfiguration = Cloneable_Swift_ClientAPIConfiguration.shared) -> RequestBuilder<UpdateFile200Response> {
        let localVariablePath = "/explorer-page"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dataObjectSchema, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UpdateFile200Response>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Delete an explorer page
     
     - parameter id: (path)  
     - parameter body: (body) Body (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: DataObjectSchema
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deleteExplorerPage(id: String, body: JSONValue? = nil, apiConfiguration: Cloneable_Swift_ClientAPIConfiguration = Cloneable_Swift_ClientAPIConfiguration.shared) async throws(ErrorResponse) -> DataObjectSchema {
        return try await deleteExplorerPageWithRequestBuilder(id: id, body: body, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete an explorer page
     - DELETE /explorer-page/{id}
     - parameter id: (path)  
     - parameter body: (body) Body (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<DataObjectSchema> 
     */
    open class func deleteExplorerPageWithRequestBuilder(id: String, body: JSONValue? = nil, apiConfiguration: Cloneable_Swift_ClientAPIConfiguration = Cloneable_Swift_ClientAPIConfiguration.shared) -> RequestBuilder<DataObjectSchema> {
        var localVariablePath = "/explorer-page/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DataObjectSchema>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Get paginated data objects
     
     - parameter id: (query)  (optional)
     - parameter pageIndex: (query)  (optional)
     - parameter pageSize: (query)  (optional)
     - parameter filters: (query)  (optional)
     - parameter latest: (query)  (optional)
     - parameter sorting: (query)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: GetDataObjectsPaged200Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getDataObjectsPaged(id: [String]? = nil, pageIndex: Int? = nil, pageSize: Int? = nil, filters: GetDataObjectsPagedFiltersParameter? = nil, latest: String? = nil, sorting: GetDataObjectsPagedSortingParameter? = nil, apiConfiguration: Cloneable_Swift_ClientAPIConfiguration = Cloneable_Swift_ClientAPIConfiguration.shared) async throws(ErrorResponse) -> GetDataObjectsPaged200Response {
        return try await getDataObjectsPagedWithRequestBuilder(id: id, pageIndex: pageIndex, pageSize: pageSize, filters: filters, latest: latest, sorting: sorting, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get paginated data objects
     - GET /data-objects
     - parameter id: (query)  (optional)
     - parameter pageIndex: (query)  (optional)
     - parameter pageSize: (query)  (optional)
     - parameter filters: (query)  (optional)
     - parameter latest: (query)  (optional)
     - parameter sorting: (query)  (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<GetDataObjectsPaged200Response> 
     */
    open class func getDataObjectsPagedWithRequestBuilder(id: [String]? = nil, pageIndex: Int? = nil, pageSize: Int? = nil, filters: GetDataObjectsPagedFiltersParameter? = nil, latest: String? = nil, sorting: GetDataObjectsPagedSortingParameter? = nil, apiConfiguration: Cloneable_Swift_ClientAPIConfiguration = Cloneable_Swift_ClientAPIConfiguration.shared) -> RequestBuilder<GetDataObjectsPaged200Response> {
        let localVariablePath = "/data-objects"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "id": (wrappedValue: id?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "pageIndex": (wrappedValue: pageIndex?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "pageSize": (wrappedValue: pageSize?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "filters": (wrappedValue: filters?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "latest": (wrappedValue: latest?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sorting": (wrappedValue: sorting?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetDataObjectsPaged200Response>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Get all explorer pages
     
     - parameter apiConfiguration: The configuration for the http request.
     - returns: [DataObjectExplorerSchema]
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getExplorerPages(apiConfiguration: Cloneable_Swift_ClientAPIConfiguration = Cloneable_Swift_ClientAPIConfiguration.shared) async throws(ErrorResponse) -> [DataObjectExplorerSchema] {
        return try await getExplorerPagesWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Get all explorer pages
     - GET /explorer-pages
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<[DataObjectExplorerSchema]> 
     */
    open class func getExplorerPagesWithRequestBuilder(apiConfiguration: Cloneable_Swift_ClientAPIConfiguration = Cloneable_Swift_ClientAPIConfiguration.shared) -> RequestBuilder<[DataObjectExplorerSchema]> {
        let localVariablePath = "/explorer-pages"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[DataObjectExplorerSchema]>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Returns a data object by id
     
     - parameter id: (path)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: DataObjectSchema
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getOneDataObject(id: String, apiConfiguration: Cloneable_Swift_ClientAPIConfiguration = Cloneable_Swift_ClientAPIConfiguration.shared) async throws(ErrorResponse) -> DataObjectSchema {
        return try await getOneDataObjectWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Returns a data object by id
     - GET /data-object/{id}
     - parameter id: (path)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<DataObjectSchema> 
     */
    open class func getOneDataObjectWithRequestBuilder(id: String, apiConfiguration: Cloneable_Swift_ClientAPIConfiguration = Cloneable_Swift_ClientAPIConfiguration.shared) -> RequestBuilder<DataObjectSchema> {
        var localVariablePath = "/data-object/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DataObjectSchema>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Returns an array of data objects related to the data object id
     
     - parameter id: (path)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: [DataObjectSchema]
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRelatedDataObjects(id: String, apiConfiguration: Cloneable_Swift_ClientAPIConfiguration = Cloneable_Swift_ClientAPIConfiguration.shared) async throws(ErrorResponse) -> [DataObjectSchema] {
        return try await getRelatedDataObjectsWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Returns an array of data objects related to the data object id
     - GET /related-data-object/{id}
     - parameter id: (path)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<[DataObjectSchema]> 
     */
    open class func getRelatedDataObjectsWithRequestBuilder(id: String, apiConfiguration: Cloneable_Swift_ClientAPIConfiguration = Cloneable_Swift_ClientAPIConfiguration.shared) -> RequestBuilder<[DataObjectSchema]> {
        var localVariablePath = "/related-data-object/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[DataObjectSchema]>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Unarchive a data object
     
     - parameter id: (path)  
     - parameter body: (body) Body (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: UpdateFile200Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func unarchiveDataObject(id: String, body: JSONValue? = nil, apiConfiguration: Cloneable_Swift_ClientAPIConfiguration = Cloneable_Swift_ClientAPIConfiguration.shared) async throws(ErrorResponse) -> UpdateFile200Response {
        return try await unarchiveDataObjectWithRequestBuilder(id: id, body: body, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Unarchive a data object
     - POST /data-object/{id}/unarchive
     - parameter id: (path)  
     - parameter body: (body) Body (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<UpdateFile200Response> 
     */
    open class func unarchiveDataObjectWithRequestBuilder(id: String, body: JSONValue? = nil, apiConfiguration: Cloneable_Swift_ClientAPIConfiguration = Cloneable_Swift_ClientAPIConfiguration.shared) -> RequestBuilder<UpdateFile200Response> {
        var localVariablePath = "/data-object/{id}/unarchive"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UpdateFile200Response>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Update a fields for a data object
     
     - parameter id: (path)  
     - parameter updateDataObjectFieldsSchema: (body) Body (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: UpdateFile200Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateDataObjectField(id: String, updateDataObjectFieldsSchema: [UpdateDataObjectFieldsSchema]? = nil, apiConfiguration: Cloneable_Swift_ClientAPIConfiguration = Cloneable_Swift_ClientAPIConfiguration.shared) async throws(ErrorResponse) -> UpdateFile200Response {
        return try await updateDataObjectFieldWithRequestBuilder(id: id, updateDataObjectFieldsSchema: updateDataObjectFieldsSchema, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update a fields for a data object
     - POST /data-object/{id}/fields
     - parameter id: (path)  
     - parameter updateDataObjectFieldsSchema: (body) Body (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<UpdateFile200Response> 
     */
    open class func updateDataObjectFieldWithRequestBuilder(id: String, updateDataObjectFieldsSchema: [UpdateDataObjectFieldsSchema]? = nil, apiConfiguration: Cloneable_Swift_ClientAPIConfiguration = Cloneable_Swift_ClientAPIConfiguration.shared) -> RequestBuilder<UpdateFile200Response> {
        var localVariablePath = "/data-object/{id}/fields"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateDataObjectFieldsSchema, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UpdateFile200Response>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }

    /**
     Update an explorer page
     
     - parameter id: (path)  
     - parameter dataObjectSchema: (body) Body (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: UpdateFile200Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func updateExplorerPage(id: String, dataObjectSchema: DataObjectSchema? = nil, apiConfiguration: Cloneable_Swift_ClientAPIConfiguration = Cloneable_Swift_ClientAPIConfiguration.shared) async throws(ErrorResponse) -> UpdateFile200Response {
        return try await updateExplorerPageWithRequestBuilder(id: id, dataObjectSchema: dataObjectSchema, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Update an explorer page
     - POST /explorer-page/{id}
     - parameter id: (path)  
     - parameter dataObjectSchema: (body) Body (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<UpdateFile200Response> 
     */
    open class func updateExplorerPageWithRequestBuilder(id: String, dataObjectSchema: DataObjectSchema? = nil, apiConfiguration: Cloneable_Swift_ClientAPIConfiguration = Cloneable_Swift_ClientAPIConfiguration.shared) -> RequestBuilder<UpdateFile200Response> {
        var localVariablePath = "/explorer-page/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dataObjectSchema, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UpdateFile200Response>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false, apiConfiguration: apiConfiguration)
    }
}
