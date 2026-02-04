# ExportAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**exportStatus**](ExportAPI.md#exportstatus) | **GET** /exports/status/{jobId} | Get export status counts for a given export/job id
[**getExportExecutions**](ExportAPI.md#getexportexecutions) | **GET** /exports/executions/{jobId} | Get export executions for a job
[**getExportQueue**](ExportAPI.md#getexportqueue) | **GET** /exports/queue/{jobId} | Get data object IDs that need re-export based on field modifications
[**getKatapultJob**](ExportAPI.md#getkatapultjob) | **GET** /exports/katapult/{jobId} | Get a Katapult job by ID
[**triggerExport**](ExportAPI.md#triggerexport) | **POST** /exports/{exportType} | Trigger an export to external system


# **exportStatus**
```swift
    open class func exportStatus(jobId: String, completion: @escaping (_ data: ExportStatus200Response?, _ error: Error?) -> Void)
```

Get export status counts for a given export/job id

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let jobId = "jobId_example" // String | 

// Get export status counts for a given export/job id
ExportAPI.exportStatus(jobId: jobId) { (response, error) in
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
 **jobId** | **String** |  | 

### Return type

[**ExportStatus200Response**](ExportStatus200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExportExecutions**
```swift
    open class func getExportExecutions(jobId: String, limit: Double? = nil, offset: Double? = nil, status: Status_getExportExecutions? = nil, completion: @escaping (_ data: GetExportExecutions200Response?, _ error: Error?) -> Void)
```

Get export executions for a job

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let jobId = "jobId_example" // String | 
let limit = 987 // Double |  (optional)
let offset = 987 // Double |  (optional)
let status = "status_example" // String |  (optional)

// Get export executions for a job
ExportAPI.getExportExecutions(jobId: jobId, limit: limit, offset: offset, status: status) { (response, error) in
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
 **jobId** | **String** |  | 
 **limit** | **Double** |  | [optional] 
 **offset** | **Double** |  | [optional] 
 **status** | **String** |  | [optional] 

### Return type

[**GetExportExecutions200Response**](GetExportExecutions200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExportQueue**
```swift
    open class func getExportQueue(jobId: String, specifiedTime: String? = nil, completion: @escaping (_ data: GetExportQueue200Response?, _ error: Error?) -> Void)
```

Get data object IDs that need re-export based on field modifications

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let jobId = "jobId_example" // String | 
let specifiedTime = "specifiedTime_example" // String |  (optional)

// Get data object IDs that need re-export based on field modifications
ExportAPI.getExportQueue(jobId: jobId, specifiedTime: specifiedTime) { (response, error) in
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
 **jobId** | **String** |  | 
 **specifiedTime** | **String** |  | [optional] 

### Return type

[**GetExportQueue200Response**](GetExportQueue200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getKatapultJob**
```swift
    open class func getKatapultJob(jobId: String, completion: @escaping (_ data: [GetKatapultJob200ResponseInner]?, _ error: Error?) -> Void)
```

Get a Katapult job by ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let jobId = "jobId_example" // String | 

// Get a Katapult job by ID
ExportAPI.getKatapultJob(jobId: jobId) { (response, error) in
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
 **jobId** | **String** |  | 

### Return type

[**[GetKatapultJob200ResponseInner]**](GetKatapultJob200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **triggerExport**
```swift
    open class func triggerExport(exportType: ExportType_triggerExport, triggerExportRequest: TriggerExportRequest? = nil, completion: @escaping (_ data: TriggerExport200Response?, _ error: Error?) -> Void)
```

Trigger an export to external system

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let exportType = "exportType_example" // String | 
let triggerExportRequest = triggerExport_request(fileId: "fileId_example", exportType: "exportType_example", nodeUrl: "nodeUrl_example", jobId: "jobId_example", nodeId: "nodeId_example", connectionId: "connectionId_example", sectionId: "sectionId_example", attachments: [triggerExport_request_oneOf_attachments_inner(manualHeight: "manualHeight_example", height: "height_example", pixelSelection: [triggerExport_request_oneOf_attachments_inner_pixel_selection_inner(percentX: 123, percentY: 123)], type: "type_example")], elements: [123], traces: [triggerExport_request_oneOf_traces_inner(traceType: "traceType_example", attributes: "TODO", elementIndices: [123])], columns: ["columns_example"], data: ["TODO"], filename: "filename_example") // TriggerExportRequest | Body (optional)

// Trigger an export to external system
ExportAPI.triggerExport(exportType: exportType, triggerExportRequest: triggerExportRequest) { (response, error) in
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
 **exportType** | **String** |  | 
 **triggerExportRequest** | [**TriggerExportRequest**](TriggerExportRequest.md) | Body | [optional] 

### Return type

[**TriggerExport200Response**](TriggerExport200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

