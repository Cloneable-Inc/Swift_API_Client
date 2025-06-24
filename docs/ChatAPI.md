# ChatAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chat**](ChatAPI.md#chat) | **POST** /llm/gpt-4o | 
[**componentAssitant**](ChatAPI.md#componentassitant) | **POST** /chat/components/{id} | Get chat components
[**getCodeGen**](ChatAPI.md#getcodegen) | **POST** /chat/code-gen | Get chat code gen stream


# **chat**
```swift
    open class func chat(chatRequest: ChatRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let chatRequest = chat_request(messages: [componentAssitant_request_inner(role: "role_example", content: "content_example", name: "name_example")], frequencyPenalty: 123, logitBias: "TODO", logprobs: false, topLogprobs: 123, maxTokens: 123, n: 123, presencePenalty: 123, responseFormat: chat_request_response_format(type: "type_example"), seed: 123, stop: chat_request_stop(), stream: false, temperature: 123, topP: 123, tools: [chat_request_tools_inner(type: "type_example", function: chat_request_tools_inner_function(name: "name_example", description: "description_example", parameters: "TODO"))], toolChoice: chat_request_tool_choice(type: "type_example", function: chat_request_tool_choice_oneOf_function(name: "name_example")), user: "user_example") // ChatRequest | Body (optional)

ChatAPI.chat(chatRequest: chatRequest) { (response, error) in
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
 **chatRequest** | [**ChatRequest**](ChatRequest.md) | Body | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **componentAssitant**
```swift
    open class func componentAssitant(id: String, componentAssitantRequestInner: [ComponentAssitantRequestInner]? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get chat components

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let componentAssitantRequestInner = [componentAssitant_request_inner(role: "role_example", content: "content_example", name: "name_example")] // [ComponentAssitantRequestInner] | Body (optional)

// Get chat components
ChatAPI.componentAssitant(id: id, componentAssitantRequestInner: componentAssitantRequestInner) { (response, error) in
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
 **componentAssitantRequestInner** | [**[ComponentAssitantRequestInner]**](ComponentAssitantRequestInner.md) | Body | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCodeGen**
```swift
    open class func getCodeGen(getCodeGenRequest: GetCodeGenRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get chat code gen stream

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let getCodeGenRequest = getCodeGen_request(inputs: [getCodeGen_request_inputs_inner(type: "type_example", name: "name_example", isArray: false)], outputs: [nil], prompt: "prompt_example") // GetCodeGenRequest | Body (optional)

// Get chat code gen stream
ChatAPI.getCodeGen(getCodeGenRequest: getCodeGenRequest) { (response, error) in
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
 **getCodeGenRequest** | [**GetCodeGenRequest**](GetCodeGenRequest.md) | Body | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

