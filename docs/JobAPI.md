# JobAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**modelConversionJobComplete**](JobAPI.md#modelconversionjobcomplete) | **POST** /job/model-conversion/{id}/complete | Get job by id
[**modelConversionJobStatus**](JobAPI.md#modelconversionjobstatus) | **POST** /job/model-conversion/{id}/status | Get job by id
[**modelConversionJobUpload**](JobAPI.md#modelconversionjobupload) | **POST** /job/model-conversion/{id}/upload | Create new model file and get upload url


# **modelConversionJobComplete**
```swift
    open class func modelConversionJobComplete(id: String, xApiKey: String, modelConversionJobCompleteRequest: ModelConversionJobCompleteRequest? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Get job by id

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let xApiKey = "xApiKey_example" // String | 
let modelConversionJobCompleteRequest = modelConversionJobComplete_request(fileId: "fileId_example") // ModelConversionJobCompleteRequest | Body (optional)

// Get job by id
JobAPI.modelConversionJobComplete(id: id, xApiKey: xApiKey, modelConversionJobCompleteRequest: modelConversionJobCompleteRequest) { (response, error) in
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
 **xApiKey** | **String** |  | 
 **modelConversionJobCompleteRequest** | [**ModelConversionJobCompleteRequest**](ModelConversionJobCompleteRequest.md) | Body | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modelConversionJobStatus**
```swift
    open class func modelConversionJobStatus(id: String, xApiKey: String, modelConversionJobStatusRequest: ModelConversionJobStatusRequest? = nil, completion: @escaping (_ data: ModelConversionJobSchema?, _ error: Error?) -> Void)
```

Get job by id

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let xApiKey = "xApiKey_example" // String | 
let modelConversionJobStatusRequest = modelConversionJobStatus_request(status: "status_example", errorStack: "errorStack_example", errorMessage: "errorMessage_example", errorCode: "errorCode_example") // ModelConversionJobStatusRequest | Body (optional)

// Get job by id
JobAPI.modelConversionJobStatus(id: id, xApiKey: xApiKey, modelConversionJobStatusRequest: modelConversionJobStatusRequest) { (response, error) in
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
 **xApiKey** | **String** |  | 
 **modelConversionJobStatusRequest** | [**ModelConversionJobStatusRequest**](ModelConversionJobStatusRequest.md) | Body | [optional] 

### Return type

[**ModelConversionJobSchema**](ModelConversionJobSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modelConversionJobUpload**
```swift
    open class func modelConversionJobUpload(id: String, xApiKey: String, modelConversionJobUploadRequest: ModelConversionJobUploadRequest? = nil, completion: @escaping (_ data: ModelConversionJobUpload201Response?, _ error: Error?) -> Void)
```

Create new model file and get upload url

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let xApiKey = "xApiKey_example" // String | 
let modelConversionJobUploadRequest = modelConversionJobUpload_request(status: "status_example") // ModelConversionJobUploadRequest | Body (optional)

// Create new model file and get upload url
JobAPI.modelConversionJobUpload(id: id, xApiKey: xApiKey, modelConversionJobUploadRequest: modelConversionJobUploadRequest) { (response, error) in
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
 **xApiKey** | **String** |  | 
 **modelConversionJobUploadRequest** | [**ModelConversionJobUploadRequest**](ModelConversionJobUploadRequest.md) | Body | [optional] 

### Return type

[**ModelConversionJobUpload201Response**](ModelConversionJobUpload201Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

