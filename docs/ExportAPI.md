# ExportAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**triggerExport**](ExportAPI.md#triggerexport) | **POST** /exports/{exportType} | Trigger an export to external system


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
let triggerExportRequest = triggerExport_request(fileId: "fileId_example", nodeUrl: "nodeUrl_example", attachments: [triggerExport_request_oneOf_attachments_inner(manualHeight: "manualHeight_example", height: "height_example", pixelSelection: [triggerExport_request_oneOf_attachments_inner_pixel_selection_inner(percentX: 123, percentY: 123)], type: "type_example")], columns: ["columns_example"], data: ["TODO"], filename: "filename_example") // TriggerExportRequest | Body (optional)

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

