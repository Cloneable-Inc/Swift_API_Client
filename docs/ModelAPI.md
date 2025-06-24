# ModelAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createModel**](ModelAPI.md#createmodel) | **POST** /model | Create model for company
[**createModelConversionJob**](ModelAPI.md#createmodelconversionjob) | **POST** /model-conversion-job | Create model conversion job for company
[**getModelConversionJobs**](ModelAPI.md#getmodelconversionjobs) | **GET** /model-conversion-jobs | Get model conversion jobs for company
[**getModels**](ModelAPI.md#getmodels) | **GET** /models | Get models for company
[**getOneModel**](ModelAPI.md#getonemodel) | **GET** /model/{id} | Get model for company


# **createModel**
```swift
    open class func createModel(createModelRequest: CreateModelRequest? = nil, completion: @escaping (_ data: ModelSchema?, _ error: Error?) -> Void)
```

Create model for company

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let createModelRequest = createModel_request(displayName: "displayName_example", description: "description_example", frameworkType: "frameworkType_example", fileId: 123) // CreateModelRequest | Body (optional)

// Create model for company
ModelAPI.createModel(createModelRequest: createModelRequest) { (response, error) in
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
 **createModelRequest** | [**CreateModelRequest**](CreateModelRequest.md) | Body | [optional] 

### Return type

[**ModelSchema**](ModelSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createModelConversionJob**
```swift
    open class func createModelConversionJob(createModelConversionJobRequest: CreateModelConversionJobRequest? = nil, completion: @escaping (_ data: ModelConversionJobSchema?, _ error: Error?) -> Void)
```

Create model conversion job for company

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let createModelConversionJobRequest = createModelConversionJob_request(originModelId: "originModelId_example", exportFormat: "exportFormat_example", params: [createModelConversionJob_request_params_inner(key: "key_example", value: "value_example")]) // CreateModelConversionJobRequest | Body (optional)

// Create model conversion job for company
ModelAPI.createModelConversionJob(createModelConversionJobRequest: createModelConversionJobRequest) { (response, error) in
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
 **createModelConversionJobRequest** | [**CreateModelConversionJobRequest**](CreateModelConversionJobRequest.md) | Body | [optional] 

### Return type

[**ModelConversionJobSchema**](ModelConversionJobSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getModelConversionJobs**
```swift
    open class func getModelConversionJobs(id: [String]? = nil, filters: GetModelConversionJobsFiltersParameter? = nil, latest: String? = nil, completion: @escaping (_ data: [ModelConversionJobSchema]?, _ error: Error?) -> Void)
```

Get model conversion jobs for company

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = ["inner_example"] // [String] |  (optional)
let filters = getModelConversionJobs_filters_parameter(status: ["status_example"], originModelId: "originModelId_example") // GetModelConversionJobsFiltersParameter |  (optional)
let latest = "latest_example" // String |  (optional)

// Get model conversion jobs for company
ModelAPI.getModelConversionJobs(id: id, filters: filters, latest: latest) { (response, error) in
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
 **filters** | [**GetModelConversionJobsFiltersParameter**](.md) |  | [optional] 
 **latest** | **String** |  | [optional] 

### Return type

[**[ModelConversionJobSchema]**](ModelConversionJobSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getModels**
```swift
    open class func getModels(completion: @escaping (_ data: [ModelSchema]?, _ error: Error?) -> Void)
```

Get models for company

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client


// Get models for company
ModelAPI.getModels() { (response, error) in
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

[**[ModelSchema]**](ModelSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOneModel**
```swift
    open class func getOneModel(id: String, completion: @escaping (_ data: ModelSchema?, _ error: Error?) -> Void)
```

Get model for company

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 

// Get model for company
ModelAPI.getOneModel(id: id) { (response, error) in
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

[**ModelSchema**](ModelSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

