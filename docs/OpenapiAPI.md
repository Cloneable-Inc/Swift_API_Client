# OpenapiAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getOpenAPIJSON**](OpenapiAPI.md#getopenapijson) | **GET** /openapi.json | Get OpenAPI JSON
[**getOpenAPIPage**](OpenapiAPI.md#getopenapipage) | **GET** /openapi | Get OpenAPI Docs page
[**getOpenAPIYaml**](OpenapiAPI.md#getopenapiyaml) | **GET** /openapi.yaml | Get OpenAPI YAML


# **getOpenAPIJSON**
```swift
    open class func getOpenAPIJSON(completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get OpenAPI JSON

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client


// Get OpenAPI JSON
OpenapiAPI.getOpenAPIJSON() { (response, error) in
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

**AnyCodable**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOpenAPIPage**
```swift
    open class func getOpenAPIPage(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get OpenAPI Docs page

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client


// Get OpenAPI Docs page
OpenapiAPI.getOpenAPIPage() { (response, error) in
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

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOpenAPIYaml**
```swift
    open class func getOpenAPIYaml(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get OpenAPI YAML

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client


// Get OpenAPI YAML
OpenapiAPI.getOpenAPIYaml() { (response, error) in
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

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

