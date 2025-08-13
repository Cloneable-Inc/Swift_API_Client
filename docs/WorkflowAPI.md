# WorkflowAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**compileWorkflow**](WorkflowAPI.md#compileworkflow) | **POST** /workflow/compile | Compile a workflow
[**createWorkflow**](WorkflowAPI.md#createworkflow) | **POST** /workflow/create | 
[**deleteWorkflow**](WorkflowAPI.md#deleteworkflow) | **DELETE** /workflow/{workflow_id} | 
[**getAllWorkflows**](WorkflowAPI.md#getallworkflows) | **GET** /workflows | Get all workflows
[**getWorkflow**](WorkflowAPI.md#getworkflow) | **GET** /workflow/{workflow_id} | Get a workflow
[**saveWorkflow**](WorkflowAPI.md#saveworkflow) | **POST** /workflow/{id}/save | Save a workflow


# **compileWorkflow**
```swift
    open class func compileWorkflow(compileWorkflowRequest: CompileWorkflowRequest? = nil, completion: @escaping (_ data: WorkflowDraftSchema?, _ error: Error?) -> Void)
```

Compile a workflow

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let compileWorkflowRequest = compileWorkflow_request(workflow: compileWorkflow_request_workflow(id: "id_example", companyId: "companyId_example", workflowName: "workflowName_example", workflowDescription: "workflowDescription_example", draft: false, createdBy: "createdBy_example", createdAt: Date(), updatedAt: Date(), lastModifiedAt: Date(), revision: 123, typeRefId: "typeRefId_example", builderObject: saveWorkflow_request_builder_object(nodes: [123], edges: [123]), resources: [saveWorkflow_request_resources_inner(componentId: "componentId_example", files: ["files_example"], objects: [saveWorkflow_request_resources_inner_objects_inner(templateId: "templateId_example", createdAfter: "createdAfter_example")])])) // CompileWorkflowRequest | Body (optional)

// Compile a workflow
WorkflowAPI.compileWorkflow(compileWorkflowRequest: compileWorkflowRequest) { (response, error) in
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
 **compileWorkflowRequest** | [**CompileWorkflowRequest**](CompileWorkflowRequest.md) | Body | [optional] 

### Return type

[**WorkflowDraftSchema**](WorkflowDraftSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createWorkflow**
```swift
    open class func createWorkflow(createWorkflowRequest: CreateWorkflowRequest? = nil, completion: @escaping (_ data: UpdateFile200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let createWorkflowRequest = createWorkflow_request(name: "name_example", description: "description_example") // CreateWorkflowRequest | Body (optional)

WorkflowAPI.createWorkflow(createWorkflowRequest: createWorkflowRequest) { (response, error) in
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
 **createWorkflowRequest** | [**CreateWorkflowRequest**](CreateWorkflowRequest.md) | Body | [optional] 

### Return type

[**UpdateFile200Response**](UpdateFile200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteWorkflow**
```swift
    open class func deleteWorkflow(workflowId: String, body: JSONValue? = nil, completion: @escaping (_ data: UpdateFile200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let workflowId = "workflowId_example" // String | 
let body = "TODO" // JSONValue | Body (optional)

WorkflowAPI.deleteWorkflow(workflowId: workflowId, body: body) { (response, error) in
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
 **workflowId** | **String** |  | 
 **body** | **JSONValue** | Body | [optional] 

### Return type

[**UpdateFile200Response**](UpdateFile200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllWorkflows**
```swift
    open class func getAllWorkflows(completion: @escaping (_ data: WorkflowDraftSchema?, _ error: Error?) -> Void)
```

Get all workflows

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client


// Get all workflows
WorkflowAPI.getAllWorkflows() { (response, error) in
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

[**WorkflowDraftSchema**](WorkflowDraftSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkflow**
```swift
    open class func getWorkflow(workflowId: String, completion: @escaping (_ data: WorkflowDraftSchema?, _ error: Error?) -> Void)
```

Get a workflow

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let workflowId = "workflowId_example" // String | 

// Get a workflow
WorkflowAPI.getWorkflow(workflowId: workflowId) { (response, error) in
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
 **workflowId** | **String** |  | 

### Return type

[**WorkflowDraftSchema**](WorkflowDraftSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveWorkflow**
```swift
    open class func saveWorkflow(id: String, saveWorkflowRequest: SaveWorkflowRequest? = nil, completion: @escaping (_ data: WorkflowDraftSchema?, _ error: Error?) -> Void)
```

Save a workflow

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let saveWorkflowRequest = saveWorkflow_request(id: "id_example", companyId: "companyId_example", workflowName: "workflowName_example", workflowDescription: "workflowDescription_example", draft: false, createdBy: "createdBy_example", createdAt: Date(), updatedAt: Date(), lastModifiedAt: Date(), revision: 123, typeRefId: "typeRefId_example", builderObject: saveWorkflow_request_builder_object(nodes: [123], edges: [123]), resources: [saveWorkflow_request_resources_inner(componentId: "componentId_example", files: ["files_example"], objects: [saveWorkflow_request_resources_inner_objects_inner(templateId: "templateId_example", createdAfter: "createdAfter_example")])]) // SaveWorkflowRequest | Body (optional)

// Save a workflow
WorkflowAPI.saveWorkflow(id: id, saveWorkflowRequest: saveWorkflowRequest) { (response, error) in
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
 **saveWorkflowRequest** | [**SaveWorkflowRequest**](SaveWorkflowRequest.md) | Body | [optional] 

### Return type

[**WorkflowDraftSchema**](WorkflowDraftSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

