# FileAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createFile**](FileAPI.md#createfile) | **PUT** /file | Add a new file after upload
[**getFileDownloadUrl**](FileAPI.md#getfiledownloadurl) | **GET** /file/{id}/download-url | Returns a signed download url from R2 by fileId
[**getFiles**](FileAPI.md#getfiles) | **POST** /files | Get all files
[**getOneFile**](FileAPI.md#getonefile) | **GET** /file/{id} | Get a single files
[**retryFileUploadUrl**](FileAPI.md#retryfileuploadurl) | **GET** /file/{id}/retry-upload-url | Returns a signed upload url from R2 by file.id
[**updateFile**](FileAPI.md#updatefile) | **POST** /file/{id} | Update a single file


# **createFile**
```swift
    open class func createFile(fileSchema: FileSchema? = nil, completion: @escaping (_ data: CreateFile201Response?, _ error: Error?) -> Void)
```

Add a new file after upload

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileSchema = FileSchema(id: "id_example", relatedObjectId: "relatedObjectId_example", relatedWorkflowId: "relatedWorkflowId_example", typeRefIds: ["typeRefIds_example"], company: "company_example", contentType: "contentType_example", createdAt: "createdAt_example", createdBy: "createdBy_example", _extension: "_extension_example", name: "name_example", displayName: "displayName_example", size: 123, type: "type_example", url: "url_example", savedToCloud: false, storageAuthProviderName: "storageAuthProviderName_example", storageAuthProviderRefID: "storageAuthProviderRefID_example", storageProvider: "storageProvider_example", syncToEdge: false, typeRefID: "typeRefID_example", additionalProperties: FileSchema_additional_properties(modelType: "modelType_example", modelVersion: "modelVersion_example", modelDescription: "modelDescription_example", modelDevice: "modelDevice_example")) // FileSchema | Body (optional)

// Add a new file after upload
FileAPI.createFile(fileSchema: fileSchema) { (response, error) in
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

[**CreateFile201Response**](CreateFile201Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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
    open class func getFiles(getFilesRequest: GetFilesRequest? = nil, completion: @escaping (_ data: [FileSchema]?, _ error: Error?) -> Void)
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

[**[FileSchema]**](FileSchema.md)

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

# **retryFileUploadUrl**
```swift
    open class func retryFileUploadUrl(id: String, completion: @escaping (_ data: RetryFileUploadUrl200Response?, _ error: Error?) -> Void)
```

Returns a signed upload url from R2 by file.id

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 

// Returns a signed upload url from R2 by file.id
FileAPI.retryFileUploadUrl(id: id) { (response, error) in
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

[**RetryFileUploadUrl200Response**](RetryFileUploadUrl200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateFile**
```swift
    open class func updateFile(id: String, updateFileRequest: UpdateFileRequest? = nil, completion: @escaping (_ data: UpdateFile200Response?, _ error: Error?) -> Void)
```

Update a single file

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 
let updateFileRequest = updateFile_request(savedToCloud: false, syncToEdge: false, relatedWorkflowId: "relatedWorkflowId_example", relatedObjectId: "relatedObjectId_example", typeRefIds: ["typeRefIds_example"]) // UpdateFileRequest | Body (optional)

// Update a single file
FileAPI.updateFile(id: id, updateFileRequest: updateFileRequest) { (response, error) in
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
 **updateFileRequest** | [**UpdateFileRequest**](UpdateFileRequest.md) | Body | [optional] 

### Return type

[**UpdateFile200Response**](UpdateFile200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

