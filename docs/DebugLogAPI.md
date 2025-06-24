# DebugLogAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUploadUrl**](DebugLogAPI.md#getuploadurl) | **GET** /debug-logs/upload-url | Request a pre-signed URL for uploading a debug log file


# **getUploadUrl**
```swift
    open class func getUploadUrl(key: String, completion: @escaping (_ data: GetUploadUrl200Response?, _ error: Error?) -> Void)
```

Request a pre-signed URL for uploading a debug log file

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let key = "key_example" // String | 

// Request a pre-signed URL for uploading a debug log file
DebugLogAPI.getUploadUrl(key: key) { (response, error) in
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
 **key** | **String** |  | 

### Return type

[**GetUploadUrl200Response**](GetUploadUrl200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

