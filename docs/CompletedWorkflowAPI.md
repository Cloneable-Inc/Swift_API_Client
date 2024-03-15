# CompletedWorkflowAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCompletedWorkflow**](CompletedWorkflowAPI.md#createcompletedworkflow) | **PUT** /completed-workflow | Add a new completed workflow
[**getCompletedWorkflows**](CompletedWorkflowAPI.md#getcompletedworkflows) | **POST** /completed-workflows | Get all completed workflows
[**getOneCompletedWorkflow**](CompletedWorkflowAPI.md#getonecompletedworkflow) | **GET** /completed-workflow/{id} | Returns a completed workflow by id
[**getPagedWorkflows**](CompletedWorkflowAPI.md#getpagedworkflows) | **GET** /completed-workflows | Get paginated completed workflows
[**updateCompletedWorkflow**](CompletedWorkflowAPI.md#updatecompletedworkflow) | **POST** /completed-workflow/{id} | Update a completed workflow


# **createCompletedWorkflow**
```swift
    open class func createCompletedWorkflow(createCompletedWorkflowSchema: CreateCompletedWorkflowSchema? = nil, completion: @escaping (_ data: UpdateFile200Response?, _ error: Error?) -> Void)
```

Add a new completed workflow

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let createCompletedWorkflowSchema = CreateCompletedWorkflowSchema(name: "name_example", companyId: "companyId_example", finalized: false, finalizedAt: Date(), createdAt: Date(), createdBy: "createdBy_example", updatedAt: Date(), typeRefId: "typeRefId_example", relatedObjectTypes: [CompletedWorkflowSchema_related_object_types_inner(objectId: "objectId_example", objectName: "objectName_example")], workflowInstanceId: "workflowInstanceId_example", relatedWorkflowTemplateId: "relatedWorkflowTemplateId_example", auditTimeline: [CompletedWorkflowSchema_audit_timeline_inner(componentName: "componentName_example", componentType: "componentType_example", dynamicComponentId: "dynamicComponentId_example", startedAt: Date(), staticComponentId: "staticComponentId_example", completedAt: Date())]) // CreateCompletedWorkflowSchema | Body (optional)

// Add a new completed workflow
CompletedWorkflowAPI.createCompletedWorkflow(createCompletedWorkflowSchema: createCompletedWorkflowSchema) { (response, error) in
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
 **createCompletedWorkflowSchema** | [**CreateCompletedWorkflowSchema**](CreateCompletedWorkflowSchema.md) | Body | [optional] 

### Return type

[**UpdateFile200Response**](UpdateFile200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCompletedWorkflows**
```swift
    open class func getCompletedWorkflows(getCompletedWorkflowsRequest: GetCompletedWorkflowsRequest? = nil, completion: @escaping (_ data: [CompletedWorkflowSchema]?, _ error: Error?) -> Void)
```

Get all completed workflows

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let getCompletedWorkflowsRequest = getCompletedWorkflows_request(id: ["id_example"], filters: getPagedWorkflows_filters_parameter(company: "company_example", createdBy: "createdBy_example", createdAt: getManyFiles_filters_parameter_created_at(from: "from_example", to: "to_example"), typeRefId: "typeRefId_example", finalized: false, finalizedAt: nil, workflowInstanceId: "workflowInstanceId_example", relatedObjectId: "relatedObjectId_example"), latest: "latest_example", limit: 123, skip: 123) // GetCompletedWorkflowsRequest | Body (optional)

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
import Cloneable_Swift_Client

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

# **getPagedWorkflows**
```swift
    open class func getPagedWorkflows(index: Int? = nil, size: Int? = nil, filters: GetPagedWorkflowsFiltersParameter? = nil, id: [String]? = nil, latest: String? = nil, sorting: GetPagedWorkflowsSortingParameter? = nil, completion: @escaping (_ data: GetPagedWorkflows200Response?, _ error: Error?) -> Void)
```

Get paginated completed workflows

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let index = 987 // Int |  (optional)
let size = 987 // Int |  (optional)
let filters = getPagedWorkflows_filters_parameter(company: "company_example", createdBy: "createdBy_example", createdAt: getManyFiles_filters_parameter_created_at(from: "from_example", to: "to_example"), typeRefId: "typeRefId_example", finalized: false, finalizedAt: nil, workflowInstanceId: "workflowInstanceId_example", relatedObjectId: "relatedObjectId_example") // GetPagedWorkflowsFiltersParameter |  (optional)
let id = ["inner_example"] // [String] |  (optional)
let latest = "latest_example" // String |  (optional)
let sorting = getPagedWorkflows_sorting_parameter(column: "column_example", desc: false) // GetPagedWorkflowsSortingParameter |  (optional)

// Get paginated completed workflows
CompletedWorkflowAPI.getPagedWorkflows(index: index, size: size, filters: filters, id: id, latest: latest, sorting: sorting) { (response, error) in
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
 **index** | **Int** |  | [optional] 
 **size** | **Int** |  | [optional] 
 **filters** | [**GetPagedWorkflowsFiltersParameter**](.md) |  | [optional] 
 **id** | [**[String]**](String.md) |  | [optional] 
 **latest** | **String** |  | [optional] 
 **sorting** | [**GetPagedWorkflowsSortingParameter**](.md) |  | [optional] 

### Return type

[**GetPagedWorkflows200Response**](GetPagedWorkflows200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCompletedWorkflow**
```swift
    open class func updateCompletedWorkflow(id: String, updateCompletedWorkflowSchema: UpdateCompletedWorkflowSchema? = nil, completion: @escaping (_ data: UpdateFile200Response?, _ error: Error?) -> Void)
```

Update a completed workflow

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let updateCompletedWorkflowSchema = UpdateCompletedWorkflowSchema(name: "name_example", finalized: false, finalizedAt: Date(), updatedAt: Date(), typeRefId: "typeRefId_example", relatedObjectTypes: [CompletedWorkflowSchema_related_object_types_inner(objectId: "objectId_example", objectName: "objectName_example")], relatedWorkflowTemplateId: "relatedWorkflowTemplateId_example", auditTimeline: [CompletedWorkflowSchema_audit_timeline_inner(componentName: "componentName_example", componentType: "componentType_example", dynamicComponentId: "dynamicComponentId_example", startedAt: Date(), staticComponentId: "staticComponentId_example", completedAt: Date())]) // UpdateCompletedWorkflowSchema | Body (optional)

// Update a completed workflow
CompletedWorkflowAPI.updateCompletedWorkflow(id: id, updateCompletedWorkflowSchema: updateCompletedWorkflowSchema) { (response, error) in
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
 **updateCompletedWorkflowSchema** | [**UpdateCompletedWorkflowSchema**](UpdateCompletedWorkflowSchema.md) | Body | [optional] 

### Return type

[**UpdateFile200Response**](UpdateFile200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

