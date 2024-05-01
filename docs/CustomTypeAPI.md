# CustomTypeAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCustomType**](CustomTypeAPI.md#createcustomtype) | **POST** /custom-type | Create a custom type
[**getCustomTypes**](CustomTypeAPI.md#getcustomtypes) | **GET** /custom-types | Get custom types for company
[**getOneCustomType**](CustomTypeAPI.md#getonecustomtype) | **GET** /custom-type/{id} | Returns a custom type by id
[**updateCustomType**](CustomTypeAPI.md#updatecustomtype) | **PUT** /custom-type/{id} | Update a custom type


# **createCustomType**
```swift
    open class func createCustomType(createCustomTypeRequest: CreateCustomTypeRequest? = nil, completion: @escaping (_ data: CustomTypeSchema?, _ error: Error?) -> Void)
```

Create a custom type

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let createCustomTypeRequest = createCustomType_request(id: 123, name: "name_example", description: "description_example", companyId: "companyId_example", createdAt: Date(), createdBy: "createdBy_example", modifiedAt: Date(), modifiedBy: "modifiedBy_example", version: "version_example", properties: "TODO", isPublic: false) // CreateCustomTypeRequest | Body (optional)

// Create a custom type
CustomTypeAPI.createCustomType(createCustomTypeRequest: createCustomTypeRequest) { (response, error) in
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
 **createCustomTypeRequest** | [**CreateCustomTypeRequest**](CreateCustomTypeRequest.md) | Body | [optional] 

### Return type

[**CustomTypeSchema**](CustomTypeSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomTypes**
```swift
    open class func getCustomTypes(allForUse: Bool? = nil, completion: @escaping (_ data: [CustomTypeSchema]?, _ error: Error?) -> Void)
```

Get custom types for company

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let allForUse = true // Bool |  (optional)

// Get custom types for company
CustomTypeAPI.getCustomTypes(allForUse: allForUse) { (response, error) in
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
 **allForUse** | **Bool** |  | [optional] 

### Return type

[**[CustomTypeSchema]**](CustomTypeSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOneCustomType**
```swift
    open class func getOneCustomType(id: String, completion: @escaping (_ data: CustomTypeSchema?, _ error: Error?) -> Void)
```

Returns a custom type by id

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 

// Returns a custom type by id
CustomTypeAPI.getOneCustomType(id: id) { (response, error) in
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

[**CustomTypeSchema**](CustomTypeSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCustomType**
```swift
    open class func updateCustomType(id: String, updateCustomTypeRequest: UpdateCustomTypeRequest? = nil, completion: @escaping (_ data: CustomTypeSchema?, _ error: Error?) -> Void)
```

Update a custom type

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let updateCustomTypeRequest = updateCustomType_request(name: "name_example", description: "description_example", modifiedAt: Date(), modifiedBy: "modifiedBy_example", version: "version_example", properties: "TODO", isPublic: false) // UpdateCustomTypeRequest | Body (optional)

// Update a custom type
CustomTypeAPI.updateCustomType(id: id, updateCustomTypeRequest: updateCustomTypeRequest) { (response, error) in
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
 **updateCustomTypeRequest** | [**UpdateCustomTypeRequest**](UpdateCustomTypeRequest.md) | Body | [optional] 

### Return type

[**CustomTypeSchema**](CustomTypeSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

