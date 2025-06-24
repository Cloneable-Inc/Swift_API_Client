# AssociatedDomainAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAssociatedDomain**](AssociatedDomainAPI.md#getassociateddomain) | **GET** /apple-app-site-association | Get associated domain
[**getWellKnownAssociatedDomain**](AssociatedDomainAPI.md#getwellknownassociateddomain) | **GET** /.well-known/apple-app-site-association | Get associated domain


# **getAssociatedDomain**
```swift
    open class func getAssociatedDomain(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get associated domain

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client


// Get associated domain
AssociatedDomainAPI.getAssociatedDomain() { (response, error) in
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

# **getWellKnownAssociatedDomain**
```swift
    open class func getWellKnownAssociatedDomain(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get associated domain

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client


// Get associated domain
AssociatedDomainAPI.getWellKnownAssociatedDomain() { (response, error) in
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

