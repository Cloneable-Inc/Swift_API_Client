# DataObjectAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**archiveDataObject**](DataObjectAPI.md#archivedataobject) | **POST** /data-object/{id}/archive | Archive a data object
[**createDataObject**](DataObjectAPI.md#createdataobject) | **PUT** /data-object | Create a data object
[**createExplorerPage**](DataObjectAPI.md#createexplorerpage) | **PUT** /explorer-page | Create an explorer page
[**deleteExplorerPage**](DataObjectAPI.md#deleteexplorerpage) | **DELETE** /explorer-page/{id} | Delete an explorer page
[**getDataObjectsPaged**](DataObjectAPI.md#getdataobjectspaged) | **GET** /data-objects | Get paginated data objects
[**getExplorerPages**](DataObjectAPI.md#getexplorerpages) | **GET** /explorer-pages | Get all explorer pages
[**getOneDataObject**](DataObjectAPI.md#getonedataobject) | **GET** /data-object/{id} | Returns a data object by id
[**getRelatedDataObjects**](DataObjectAPI.md#getrelateddataobjects) | **GET** /related-data-object/{id} | Returns an array of data objects related to the data object id
[**unarchiveDataObject**](DataObjectAPI.md#unarchivedataobject) | **POST** /data-object/{id}/unarchive | Unarchive a data object
[**updateDataObjectField**](DataObjectAPI.md#updatedataobjectfield) | **POST** /data-object/{id}/fields | Update a fields for a data object
[**updateExplorerPage**](DataObjectAPI.md#updateexplorerpage) | **POST** /explorer-page/{id} | Update an explorer page


# **archiveDataObject**
```swift
    open class func archiveDataObject(id: String, body: JSONValue? = nil, completion: @escaping (_ data: UpdateFile200Response?, _ error: Error?) -> Void)
```

Archive a data object

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let body = "TODO" // JSONValue | Body (optional)

// Archive a data object
DataObjectAPI.archiveDataObject(id: id, body: body) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 
 **body** | **JSONValue** | Body | [optional] 

### Return type

[**UpdateFile200Response**](UpdateFile200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createDataObject**
```swift
    open class func createDataObject(dataObjectSchema: DataObjectSchema? = nil, completion: @escaping (_ data: UpdateFile200Response?, _ error: Error?) -> Void)
```

Create a data object

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let dataObjectSchema = DataObjectSchema(id: "id_example", companyId: "companyId_example", createdAt: Date(), createdBy: "createdBy_example", fields: [DataObjectSchema_fields_inner(id: "id_example", arraySubType: "arraySubType_example", displayName: "displayName_example", fieldId: "fieldId_example", linkedObjectDisplayName: "linkedObjectDisplayName_example", linkedObjectName: "linkedObjectName_example", linkedObjectRevision: 123, linkedObjectTemplateId: "linkedObjectTemplateId_example", modifiedAt: Date(), modifiedBy: "modifiedBy_example", name: "name_example", storedValue: "storedValue_example", type: "type_example", jsonSchema: "jsonSchema_example", jsonSchemaId: "jsonSchemaId_example", teamId: "teamId_example")], modifiedAt: Date(), archivedAt: Date(), objectDescription: "objectDescription_example", objectDisplayName: "objectDisplayName_example", objectTemplateId: "objectTemplateId_example", objectName: "objectName_example", objectRevision: 123, objectTemplateRevision: 123, typeRefId: "typeRefId_example", teamId: "teamId_example") // DataObjectSchema | Body (optional)

// Create a data object
DataObjectAPI.createDataObject(dataObjectSchema: dataObjectSchema) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataObjectSchema** | [**DataObjectSchema**](DataObjectSchema.md) | Body | [optional] 

### Return type

[**UpdateFile200Response**](UpdateFile200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createExplorerPage**
```swift
    open class func createExplorerPage(dataObjectSchema: DataObjectSchema? = nil, completion: @escaping (_ data: UpdateFile200Response?, _ error: Error?) -> Void)
```

Create an explorer page

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let dataObjectSchema = DataObjectSchema(id: "id_example", companyId: "companyId_example", createdAt: Date(), createdBy: "createdBy_example", fields: [DataObjectSchema_fields_inner(id: "id_example", arraySubType: "arraySubType_example", displayName: "displayName_example", fieldId: "fieldId_example", linkedObjectDisplayName: "linkedObjectDisplayName_example", linkedObjectName: "linkedObjectName_example", linkedObjectRevision: 123, linkedObjectTemplateId: "linkedObjectTemplateId_example", modifiedAt: Date(), modifiedBy: "modifiedBy_example", name: "name_example", storedValue: "storedValue_example", type: "type_example", jsonSchema: "jsonSchema_example", jsonSchemaId: "jsonSchemaId_example", teamId: "teamId_example")], modifiedAt: Date(), archivedAt: Date(), objectDescription: "objectDescription_example", objectDisplayName: "objectDisplayName_example", objectTemplateId: "objectTemplateId_example", objectName: "objectName_example", objectRevision: 123, objectTemplateRevision: 123, typeRefId: "typeRefId_example", teamId: "teamId_example") // DataObjectSchema | Body (optional)

// Create an explorer page
DataObjectAPI.createExplorerPage(dataObjectSchema: dataObjectSchema) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataObjectSchema** | [**DataObjectSchema**](DataObjectSchema.md) | Body | [optional] 

### Return type

[**UpdateFile200Response**](UpdateFile200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteExplorerPage**
```swift
    open class func deleteExplorerPage(id: String, body: JSONValue? = nil, completion: @escaping (_ data: DataObjectSchema?, _ error: Error?) -> Void)
```

Delete an explorer page

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let body = "TODO" // JSONValue | Body (optional)

// Delete an explorer page
DataObjectAPI.deleteExplorerPage(id: id, body: body) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 
 **body** | **JSONValue** | Body | [optional] 

### Return type

[**DataObjectSchema**](DataObjectSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDataObjectsPaged**
```swift
    open class func getDataObjectsPaged(id: [String]? = nil, pageIndex: Int? = nil, pageSize: Int? = nil, filters: GetDataObjectsPagedFiltersParameter? = nil, latest: String? = nil, sorting: GetDataObjectsPagedSortingParameter? = nil, completion: @escaping (_ data: GetDataObjectsPaged200Response?, _ error: Error?) -> Void)
```

Get paginated data objects

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = ["inner_example"] // [String] |  (optional)
let pageIndex = 987 // Int |  (optional)
let pageSize = 987 // Int |  (optional)
let filters = getDataObjectsPaged_filters_parameter(companyId: "companyId_example", createdBy: "createdBy_example", createdAt: getManyFiles_filters_parameter_created_at(from: "from_example", to: "to_example"), objectTemplateId: ["objectTemplateId_example"], typeRefId: "typeRefId_example", active: false, environment: "environment_example", search: "search_example", id: ["id_example"], teamId: "teamId_example") // GetDataObjectsPagedFiltersParameter |  (optional)
let latest = "latest_example" // String |  (optional)
let sorting = getDataObjectsPaged_sorting_parameter(column: "column_example", desc: false) // GetDataObjectsPagedSortingParameter |  (optional)

// Get paginated data objects
DataObjectAPI.getDataObjectsPaged(id: id, pageIndex: pageIndex, pageSize: pageSize, filters: filters, latest: latest, sorting: sorting) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**[String]**](String.md) |  | [optional] 
 **pageIndex** | **Int** |  | [optional] 
 **pageSize** | **Int** |  | [optional] 
 **filters** | [**GetDataObjectsPagedFiltersParameter**](.md) |  | [optional] 
 **latest** | **String** |  | [optional] 
 **sorting** | [**GetDataObjectsPagedSortingParameter**](.md) |  | [optional] 

### Return type

[**GetDataObjectsPaged200Response**](GetDataObjectsPaged200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExplorerPages**
```swift
    open class func getExplorerPages(completion: @escaping (_ data: [DataObjectExplorerSchema]?, _ error: Error?) -> Void)
```

Get all explorer pages

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client


// Get all explorer pages
DataObjectAPI.getExplorerPages() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**[DataObjectExplorerSchema]**](DataObjectExplorerSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOneDataObject**
```swift
    open class func getOneDataObject(id: String, completion: @escaping (_ data: DataObjectSchema?, _ error: Error?) -> Void)
```

Returns a data object by id

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 

// Returns a data object by id
DataObjectAPI.getOneDataObject(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 

### Return type

[**DataObjectSchema**](DataObjectSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRelatedDataObjects**
```swift
    open class func getRelatedDataObjects(id: String, completion: @escaping (_ data: [DataObjectSchema]?, _ error: Error?) -> Void)
```

Returns an array of data objects related to the data object id

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 

// Returns an array of data objects related to the data object id
DataObjectAPI.getRelatedDataObjects(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 

### Return type

[**[DataObjectSchema]**](DataObjectSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unarchiveDataObject**
```swift
    open class func unarchiveDataObject(id: String, body: JSONValue? = nil, completion: @escaping (_ data: UpdateFile200Response?, _ error: Error?) -> Void)
```

Unarchive a data object

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let body = "TODO" // JSONValue | Body (optional)

// Unarchive a data object
DataObjectAPI.unarchiveDataObject(id: id, body: body) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 
 **body** | **JSONValue** | Body | [optional] 

### Return type

[**UpdateFile200Response**](UpdateFile200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDataObjectField**
```swift
    open class func updateDataObjectField(id: String, updateDataObjectFieldsSchema: [UpdateDataObjectFieldsSchema]? = nil, completion: @escaping (_ data: UpdateFile200Response?, _ error: Error?) -> Void)
```

Update a fields for a data object

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let updateDataObjectFieldsSchema = [UpdateDataObjectFieldsSchema(id: "id_example", fieldId: "fieldId_example", linkedObjectDisplayName: "linkedObjectDisplayName_example", linkedObjectName: "linkedObjectName_example", linkedObjectRevision: 123, linkedObjectTemplateId: "linkedObjectTemplateId_example", modifiedAt: Date(), modifiedBy: "modifiedBy_example", storedValue: "storedValue_example", jsonSchema: "jsonSchema_example", jsonSchemaId: "jsonSchemaId_example", teamId: "teamId_example")] // [UpdateDataObjectFieldsSchema] | Body (optional)

// Update a fields for a data object
DataObjectAPI.updateDataObjectField(id: id, updateDataObjectFieldsSchema: updateDataObjectFieldsSchema) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 
 **updateDataObjectFieldsSchema** | [**[UpdateDataObjectFieldsSchema]**](UpdateDataObjectFieldsSchema.md) | Body | [optional] 

### Return type

[**UpdateFile200Response**](UpdateFile200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateExplorerPage**
```swift
    open class func updateExplorerPage(id: String, dataObjectSchema: DataObjectSchema? = nil, completion: @escaping (_ data: UpdateFile200Response?, _ error: Error?) -> Void)
```

Update an explorer page

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let dataObjectSchema = DataObjectSchema(id: "id_example", companyId: "companyId_example", createdAt: Date(), createdBy: "createdBy_example", fields: [DataObjectSchema_fields_inner(id: "id_example", arraySubType: "arraySubType_example", displayName: "displayName_example", fieldId: "fieldId_example", linkedObjectDisplayName: "linkedObjectDisplayName_example", linkedObjectName: "linkedObjectName_example", linkedObjectRevision: 123, linkedObjectTemplateId: "linkedObjectTemplateId_example", modifiedAt: Date(), modifiedBy: "modifiedBy_example", name: "name_example", storedValue: "storedValue_example", type: "type_example", jsonSchema: "jsonSchema_example", jsonSchemaId: "jsonSchemaId_example", teamId: "teamId_example")], modifiedAt: Date(), archivedAt: Date(), objectDescription: "objectDescription_example", objectDisplayName: "objectDisplayName_example", objectTemplateId: "objectTemplateId_example", objectName: "objectName_example", objectRevision: 123, objectTemplateRevision: 123, typeRefId: "typeRefId_example", teamId: "teamId_example") // DataObjectSchema | Body (optional)

// Update an explorer page
DataObjectAPI.updateExplorerPage(id: id, dataObjectSchema: dataObjectSchema) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 
 **dataObjectSchema** | [**DataObjectSchema**](DataObjectSchema.md) | Body | [optional] 

### Return type

[**UpdateFile200Response**](UpdateFile200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

