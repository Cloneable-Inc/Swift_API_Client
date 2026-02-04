# DataObjectSyncAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**archiveDataObjects**](DataObjectSyncAPI.md#archivedataobjects) | **POST** /data-object-sync/archive | Archive multiple data objects by IDs
[**findDataObjectFieldsByArrayValue**](DataObjectSyncAPI.md#finddataobjectfieldsbyarrayvalue) | **GET** /data-objects-sync/fields-by-array | Find data objects containing a specific value in their array fields
[**getFilteredDataObjects**](DataObjectSyncAPI.md#getfiltereddataobjects) | **GET** /data-object-sync/filtered-data-objects | Get filtered and paginated data objects
[**getOne**](DataObjectSyncAPI.md#getone) | **GET** /data-object-sync/data-object/{id} | Get a flattened data object
[**getOneWithMetadata**](DataObjectSyncAPI.md#getonewithmetadata) | **GET** /data-object-sync/data-object/{id}/with-metadata | Get a data object with full field metadata
[**getSyncFields**](DataObjectSyncAPI.md#getsyncfields) | **GET** /data-object-sync/fields | Get individual data object fields for sync operations with optional timestamp filtering
[**getTemplate**](DataObjectSyncAPI.md#gettemplate) | **GET** /data-object-sync/template/{id} | Get a data object template
[**listTemplates**](DataObjectSyncAPI.md#listtemplates) | **GET** /data-object-sync/templates | List all data object templates
[**queryDataObjectFields**](DataObjectSyncAPI.md#querydataobjectfields) | **GET** /data-objects-sync/query | Query data objects by template name and field values
[**syncDataObject**](DataObjectSyncAPI.md#syncdataobject) | **POST** /data-object-sync/data-object | Sync a data object


# **archiveDataObjects**
```swift
    open class func archiveDataObjects(archiveDataObjectsRequest: ArchiveDataObjectsRequest? = nil, completion: @escaping (_ data: ArchiveDataObjects200Response?, _ error: Error?) -> Void)
```

Archive multiple data objects by IDs

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let archiveDataObjectsRequest = archiveDataObjects_request(ids: ["ids_example"]) // ArchiveDataObjectsRequest | Body (optional)

// Archive multiple data objects by IDs
DataObjectSyncAPI.archiveDataObjects(archiveDataObjectsRequest: archiveDataObjectsRequest) { (response, error) in
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
 **archiveDataObjectsRequest** | [**ArchiveDataObjectsRequest**](ArchiveDataObjectsRequest.md) | Body | [optional] 

### Return type

[**ArchiveDataObjects200Response**](ArchiveDataObjects200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findDataObjectFieldsByArrayValue**
```swift
    open class func findDataObjectFieldsByArrayValue(searchId: String, completion: @escaping (_ data: [FindDataObjectFieldsByArrayValue200ResponseInner]?, _ error: Error?) -> Void)
```

Find data objects containing a specific value in their array fields

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let searchId = "searchId_example" // String | 

// Find data objects containing a specific value in their array fields
DataObjectSyncAPI.findDataObjectFieldsByArrayValue(searchId: searchId) { (response, error) in
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
 **searchId** | **String** |  | 

### Return type

[**[FindDataObjectFieldsByArrayValue200ResponseInner]**](FindDataObjectFieldsByArrayValue200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFilteredDataObjects**
```swift
    open class func getFilteredDataObjects(id: [String]? = nil, pageIndex: Int? = nil, pageSize: Int? = nil, filters: GetFilteredDataObjectsFiltersParameter? = nil, latest: String? = nil, sorting: GetDataObjectsPagedSortingParameter? = nil, completion: @escaping (_ data: GetDataObjectsPaged200Response?, _ error: Error?) -> Void)
```

Get filtered and paginated data objects

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = ["inner_example"] // [String] |  (optional)
let pageIndex = 987 // Int |  (optional)
let pageSize = 987 // Int |  (optional)
let filters = getFilteredDataObjects_filters_parameter(companyId: "companyId_example", createdBy: "createdBy_example", createdAt: getManyFiles_filters_parameter_created_at(from: "from_example", to: "to_example"), objectTemplateId: ["objectTemplateId_example"], typeRefId: "typeRefId_example", active: false, environment: "environment_example", search: "search_example", id: ["id_example"], teamId: "teamId_example", fieldFilters: [getFilteredDataObjects_filters_parameter_field_filters_inner(key: "key_example", _operator: "_operator_example", value: 123, values: [123])], fieldFilterLogic: "fieldFilterLogic_example") // GetFilteredDataObjectsFiltersParameter |  (optional)
let latest = "latest_example" // String |  (optional)
let sorting = getDataObjectsPaged_sorting_parameter(column: "column_example", desc: false) // GetDataObjectsPagedSortingParameter |  (optional)

// Get filtered and paginated data objects
DataObjectSyncAPI.getFilteredDataObjects(id: id, pageIndex: pageIndex, pageSize: pageSize, filters: filters, latest: latest, sorting: sorting) { (response, error) in
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
 **filters** | [**GetFilteredDataObjectsFiltersParameter**](.md) |  | [optional] 
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

# **getOne**
```swift
    open class func getOne(id: String, completion: @escaping (_ data: GetOne200Response?, _ error: Error?) -> Void)
```

Get a flattened data object

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 

// Get a flattened data object
DataObjectSyncAPI.getOne(id: id) { (response, error) in
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

[**GetOne200Response**](GetOne200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOneWithMetadata**
```swift
    open class func getOneWithMetadata(id: String, completion: @escaping (_ data: GetOneWithMetadata200Response?, _ error: Error?) -> Void)
```

Get a data object with full field metadata

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 

// Get a data object with full field metadata
DataObjectSyncAPI.getOneWithMetadata(id: id) { (response, error) in
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

[**GetOneWithMetadata200Response**](GetOneWithMetadata200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSyncFields**
```swift
    open class func getSyncFields(updatedAtGt: String? = nil, templateNameId: String? = nil, limit: Int? = nil, orderBy: OrderBy_getSyncFields? = nil, completion: @escaping (_ data: GetSyncFields200Response?, _ error: Error?) -> Void)
```

Get individual data object fields for sync operations with optional timestamp filtering

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let updatedAtGt = "updatedAtGt_example" // String |  (optional)
let templateNameId = "templateNameId_example" // String |  (optional)
let limit = 987 // Int |  (optional)
let orderBy = "orderBy_example" // String |  (optional)

// Get individual data object fields for sync operations with optional timestamp filtering
DataObjectSyncAPI.getSyncFields(updatedAtGt: updatedAtGt, templateNameId: templateNameId, limit: limit, orderBy: orderBy) { (response, error) in
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
 **updatedAtGt** | **String** |  | [optional] 
 **templateNameId** | **String** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **orderBy** | **String** |  | [optional] 

### Return type

[**GetSyncFields200Response**](GetSyncFields200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTemplate**
```swift
    open class func getTemplate(id: String, completion: @escaping (_ data: DataObjectTemplateSchema?, _ error: Error?) -> Void)
```

Get a data object template

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 

// Get a data object template
DataObjectSyncAPI.getTemplate(id: id) { (response, error) in
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

[**DataObjectTemplateSchema**](DataObjectTemplateSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTemplates**
```swift
    open class func listTemplates(completion: @escaping (_ data: DataObjectTemplateSchema?, _ error: Error?) -> Void)
```

List all data object templates

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client


// List all data object templates
DataObjectSyncAPI.listTemplates() { (response, error) in
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

[**DataObjectTemplateSchema**](DataObjectTemplateSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryDataObjectFields**
```swift
    open class func queryDataObjectFields(templateNameId: String, fieldFilters: [String: JSONValue]? = nil, completion: @escaping (_ data: [QueryDataObjectFields200ResponseInner]?, _ error: Error?) -> Void)
```

Query data objects by template name and field values

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let templateNameId = "templateNameId_example" // String | 
let fieldFilters = "TODO" // [String: JSONValue] |  (optional)

// Query data objects by template name and field values
DataObjectSyncAPI.queryDataObjectFields(templateNameId: templateNameId, fieldFilters: fieldFilters) { (response, error) in
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
 **templateNameId** | **String** |  | 
 **fieldFilters** | [**[String: JSONValue]**](JSONValue.md) |  | [optional] 

### Return type

[**[QueryDataObjectFields200ResponseInner]**](QueryDataObjectFields200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **syncDataObject**
```swift
    open class func syncDataObject(syncDataObjectRequestInner: [SyncDataObjectRequestInner]? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Sync a data object

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let syncDataObjectRequestInner = [syncDataObject_request_inner(id: 123, dataObjectId: "dataObjectId_example", dataObjectTemplateNameId: "dataObjectTemplateNameId_example", key: "key_example", value: 123, type: "type_example", label: "label_example", teamId: "teamId_example", metaData: syncDataObject_request_inner_meta_data(linkedObjectDisplayName: "linkedObjectDisplayName_example", linkedObjectName: "linkedObjectName_example", linkedObjectRevision: 123, linkedObjectTemplateId: "linkedObjectTemplateId_example", arraySubType: "arraySubType_example", jsonSchema: "jsonSchema_example", jsonSchemaId: "jsonSchemaId_example", objectTemplateId: "objectTemplateId_example", objectTemplateFieldId: "objectTemplateFieldId_example", displayName: "displayName_example", data: 123), createdAt: Date())] // [SyncDataObjectRequestInner] | Body (optional)

// Sync a data object
DataObjectSyncAPI.syncDataObject(syncDataObjectRequestInner: syncDataObjectRequestInner) { (response, error) in
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
 **syncDataObjectRequestInner** | [**[SyncDataObjectRequestInner]**](SyncDataObjectRequestInner.md) | Body | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

