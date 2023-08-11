# FileAPI

All URIs are relative to *http://localhost:3000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getFileDownloadUrl**](FileAPI.md#getfiledownloadurl) | **GET** /file/{id}/download-url | Returns a signed download url from R2 by fileId
[**getFiles**](FileAPI.md#getfiles) | **POST** /files | Get all files
[**getOneFile**](FileAPI.md#getonefile) | **GET** /file/{id} | Get a single files
[**uploadFile**](FileAPI.md#uploadfile) | **PUT** /file | Add a new file after upload


# **getFileDownloadUrl**
```swift
    open class func getFileDownloadUrl(id: String, completion: @escaping (_ data: GetFileDownloadUrl200Response?, _ error: Error?) -> Void)
```

Returns a signed download url from R2 by fileId

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 

// Returns a signed download url from R2 by fileId
FileAPI.getFileDownloadUrl(id: id) { (response, error) in
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

[**GetFileDownloadUrl200Response**](GetFileDownloadUrl200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFiles**
```swift
    open class func getFiles(getFilesRequest: GetFilesRequest? = nil, completion: @escaping (_ data: [FileSchemaArrayInner]?, _ error: Error?) -> Void)
```

Get all files

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let getFilesRequest = getFiles_request(id: ["id_example"], filters: getFiles_request_filters(company: "company_example", createdBy: "createdBy_example", createdAt: "createdAt_example", type: "type_example", typeRefId: "typeRefId_example", relatedObjectId: "relatedObjectId_example", relatedWorkflowId: "relatedWorkflowId_example", savedToCloud: false, syncToEdge: false), latest: "latest_example") // GetFilesRequest | Body (optional)

// Get all files
FileAPI.getFiles(getFilesRequest: getFilesRequest) { (response, error) in
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
 **getFilesRequest** | [**GetFilesRequest**](GetFilesRequest.md) | Body | [optional] 

### Return type

[**[FileSchemaArrayInner]**](FileSchemaArrayInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOneFile**
```swift
    open class func getOneFile(id: String, completion: @escaping (_ data: FileSchema?, _ error: Error?) -> Void)
```

Get a single files

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 

// Get a single files
FileAPI.getOneFile(id: id) { (response, error) in
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

[**FileSchema**](FileSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadFile**
```swift
    open class func uploadFile(fileSchema: FileSchema? = nil, completion: @escaping (_ data: UploadFile201Response?, _ error: Error?) -> Void)
```

Add a new file after upload

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileSchema = FileSchema(id: "id_example", relatedObjectId: "relatedObjectId_example", relatedWorkflowId: "relatedWorkflowId_example", typeRefIds: ["typeRefIds_example"], company: "company_example", contentType: "contentType_example", createdAt: "createdAt_example", createdBy: "createdBy_example", _extension: "_extension_example", name: "name_example", displayName: "displayName_example", size: 123, type: "type_example", url: "url_example", savedToCloud: false, storageAuthProviderName: "storageAuthProviderName_example", storageAuthProviderRefID: "storageAuthProviderRefID_example", storageProvider: "storageProvider_example", syncToEdge: false, typeRefID: "typeRefID_example", additionalProperties: FileSchema_additional_properties(modelType: "modelType_example", modelVersion: "modelVersion_example", modelDescription: "modelDescription_example", modelDevice: "modelDevice_example")) // FileSchema | Body (optional)

// Add a new file after upload
FileAPI.uploadFile(fileSchema: fileSchema) { (response, error) in
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
 **fileSchema** | [**FileSchema**](FileSchema.md) | Body | [optional] 

### Return type

[**UploadFile201Response**](UploadFile201Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

