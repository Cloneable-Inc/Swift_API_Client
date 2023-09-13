# CompletedWorkflowAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCompletedWorkflows**](CompletedWorkflowAPI.md#getcompletedworkflows) | **POST** /completed-workflows | Get all completed workflows
[**getOneCompletedWorkflow**](CompletedWorkflowAPI.md#getonecompletedworkflow) | **GET** /completed-workflow/{id} | Returns a completed workflow by id


# **getCompletedWorkflows**
```swift
    open class func getCompletedWorkflows(getCompletedWorkflowsRequest: GetCompletedWorkflowsRequest? = nil, completion: @escaping (_ data: [CompletedWorkflowSchema]?, _ error: Error?) -> Void)
```

Get all completed workflows

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Swift_API_Client

let getCompletedWorkflowsRequest = getCompletedWorkflows_request(id: ["id_example"], filters: getCompletedWorkflows_request_filters(company: "company_example", createdBy: "createdBy_example", createdAt: "createdAt_example", typeRefId: "typeRefId_example", finalized: false, finalizedAt: "finalizedAt_example", workflowInstanceId: "workflowInstanceId_example", relatedObjectId: "relatedObjectId_example"), latest: "latest_example") // GetCompletedWorkflowsRequest | Body (optional)

// Get all completed workflows
CompletedWorkflowAPI.getCompletedWorkflows(getCompletedWorkflowsRequest: getCompletedWorkflowsRequest) { (response, error) in
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
 **getCompletedWorkflowsRequest** | [**GetCompletedWorkflowsRequest**](GetCompletedWorkflowsRequest.md) | Body | [optional] 

### Return type

[**[CompletedWorkflowSchema]**](CompletedWorkflowSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOneCompletedWorkflow**
```swift
    open class func getOneCompletedWorkflow(id: String, completion: @escaping (_ data: CompletedWorkflowSchema?, _ error: Error?) -> Void)
```

Returns a completed workflow by id

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Swift_API_Client

let id = "id_example" // String | 

// Returns a completed workflow by id
CompletedWorkflowAPI.getOneCompletedWorkflow(id: id) { (response, error) in
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

[**CompletedWorkflowSchema**](CompletedWorkflowSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

