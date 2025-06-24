# DeployedWorfklowAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDeployedWorkflows**](DeployedWorfklowAPI.md#getdeployedworkflows) | **POST** /deployed-workflows | Get all deployed workflows
[**getDeployedWorkflowsQuery**](DeployedWorfklowAPI.md#getdeployedworkflowsquery) | **GET** /deployed-workflows | Get all deployed workflows
[**getOneDeployedWorkflow**](DeployedWorfklowAPI.md#getonedeployedworkflow) | **GET** /deployed-workflow/{id} | Returns a deployed workflow by id


# **getDeployedWorkflows**
```swift
    open class func getDeployedWorkflows(getDeployedWorkflowsRequest: GetDeployedWorkflowsRequest? = nil, completion: @escaping (_ data: [DeployedWorkflowSchema]?, _ error: Error?) -> Void)
```

Get all deployed workflows

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let getDeployedWorkflowsRequest = getDeployedWorkflows_request(id: ["id_example"], filters: getDeployedWorkflows_request_filters(companyId: "companyId_example", createdBy: "createdBy_example", createdAt: "createdAt_example", typeRefId: "typeRefId_example", environment: "environment_example"), latest: "latest_example") // GetDeployedWorkflowsRequest | Body (optional)

// Get all deployed workflows
DeployedWorfklowAPI.getDeployedWorkflows(getDeployedWorkflowsRequest: getDeployedWorkflowsRequest) { (response, error) in
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
 **getDeployedWorkflowsRequest** | [**GetDeployedWorkflowsRequest**](GetDeployedWorkflowsRequest.md) | Body | [optional] 

### Return type

[**[DeployedWorkflowSchema]**](DeployedWorkflowSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeployedWorkflowsQuery**
```swift
    open class func getDeployedWorkflowsQuery(id: [String]? = nil, filters: GetDeployedWorkflowsQueryFiltersParameter? = nil, latest: String? = nil, completion: @escaping (_ data: [DeployedWorkflowSchema]?, _ error: Error?) -> Void)
```

Get all deployed workflows

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = ["inner_example"] // [String] |  (optional)
let filters = getDeployedWorkflowsQuery_filters_parameter(createdBy: "createdBy_example", createdAt: "createdAt_example", typeRefId: "typeRefId_example", environment: "environment_example") // GetDeployedWorkflowsQueryFiltersParameter |  (optional)
let latest = "latest_example" // String |  (optional)

// Get all deployed workflows
DeployedWorfklowAPI.getDeployedWorkflowsQuery(id: id, filters: filters, latest: latest) { (response, error) in
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
 **filters** | [**GetDeployedWorkflowsQueryFiltersParameter**](.md) |  | [optional] 
 **latest** | **String** |  | [optional] 

### Return type

[**[DeployedWorkflowSchema]**](DeployedWorkflowSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOneDeployedWorkflow**
```swift
    open class func getOneDeployedWorkflow(id: String, completion: @escaping (_ data: DeployedWorkflowSchema?, _ error: Error?) -> Void)
```

Returns a deployed workflow by id

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 

// Returns a deployed workflow by id
DeployedWorfklowAPI.getOneDeployedWorkflow(id: id) { (response, error) in
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

[**DeployedWorkflowSchema**](DeployedWorkflowSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

