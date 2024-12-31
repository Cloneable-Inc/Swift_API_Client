# DataObjectSyncAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findDataObjectFieldsByArrayValue**](DataObjectSyncAPI.md#finddataobjectfieldsbyarrayvalue) | **GET** /data-objects-sync/fields-by-array | Find data objects containing a specific value in their array fields
[**getOne**](DataObjectSyncAPI.md#getone) | **GET** /data-object-sync/data-object/{id} | Get a flattened data object
[**getTemplate**](DataObjectSyncAPI.md#gettemplate) | **GET** /data-object-sync/template/{id} | Get a data object template
[**listTemplates**](DataObjectSyncAPI.md#listtemplates) | **GET** /data-object-sync/templates | List all data object templates
[**syncDataObject**](DataObjectSyncAPI.md#syncdataobject) | **POST** /data-object-sync/data-object | Sync a data object


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

# **syncDataObject**
```swift
    open class func syncDataObject(syncDataObjectRequestInner: [SyncDataObjectRequestInner]? = nil, completion: @escaping (_ data: DataObjectSchema?, _ error: Error?) -> Void)
```

Sync a data object

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let syncDataObjectRequestInner = [syncDataObject_request_inner(id: 123, dataObjectId: "dataObjectId_example", dataObjectTemplateNameId: "dataObjectTemplateNameId_example", key: "key_example", value: 123, type: "type_example", label: "label_example", teamId: "teamId_example", metaData: syncDataObject_request_inner_meta_data(linkedObjectDisplayName: "linkedObjectDisplayName_example", linkedObjectName: "linkedObjectName_example", linkedObjectRevision: 123, linkedObjectTemplateId: "linkedObjectTemplateId_example", arraySubType: "arraySubType_example", jsonSchema: "jsonSchema_example", jsonSchemaId: "jsonSchemaId_example", objectTemplateId: "objectTemplateId_example", displayName: "displayName_example", data: 123))] // [SyncDataObjectRequestInner] | Body (optional)

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

[**DataObjectSchema**](DataObjectSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

