# FileAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createFile**](FileAPI.md#createfile) | **PUT** /file | Add a new file after upload
[**deleteFile**](FileAPI.md#deletefile) | **DELETE** /file/{id} | Delete a single file
[**getFileDownloadUrl**](FileAPI.md#getfiledownloadurl) | **GET** /file/{id}/download-url | Returns a signed download url from R2 by fileId
[**getFiles**](FileAPI.md#getfiles) | **POST** /files | Get all files
[**getManyFiles**](FileAPI.md#getmanyfiles) | **GET** /files | Get paginated files
[**getOneFile**](FileAPI.md#getonefile) | **GET** /file/{id} | Get a single files
[**retryFileUploadUrl**](FileAPI.md#retryfileuploadurl) | **GET** /file/{id}/retry-upload-url | Returns a signed upload url from R2 by file.id
[**updateFile**](FileAPI.md#updatefile) | **POST** /file/{id} | Update a single file


# **createFile**
```swift
    open class func createFile(createFileSchema: CreateFileSchema? = nil, completion: @escaping (_ data: CreateFile201Response?, _ error: Error?) -> Void)
```

Add a new file after upload

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let createFileSchema = CreateFileSchema(id: 123, relatedObjectId: 123, relatedWorkflowId: 123, typeRefIds: ["typeRefIds_example"], company: "company_example", contentType: "contentType_example", createdAt: Date(), createdBy: "createdBy_example", _extension: "_extension_example", name: "name_example", displayName: "displayName_example", size: 123, type: "type_example", url: "url_example", savedToCloud: false, storageAuthProviderName: "storageAuthProviderName_example", storageProvider: "storageProvider_example", syncToEdge: false, typeRefID: "typeRefID_example", additionalProperties: "TODO") // CreateFileSchema | Body (optional)

// Add a new file after upload
FileAPI.createFile(createFileSchema: createFileSchema) { (response, error) in
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
 **createFileSchema** | [**CreateFileSchema**](CreateFileSchema.md) | Body | [optional] 

### Return type

[**CreateFile201Response**](CreateFile201Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFile**
```swift
    open class func deleteFile(id: String, body: JSONValue? = nil, completion: @escaping (_ data: UpdateFile200Response?, _ error: Error?) -> Void)
```

Delete a single file

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let body = "TODO" // JSONValue | Body (optional)

// Delete a single file
FileAPI.deleteFile(id: id, body: body) { (response, error) in
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
 **body** | **JSONValue** | Body | [optional] 

### Return type

[**UpdateFile200Response**](UpdateFile200Response.md)

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
import Cloneable_Swift_Client

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
import Cloneable_Swift_Client

let getFilesRequest = getFiles_request(id: ["id_example"], filters: getManyFiles_filters_parameter(createdAt: getManyFiles_filters_parameter_created_at(from: "from_example", to: "to_example"), search: "search_example", savedToCloud: false, syncToEdge: false, type: ["type_example"], createdBy: "createdBy_example", additionalProperties: "TODO"), latest: "latest_example") // GetFilesRequest | Body (optional)

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

# **getManyFiles**
```swift
    open class func getManyFiles(index: Int? = nil, size: Int? = nil, filters: GetManyFilesFiltersParameter? = nil, id: [String]? = nil, latest: String? = nil, sorting: GetManyFilesSortingParameter? = nil, completion: @escaping (_ data: GetManyFiles200Response?, _ error: Error?) -> Void)
```

Get paginated files

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let index = 987 // Int |  (optional)
let size = 987 // Int |  (optional)
let filters = getManyFiles_filters_parameter(createdAt: getManyFiles_filters_parameter_created_at(from: "from_example", to: "to_example"), search: "search_example", savedToCloud: false, syncToEdge: false, type: ["type_example"], createdBy: "createdBy_example", additionalProperties: "TODO") // GetManyFilesFiltersParameter |  (optional)
let id = ["inner_example"] // [String] |  (optional)
let latest = "latest_example" // String |  (optional)
let sorting = getManyFiles_sorting_parameter(column: "column_example", desc: false) // GetManyFilesSortingParameter |  (optional)

// Get paginated files
FileAPI.getManyFiles(index: index, size: size, filters: filters, id: id, latest: latest, sorting: sorting) { (response, error) in
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
 **filters** | [**GetManyFilesFiltersParameter**](.md) |  | [optional] 
 **id** | [**[String]**](String.md) |  | [optional] 
 **latest** | **String** |  | [optional] 
 **sorting** | [**GetManyFilesSortingParameter**](.md) |  | [optional] 

### Return type

[**GetManyFiles200Response**](GetManyFiles200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOneFile**
```swift
    open class func getOneFile(id: String, downloadUrl: Bool? = nil, completion: @escaping (_ data: FileSchema?, _ error: Error?) -> Void)
```

Get a single files

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let downloadUrl = true // Bool |  (optional)

// Get a single files
FileAPI.getOneFile(id: id, downloadUrl: downloadUrl) { (response, error) in
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
 **downloadUrl** | **Bool** |  | [optional] 

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
import Cloneable_Swift_Client

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
    open class func updateFile(id: String, insertFileSchema: InsertFileSchema? = nil, completion: @escaping (_ data: UpdateFile200Response?, _ error: Error?) -> Void)
```

Update a single file

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let insertFileSchema = InsertFileSchema(savedToCloud: false, syncToEdge: false, relatedWorkflowId: 123, relatedObjectId: 123, typeRefIds: ["typeRefIds_example"]) // InsertFileSchema | Body (optional)

// Update a single file
FileAPI.updateFile(id: id, insertFileSchema: insertFileSchema) { (response, error) in
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
 **insertFileSchema** | [**InsertFileSchema**](InsertFileSchema.md) | Body | [optional] 

### Return type

[**UpdateFile200Response**](UpdateFile200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

