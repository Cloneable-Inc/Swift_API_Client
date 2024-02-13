# DataObjectTemplateAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getManyDataObjectTemplates**](DataObjectTemplateAPI.md#getmanydataobjecttemplates) | **GET** /data-object-templates | Get many data object templates
[**getOneDataObjectTemplate**](DataObjectTemplateAPI.md#getonedataobjecttemplate) | **GET** /data-object-template/{id} | Get a data object template


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

