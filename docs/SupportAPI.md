# SupportAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sendFeedback**](SupportAPI.md#sendfeedback) | **PUT** /support/feedback | Send feedback from user


# **sendFeedback**
```swift
    open class func sendFeedback(sendFeedbackRequest: SendFeedbackRequest? = nil, completion: @escaping (_ data: CreateFile400Response?, _ error: Error?) -> Void)
```

Send feedback from user

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let sendFeedbackRequest = sendFeedback_request(message: "message_example", page: "page_example") // SendFeedbackRequest | Body (optional)

// Send feedback from user
SupportAPI.sendFeedback(sendFeedbackRequest: sendFeedbackRequest) { (response, error) in
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
 **sendFeedbackRequest** | [**SendFeedbackRequest**](SendFeedbackRequest.md) | Body | [optional] 

### Return type

[**CreateFile400Response**](CreateFile400Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

