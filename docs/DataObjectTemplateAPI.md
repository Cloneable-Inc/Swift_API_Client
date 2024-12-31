# DataObjectTemplateAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDataObjectTemplate**](DataObjectTemplateAPI.md#createdataobjecttemplate) | **POST** /data-object-template | Create a data object template
[**getManyDataObjectTemplates**](DataObjectTemplateAPI.md#getmanydataobjecttemplates) | **GET** /data-object-templates | Get many data object templates
[**getOneDataObjectTemplate**](DataObjectTemplateAPI.md#getonedataobjecttemplate) | **GET** /data-object-template/{id} | Get a data object template
[**getOneDataObjectTemplateByObjectTemplateId**](DataObjectTemplateAPI.md#getonedataobjecttemplatebyobjecttemplateid) | **GET** /data-object-template/object-template/{id} | 
[**updateDataObjectTemplate**](DataObjectTemplateAPI.md#updatedataobjecttemplate) | **POST** /data-object-template/{id} | Update a data object template


# **createDataObjectTemplate**
```swift
    open class func createDataObjectTemplate(updateDataObjectTemplateRequest: UpdateDataObjectTemplateRequest? = nil, completion: @escaping (_ data: DataObjectTemplateSchema?, _ error: Error?) -> Void)
```

Create a data object template

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let updateDataObjectTemplateRequest = updateDataObjectTemplate_request(objectName: "objectName_example", objectDisplayName: "objectDisplayName_example", objectDescription: "objectDescription_example", fields: [updateDataObjectTemplate_request_fields_inner(arraySubType: "arraySubType_example", jsonSchema: "jsonSchema_example", jsonSchemaId: "jsonSchemaId_example", displayName: "displayName_example", fieldId: "fieldId_example", linkedObjectDisplayName: "linkedObjectDisplayName_example", linkedObjectName: "linkedObjectName_example", linkedObjectRevision: 123, linkedObjectTemplateId: "linkedObjectTemplateId_example", linkedObjectId: "linkedObjectId_example", modifiedAt: Date(), modifiedBy: "modifiedBy_example", name: "name_example", type: "type_example", fileInformation: updateDataObjectTemplate_request_fields_inner_file_information(fileType: "fileType_example", oneWaySync: false, storageAuthProviderName: "storageAuthProviderName_example", storageAuthProviderRefId: "storageAuthProviderRefId_example", storageProvider: "storageProvider_example"), statusOptions: ["statusOptions_example"])], isTemplate: false) // UpdateDataObjectTemplateRequest | Body (optional)

// Create a data object template
DataObjectTemplateAPI.createDataObjectTemplate(updateDataObjectTemplateRequest: updateDataObjectTemplateRequest) { (response, error) in
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
 **updateDataObjectTemplateRequest** | [**UpdateDataObjectTemplateRequest**](UpdateDataObjectTemplateRequest.md) | Body | [optional] 

### Return type

[**DataObjectTemplateSchema**](DataObjectTemplateSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getManyDataObjectTemplates**
```swift
    open class func getManyDataObjectTemplates(id: [String]? = nil, filters: GetManyDataObjectTemplatesFiltersParameter? = nil, latest: String? = nil, completion: @escaping (_ data: [DataObjectTemplateSchema]?, _ error: Error?) -> Void)
```

Get many data object templates

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = ["inner_example"] // [String] |  (optional)
let filters = getManyDataObjectTemplates_filters_parameter(isTemplate: false) // GetManyDataObjectTemplatesFiltersParameter |  (optional)
let latest = "latest_example" // String |  (optional)

// Get many data object templates
DataObjectTemplateAPI.getManyDataObjectTemplates(id: id, filters: filters, latest: latest) { (response, error) in
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
 **filters** | [**GetManyDataObjectTemplatesFiltersParameter**](.md) |  | [optional] 
 **latest** | **String** |  | [optional] 

### Return type

[**[DataObjectTemplateSchema]**](DataObjectTemplateSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOneDataObjectTemplate**
```swift
    open class func getOneDataObjectTemplate(id: String, completion: @escaping (_ data: DataObjectTemplateSchema?, _ error: Error?) -> Void)
```

Get a data object template

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 

// Get a data object template
DataObjectTemplateAPI.getOneDataObjectTemplate(id: id) { (response, error) in
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

# **getOneDataObjectTemplateByObjectTemplateId**
```swift
    open class func getOneDataObjectTemplateByObjectTemplateId(id: String, completion: @escaping (_ data: GetOneDataObjectTemplateByObjectTemplateId200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 

DataObjectTemplateAPI.getOneDataObjectTemplateByObjectTemplateId(id: id) { (response, error) in
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

[**GetOneDataObjectTemplateByObjectTemplateId200Response**](GetOneDataObjectTemplateByObjectTemplateId200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDataObjectTemplate**
```swift
    open class func updateDataObjectTemplate(id: String, updateDataObjectTemplateRequest: UpdateDataObjectTemplateRequest? = nil, completion: @escaping (_ data: UpdateFile200Response?, _ error: Error?) -> Void)
```

Update a data object template

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let updateDataObjectTemplateRequest = updateDataObjectTemplate_request(objectName: "objectName_example", objectDisplayName: "objectDisplayName_example", objectDescription: "objectDescription_example", fields: [updateDataObjectTemplate_request_fields_inner(arraySubType: "arraySubType_example", jsonSchema: "jsonSchema_example", jsonSchemaId: "jsonSchemaId_example", displayName: "displayName_example", fieldId: "fieldId_example", linkedObjectDisplayName: "linkedObjectDisplayName_example", linkedObjectName: "linkedObjectName_example", linkedObjectRevision: 123, linkedObjectTemplateId: "linkedObjectTemplateId_example", linkedObjectId: "linkedObjectId_example", modifiedAt: Date(), modifiedBy: "modifiedBy_example", name: "name_example", type: "type_example", fileInformation: updateDataObjectTemplate_request_fields_inner_file_information(fileType: "fileType_example", oneWaySync: false, storageAuthProviderName: "storageAuthProviderName_example", storageAuthProviderRefId: "storageAuthProviderRefId_example", storageProvider: "storageProvider_example"), statusOptions: ["statusOptions_example"])], isTemplate: false) // UpdateDataObjectTemplateRequest | Body (optional)

// Update a data object template
DataObjectTemplateAPI.updateDataObjectTemplate(id: id, updateDataObjectTemplateRequest: updateDataObjectTemplateRequest) { (response, error) in
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
 **updateDataObjectTemplateRequest** | [**UpdateDataObjectTemplateRequest**](UpdateDataObjectTemplateRequest.md) | Body | [optional] 

### Return type

[**UpdateFile200Response**](UpdateFile200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

