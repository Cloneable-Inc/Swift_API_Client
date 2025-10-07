# TriggerAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**archiveTrigger**](TriggerAPI.md#archivetrigger) | **POST** /trigger/{id}/archive | Archive a trigger
[**attachSecret**](TriggerAPI.md#attachsecret) | **POST** /trigger/{id}/secrets/{secret_id} | Attach a secret to a trigger
[**createTrigger**](TriggerAPI.md#createtrigger) | **POST** /trigger | Create a new trigger
[**debugGet**](TriggerAPI.md#debugget) | **GET** /trigger/{id}/debug | Get debug state for a trigger Durable Object
[**debugPost**](TriggerAPI.md#debugpost) | **POST** /trigger/{id}/debug | Control debug state for a trigger Durable Object
[**deleteTrigger**](TriggerAPI.md#deletetrigger) | **DELETE** /trigger/{id} | Delete a trigger
[**detachSecret**](TriggerAPI.md#detachsecret) | **DELETE** /trigger/{id}/secrets/{secret_id} | Remove a secret from a trigger
[**getAllExecutions**](TriggerAPI.md#getallexecutions) | **GET** /triggers/executions | Get recent executions across all triggers
[**getExecutionLogs**](TriggerAPI.md#getexecutionlogs) | **GET** /trigger/execution/{execution_id}/logs | Get logs for a specific execution
[**getOneTrigger**](TriggerAPI.md#getonetrigger) | **GET** /trigger/{id} | Get a single trigger by ID
[**getTriggerByNameId**](TriggerAPI.md#gettriggerbynameid) | **GET** /trigger/by-name/{name_id} | Get a single trigger by name_id
[**getTriggerExecutions**](TriggerAPI.md#gettriggerexecutions) | **GET** /trigger/{id}/executions | Get execution history for a trigger
[**getTriggerSecrets**](TriggerAPI.md#gettriggersecrets) | **GET** /trigger/{id}/secrets | Get all secrets attached to a trigger
[**getTriggerTemplate**](TriggerAPI.md#gettriggertemplate) | **GET** /trigger/template/{templateId} | Get a specific trigger template
[**getTriggerTemplateCode**](TriggerAPI.md#gettriggertemplatecode) | **GET** /trigger/template/{templateId}/code | Get the code for a specific trigger template
[**getTriggerTemplates**](TriggerAPI.md#gettriggertemplates) | **GET** /trigger/templates | Get all available trigger templates
[**getTriggers**](TriggerAPI.md#gettriggers) | **GET** /triggers | Get all triggers for organization
[**runTrigger**](TriggerAPI.md#runtrigger) | **POST** /trigger/{id}/run | Manually execute a trigger (id can be UUID or name_id)
[**triggerExecutionStart**](TriggerAPI.md#triggerexecutionstart) | **POST** /trigger/{id}/execution/start | Start a trigger container
[**triggerExecutionStop**](TriggerAPI.md#triggerexecutionstop) | **POST** /trigger/{id}/execution/stop | Stop a trigger container
[**unarchiveTrigger**](TriggerAPI.md#unarchivetrigger) | **POST** /trigger/{id}/unarchive | Unarchive a trigger
[**updateTrigger**](TriggerAPI.md#updatetrigger) | **PUT** /trigger/{id} | Update an existing trigger
[**updateTriggerSecrets**](TriggerAPI.md#updatetriggersecrets) | **PUT** /trigger/{id}/secrets | Update all secrets for a trigger


# **archiveTrigger**
```swift
    open class func archiveTrigger(id: String, body: JSONValue? = nil, completion: @escaping (_ data: TriggerSchema?, _ error: Error?) -> Void)
```

Archive a trigger

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let body = "TODO" // JSONValue | Body (optional)

// Archive a trigger
TriggerAPI.archiveTrigger(id: id, body: body) { (response, error) in
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

[**TriggerSchema**](TriggerSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attachSecret**
```swift
    open class func attachSecret(id: String, secretId: String, body: JSONValue? = nil, completion: @escaping (_ data: CreateFile400Response?, _ error: Error?) -> Void)
```

Attach a secret to a trigger

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let secretId = "secretId_example" // String | 
let body = "TODO" // JSONValue | Body (optional)

// Attach a secret to a trigger
TriggerAPI.attachSecret(id: id, secretId: secretId, body: body) { (response, error) in
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
 **secretId** | **String** |  | 
 **body** | **JSONValue** | Body | [optional] 

### Return type

[**CreateFile400Response**](CreateFile400Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTrigger**
```swift
    open class func createTrigger(createTriggerRequest: CreateTriggerRequest? = nil, completion: @escaping (_ data: TriggerSchema?, _ error: Error?) -> Void)
```

Create a new trigger

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let createTriggerRequest = createTrigger_request(name: "name_example", description: "description_example", code: "code_example", runtime: "runtime_example", schedule: "schedule_example", type: "type_example", executionType: "executionType_example", executionWaitTime: 123, resourcePreset: "resourcePreset_example", templateId: "templateId_example", configParams: "TODO") // CreateTriggerRequest | Body (optional)

// Create a new trigger
TriggerAPI.createTrigger(createTriggerRequest: createTriggerRequest) { (response, error) in
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
 **createTriggerRequest** | [**CreateTriggerRequest**](CreateTriggerRequest.md) | Body | [optional] 

### Return type

[**TriggerSchema**](TriggerSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **debugGet**
```swift
    open class func debugGet(id: String, completion: @escaping (_ data: JSONValue?, _ error: Error?) -> Void)
```

Get debug state for a trigger Durable Object

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 

// Get debug state for a trigger Durable Object
TriggerAPI.debugGet(id: id) { (response, error) in
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

**JSONValue**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **debugPost**
```swift
    open class func debugPost(id: String, debugPostRequest: DebugPostRequest? = nil, completion: @escaping (_ data: JSONValue?, _ error: Error?) -> Void)
```

Control debug state for a trigger Durable Object

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let debugPostRequest = debugPost_request(action: "action_example") // DebugPostRequest | Body (optional)

// Control debug state for a trigger Durable Object
TriggerAPI.debugPost(id: id, debugPostRequest: debugPostRequest) { (response, error) in
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
 **debugPostRequest** | [**DebugPostRequest**](DebugPostRequest.md) | Body | [optional] 

### Return type

**JSONValue**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTrigger**
```swift
    open class func deleteTrigger(id: String, body: JSONValue? = nil, completion: @escaping (_ data: DeleteTrigger200Response?, _ error: Error?) -> Void)
```

Delete a trigger

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let body = "TODO" // JSONValue | Body (optional)

// Delete a trigger
TriggerAPI.deleteTrigger(id: id, body: body) { (response, error) in
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

[**DeleteTrigger200Response**](DeleteTrigger200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **detachSecret**
```swift
    open class func detachSecret(id: String, secretId: String, body: JSONValue? = nil, completion: @escaping (_ data: CreateFile400Response?, _ error: Error?) -> Void)
```

Remove a secret from a trigger

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let secretId = "secretId_example" // String | 
let body = "TODO" // JSONValue | Body (optional)

// Remove a secret from a trigger
TriggerAPI.detachSecret(id: id, secretId: secretId, body: body) { (response, error) in
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
 **secretId** | **String** |  | 
 **body** | **JSONValue** | Body | [optional] 

### Return type

[**CreateFile400Response**](CreateFile400Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllExecutions**
```swift
    open class func getAllExecutions(limit: Double? = nil, offset: Double? = nil, timeframe: String? = nil, status: String? = nil, completion: @escaping (_ data: [TriggerExecutionSchema]?, _ error: Error?) -> Void)
```

Get recent executions across all triggers

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let limit = 987 // Double |  (optional)
let offset = 987 // Double |  (optional)
let timeframe = "timeframe_example" // String |  (optional)
let status = "status_example" // String |  (optional)

// Get recent executions across all triggers
TriggerAPI.getAllExecutions(limit: limit, offset: offset, timeframe: timeframe, status: status) { (response, error) in
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
 **limit** | **Double** |  | [optional] 
 **offset** | **Double** |  | [optional] 
 **timeframe** | **String** |  | [optional] 
 **status** | **String** |  | [optional] 

### Return type

[**[TriggerExecutionSchema]**](TriggerExecutionSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExecutionLogs**
```swift
    open class func getExecutionLogs(executionId: String, completion: @escaping (_ data: [TriggerLogSchema]?, _ error: Error?) -> Void)
```

Get logs for a specific execution

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let executionId = "executionId_example" // String | 

// Get logs for a specific execution
TriggerAPI.getExecutionLogs(executionId: executionId) { (response, error) in
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
 **executionId** | **String** |  | 

### Return type

[**[TriggerLogSchema]**](TriggerLogSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOneTrigger**
```swift
    open class func getOneTrigger(id: String, completion: @escaping (_ data: TriggerSchema?, _ error: Error?) -> Void)
```

Get a single trigger by ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 

// Get a single trigger by ID
TriggerAPI.getOneTrigger(id: id) { (response, error) in
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

[**TriggerSchema**](TriggerSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTriggerByNameId**
```swift
    open class func getTriggerByNameId(nameId: String, completion: @escaping (_ data: TriggerSchema?, _ error: Error?) -> Void)
```

Get a single trigger by name_id

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let nameId = "nameId_example" // String | 

// Get a single trigger by name_id
TriggerAPI.getTriggerByNameId(nameId: nameId) { (response, error) in
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
 **nameId** | **String** |  | 

### Return type

[**TriggerSchema**](TriggerSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTriggerExecutions**
```swift
    open class func getTriggerExecutions(id: String, limit: Double? = nil, offset: Double? = nil, completion: @escaping (_ data: [TriggerExecutionSchema]?, _ error: Error?) -> Void)
```

Get execution history for a trigger

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let limit = 987 // Double |  (optional)
let offset = 987 // Double |  (optional)

// Get execution history for a trigger
TriggerAPI.getTriggerExecutions(id: id, limit: limit, offset: offset) { (response, error) in
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
 **limit** | **Double** |  | [optional] 
 **offset** | **Double** |  | [optional] 

### Return type

[**[TriggerExecutionSchema]**](TriggerExecutionSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTriggerSecrets**
```swift
    open class func getTriggerSecrets(id: String, completion: @escaping (_ data: [GetTriggerSecrets200ResponseInner]?, _ error: Error?) -> Void)
```

Get all secrets attached to a trigger

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 

// Get all secrets attached to a trigger
TriggerAPI.getTriggerSecrets(id: id) { (response, error) in
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

[**[GetTriggerSecrets200ResponseInner]**](GetTriggerSecrets200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTriggerTemplate**
```swift
    open class func getTriggerTemplate(templateId: String, completion: @escaping (_ data: GetTriggerTemplates200ResponseInner?, _ error: Error?) -> Void)
```

Get a specific trigger template

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let templateId = "templateId_example" // String | 

// Get a specific trigger template
TriggerAPI.getTriggerTemplate(templateId: templateId) { (response, error) in
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
 **templateId** | **String** |  | 

### Return type

[**GetTriggerTemplates200ResponseInner**](GetTriggerTemplates200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTriggerTemplateCode**
```swift
    open class func getTriggerTemplateCode(templateId: String, completion: @escaping (_ data: GetTriggerTemplateCode200Response?, _ error: Error?) -> Void)
```

Get the code for a specific trigger template

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let templateId = "templateId_example" // String | 

// Get the code for a specific trigger template
TriggerAPI.getTriggerTemplateCode(templateId: templateId) { (response, error) in
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
 **templateId** | **String** |  | 

### Return type

[**GetTriggerTemplateCode200Response**](GetTriggerTemplateCode200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTriggerTemplates**
```swift
    open class func getTriggerTemplates(completion: @escaping (_ data: [GetTriggerTemplates200ResponseInner]?, _ error: Error?) -> Void)
```

Get all available trigger templates

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client


// Get all available trigger templates
TriggerAPI.getTriggerTemplates() { (response, error) in
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

[**[GetTriggerTemplates200ResponseInner]**](GetTriggerTemplates200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTriggers**
```swift
    open class func getTriggers(minimal: Bool? = nil, includeArchived: Bool? = nil, completion: @escaping (_ data: [TriggerSchema]?, _ error: Error?) -> Void)
```

Get all triggers for organization

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let minimal = true // Bool |  (optional)
let includeArchived = true // Bool |  (optional)

// Get all triggers for organization
TriggerAPI.getTriggers(minimal: minimal, includeArchived: includeArchived) { (response, error) in
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
 **minimal** | **Bool** |  | [optional] 
 **includeArchived** | **Bool** |  | [optional] 

### Return type

[**[TriggerSchema]**](TriggerSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **runTrigger**
```swift
    open class func runTrigger(id: String, runTriggerRequest: RunTriggerRequest? = nil, completion: @escaping (_ data: TriggerExecutionSchema?, _ error: Error?) -> Void)
```

Manually execute a trigger (id can be UUID or name_id)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let runTriggerRequest = runTrigger_request(inputParameters: "TODO") // RunTriggerRequest | Body (optional)

// Manually execute a trigger (id can be UUID or name_id)
TriggerAPI.runTrigger(id: id, runTriggerRequest: runTriggerRequest) { (response, error) in
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
 **runTriggerRequest** | [**RunTriggerRequest**](RunTriggerRequest.md) | Body | [optional] 

### Return type

[**TriggerExecutionSchema**](TriggerExecutionSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **triggerExecutionStart**
```swift
    open class func triggerExecutionStart(id: String, body: JSONValue? = nil, completion: @escaping (_ data: TriggerExecutionStart200Response?, _ error: Error?) -> Void)
```

Start a trigger container

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let body = "TODO" // JSONValue | Body (optional)

// Start a trigger container
TriggerAPI.triggerExecutionStart(id: id, body: body) { (response, error) in
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

[**TriggerExecutionStart200Response**](TriggerExecutionStart200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **triggerExecutionStop**
```swift
    open class func triggerExecutionStop(id: String, triggerExecutionStopRequest: TriggerExecutionStopRequest? = nil, completion: @escaping (_ data: CreateFile400Response?, _ error: Error?) -> Void)
```

Stop a trigger container

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let triggerExecutionStopRequest = triggerExecutionStop_request(logs: [triggerExecutionStop_request_logs_inner(id: 123, author: "author_example", level: "level_example", message: "message_example", timestamp: Date(), metadata: triggerExecutionStop_request_logs_inner_metadata(source: "source_example", correlationId: "correlationId_example", additionalContext: "TODO"))], outputs: "TODO", error: 123, status: "status_example") // TriggerExecutionStopRequest | Body (optional)

// Stop a trigger container
TriggerAPI.triggerExecutionStop(id: id, triggerExecutionStopRequest: triggerExecutionStopRequest) { (response, error) in
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
 **triggerExecutionStopRequest** | [**TriggerExecutionStopRequest**](TriggerExecutionStopRequest.md) | Body | [optional] 

### Return type

[**CreateFile400Response**](CreateFile400Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unarchiveTrigger**
```swift
    open class func unarchiveTrigger(id: String, body: JSONValue? = nil, completion: @escaping (_ data: TriggerSchema?, _ error: Error?) -> Void)
```

Unarchive a trigger

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let body = "TODO" // JSONValue | Body (optional)

// Unarchive a trigger
TriggerAPI.unarchiveTrigger(id: id, body: body) { (response, error) in
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

[**TriggerSchema**](TriggerSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTrigger**
```swift
    open class func updateTrigger(id: String, updateTriggerRequest: UpdateTriggerRequest? = nil, completion: @escaping (_ data: TriggerSchema?, _ error: Error?) -> Void)
```

Update an existing trigger

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let updateTriggerRequest = updateTrigger_request(name: "name_example", nameId: "nameId_example", description: "description_example", code: "code_example", runtime: "runtime_example", schedule: "schedule_example", type: "type_example", executionType: "executionType_example", executionWaitTime: 123, resourcePreset: "resourcePreset_example", environmentVariables: "TODO", enabled: false, inputSchema: updateTrigger_request_input_schema(parameters: [updateTrigger_request_input_schema_parameters_inner(name: "name_example", type: "type_example", _required: false)]), templateId: "templateId_example", configParams: "TODO") // UpdateTriggerRequest | Body (optional)

// Update an existing trigger
TriggerAPI.updateTrigger(id: id, updateTriggerRequest: updateTriggerRequest) { (response, error) in
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
 **updateTriggerRequest** | [**UpdateTriggerRequest**](UpdateTriggerRequest.md) | Body | [optional] 

### Return type

[**TriggerSchema**](TriggerSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTriggerSecrets**
```swift
    open class func updateTriggerSecrets(id: String, updateTriggerSecretsRequest: UpdateTriggerSecretsRequest? = nil, completion: @escaping (_ data: [GetTriggerSecrets200ResponseInner]?, _ error: Error?) -> Void)
```

Update all secrets for a trigger

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let updateTriggerSecretsRequest = updateTriggerSecrets_request(secretIds: [123]) // UpdateTriggerSecretsRequest | Body (optional)

// Update all secrets for a trigger
TriggerAPI.updateTriggerSecrets(id: id, updateTriggerSecretsRequest: updateTriggerSecretsRequest) { (response, error) in
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
 **updateTriggerSecretsRequest** | [**UpdateTriggerSecretsRequest**](UpdateTriggerSecretsRequest.md) | Body | [optional] 

### Return type

[**[GetTriggerSecrets200ResponseInner]**](GetTriggerSecrets200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

