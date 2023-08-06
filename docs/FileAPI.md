# FileAPI

All URIs are relative to *https://new-api.cloneablewebapp.pages.dev/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createFile**](FileAPI.md#createfile) | **PUT** /file | Add a new file after upload
[**getFiles**](FileAPI.md#getfiles) | **POST** /files | Get all files
[**getOneFile**](FileAPI.md#getonefile) | **GET** /file/{id} | Get a single file


# **createFile**
```swift
    open class func createFile(fileInput: FileInput? = nil, completion: @escaping (_ data: FileResponse?, _ error: Error?) -> Void)
```

Add a new file after upload

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fileInput = FileInput(name: "name_example", size: "size_example", createdAt: false, description: "description_example", isUploaded: false, urlToSave: "urlToSave_example") // FileInput | Body (optional)

// Add a new file after upload
FileAPI.createFile(fileInput: fileInput) { (response, error) in
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
 **fileInput** | [**FileInput**](FileInput.md) | Body | [optional] 

### Return type

[**FileResponse**](FileResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFiles**
```swift
    open class func getFiles(getFilesInput: GetFilesInput? = nil, completion: @escaping (_ data: [FileResponse]?, _ error: Error?) -> Void)
```

Get all files

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let getFilesInput = GetFilesInput(id: ["id_example"], filters: GetFilesInput_filters(company: "company_example", createdBy: "createdBy_example", createdAt: "createdAt_example", type: "type_example", typeRefId: "typeRefId_example", relatedObjectId: "relatedObjectId_example", relatedWorkflowId: "relatedWorkflowId_example", savedToCloud: false, syncToEdge: false)) // GetFilesInput | Body (optional)

// Get all files
FileAPI.getFiles(getFilesInput: getFilesInput) { (response, error) in
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
 **getFilesInput** | [**GetFilesInput**](GetFilesInput.md) | Body | [optional] 

### Return type

[**[FileResponse]**](FileResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOneFile**
```swift
    open class func getOneFile(id: String, completion: @escaping (_ data: FileResponse?, _ error: Error?) -> Void)
```

Get a single file

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 

// Get a single file
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

[**FileResponse**](FileResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

