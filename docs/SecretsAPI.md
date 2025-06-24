# SecretsAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSecret**](SecretsAPI.md#createsecret) | **POST** /secrets | Create a new secret
[**deleteSecret**](SecretsAPI.md#deletesecret) | **DELETE** /secrets/{id} | Delete a secret
[**listSecrets**](SecretsAPI.md#listsecrets) | **GET** /secrets | List all secrets
[**updateSecret**](SecretsAPI.md#updatesecret) | **PUT** /secrets/{id} | Update a secret


# **createSecret**
```swift
    open class func createSecret(createSecretRequest: CreateSecretRequest? = nil, completion: @escaping (_ data: ListSecrets200ResponseInner?, _ error: Error?) -> Void)
```

Create a new secret

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let createSecretRequest = createSecret_request(name: "name_example", description: "description_example", type: "type_example", value: "value_example") // CreateSecretRequest | Body (optional)

// Create a new secret
SecretsAPI.createSecret(createSecretRequest: createSecretRequest) { (response, error) in
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
 **createSecretRequest** | [**CreateSecretRequest**](CreateSecretRequest.md) | Body | [optional] 

### Return type

[**ListSecrets200ResponseInner**](ListSecrets200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSecret**
```swift
    open class func deleteSecret(id: String, body: AnyCodable? = nil, completion: @escaping (_ data: CreateFile400Response?, _ error: Error?) -> Void)
```

Delete a secret

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let body = "TODO" // AnyCodable | Body (optional)

// Delete a secret
SecretsAPI.deleteSecret(id: id, body: body) { (response, error) in
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
 **body** | **AnyCodable** | Body | [optional] 

### Return type

[**CreateFile400Response**](CreateFile400Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSecrets**
```swift
    open class func listSecrets(completion: @escaping (_ data: [ListSecrets200ResponseInner]?, _ error: Error?) -> Void)
```

List all secrets

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client


// List all secrets
SecretsAPI.listSecrets() { (response, error) in
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

[**[ListSecrets200ResponseInner]**](ListSecrets200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSecret**
```swift
    open class func updateSecret(id: String, putCacheItemRequest: PutCacheItemRequest? = nil, completion: @escaping (_ data: CreateFile400Response?, _ error: Error?) -> Void)
```

Update a secret

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let putCacheItemRequest = putCacheItem_request(value: "value_example") // PutCacheItemRequest | Body (optional)

// Update a secret
SecretsAPI.updateSecret(id: id, putCacheItemRequest: putCacheItemRequest) { (response, error) in
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
 **putCacheItemRequest** | [**PutCacheItemRequest**](PutCacheItemRequest.md) | Body | [optional] 

### Return type

[**CreateFile400Response**](CreateFile400Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

