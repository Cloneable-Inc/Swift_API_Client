# DataObjectAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDataObject**](DataObjectAPI.md#createdataobject) | **PUT** /data-object | Create a data object
[**getDataObjects**](DataObjectAPI.md#getdataobjects) | **POST** /data-objects | Get all data objects
[**getOneDataObject**](DataObjectAPI.md#getonedataobject) | **GET** /data-object/{id} | Returns a data object by id
[**updateDataObjectField**](DataObjectAPI.md#updatedataobjectfield) | **POST** /data-object/{id}/fields | Update a fields for a data object


# **createDataObject**
```swift
    open class func createDataObject(createDataObjectSchema: CreateDataObjectSchema? = nil, completion: @escaping (_ data: UpdateFile200Response?, _ error: Error?) -> Void)
```

Create a data object

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let createDataObjectSchema = CreateDataObjectSchema(companyId: "companyId_example", createdAt: Date(), createdBy: "createdBy_example", fields: [DataObjectSchema_fields_inner(id: "id_example", arraySubType: "arraySubType_example", displayName: "displayName_example", fieldId: "fieldId_example", linkedObjectDisplayName: "linkedObjectDisplayName_example", linkedObjectName: "linkedObjectName_example", linkedObjectRevision: 123, linkedObjectTemplateId: "linkedObjectTemplateId_example", modifiedAt: Date(), modifiedBy: "modifiedBy_example", name: "name_example", storedValue: "storedValue_example", type: "type_example")], modifiedAt: Date(), objectDescription: "objectDescription_example", objectDisplayName: "objectDisplayName_example", objectTemplateId: "objectTemplateId_example", objectName: "objectName_example", objectRevision: 123, objectTemplateRevision: 123, typeRefId: "typeRefId_example") // CreateDataObjectSchema | Body (optional)

// Create a data object
DataObjectAPI.createDataObject(createDataObjectSchema: createDataObjectSchema) { (response, error) in
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
 **createDataObjectSchema** | [**CreateDataObjectSchema**](CreateDataObjectSchema.md) | Body | [optional] 

### Return type

[**UpdateFile200Response**](UpdateFile200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDataObjects**
```swift
    open class func getDataObjects(getDataObjectsRequest: GetDataObjectsRequest? = nil, completion: @escaping (_ data: [DataObjectSchema]?, _ error: Error?) -> Void)
```

Get all data objects

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let getDataObjectsRequest = getDataObjects_request(id: ["id_example"], filters: getDataObjects_request_filters(companyId: "companyId_example", createdBy: "createdBy_example", createdAt: "createdAt_example", typeRefId: "typeRefId_example", active: false, environment: "environment_example"), latest: "latest_example") // GetDataObjectsRequest | Body (optional)

// Get all data objects
DataObjectAPI.getDataObjects(getDataObjectsRequest: getDataObjectsRequest) { (response, error) in
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
 **getDataObjectsRequest** | [**GetDataObjectsRequest**](GetDataObjectsRequest.md) | Body | [optional] 

### Return type

[**[DataObjectSchema]**](DataObjectSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
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

# **updateDataObjectField**
```swift
    open class func updateDataObjectField(id: String, updateDataObjectFieldsSchema: UpdateDataObjectFieldsSchema? = nil, completion: @escaping (_ data: UpdateFile200Response?, _ error: Error?) -> Void)
```

Update a fields for a data object

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let updateDataObjectFieldsSchema = UpdateDataObjectFieldsSchema(id: "id_example", fieldId: "fieldId_example", linkedObjectDisplayName: "linkedObjectDisplayName_example", linkedObjectName: "linkedObjectName_example", linkedObjectRevision: 123, linkedObjectTemplateId: "linkedObjectTemplateId_example", modifiedAt: Date(), modifiedBy: "modifiedBy_example", storedValue: "storedValue_example") // UpdateDataObjectFieldsSchema | Body (optional)

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
 **updateDataObjectFieldsSchema** | [**UpdateDataObjectFieldsSchema**](UpdateDataObjectFieldsSchema.md) | Body | [optional] 

### Return type

[**UpdateFile200Response**](UpdateFile200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

