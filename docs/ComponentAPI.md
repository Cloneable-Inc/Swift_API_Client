# ComponentAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createComponent**](ComponentAPI.md#createcomponent) | **POST** /component | Creates a new component
[**getComponents**](ComponentAPI.md#getcomponents) | **GET** /components | Get components for company
[**getOneComponent**](ComponentAPI.md#getonecomponent) | **GET** /component/{id} | Returns a component by id
[**updateComponent**](ComponentAPI.md#updatecomponent) | **POST** /component/{id} | Returns a component by id


# **createComponent**
```swift
    open class func createComponent(createComponentRequest: CreateComponentRequest? = nil, completion: @escaping (_ data: ComponentSchema?, _ error: Error?) -> Void)
```

Creates a new component

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let createComponentRequest = createComponent_request(name: "name_example", description: "description_example", type: "type_example") // CreateComponentRequest | Body (optional)

// Creates a new component
ComponentAPI.createComponent(createComponentRequest: createComponentRequest) { (response, error) in
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
 **createComponentRequest** | [**CreateComponentRequest**](CreateComponentRequest.md) | Body | [optional] 

### Return type

[**ComponentSchema**](ComponentSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getComponents**
```swift
    open class func getComponents(allForUse: Bool? = nil, completion: @escaping (_ data: [ComponentSchema]?, _ error: Error?) -> Void)
```

Get components for company

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let allForUse = true // Bool |  (optional)

// Get components for company
ComponentAPI.getComponents(allForUse: allForUse) { (response, error) in
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
 **allForUse** | **Bool** |  | [optional] 

### Return type

[**[ComponentSchema]**](ComponentSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOneComponent**
```swift
    open class func getOneComponent(id: String, completion: @escaping (_ data: ComponentSchema?, _ error: Error?) -> Void)
```

Returns a component by id

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 

// Returns a component by id
ComponentAPI.getOneComponent(id: id) { (response, error) in
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

[**ComponentSchema**](ComponentSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateComponent**
```swift
    open class func updateComponent(id: String, componentJSONSchema: ComponentJSONSchema? = nil, completion: @escaping (_ data: ComponentSchema?, _ error: Error?) -> Void)
```

Returns a component by id

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let componentJSONSchema = ComponentJSONSchema(title: "title_example", componentID: "componentID_example", dynamicComponentID: "dynamicComponentID_example", componentType: "componentType_example", revision: 123, availableDevices: ["availableDevices_example"], implementationURL: "implementationURL_example", builderCompatibility: "builderCompatibility_example", availableToAllCompanies: false, useCustomViewForParams: false, componentDescription: "componentDescription_example", defaultDrawerSize: "defaultDrawerSize_example", nextButtonInBar: false, nextButtonInBarText: "nextButtonInBarText_example", docsUrl: "docsUrl_example", iosHWRequirements: ["iosHWRequirements_example"], outputs: [ComponentJSONSchema_outputs_inner(outputID: "outputID_example", outputName: "outputName_example", outputDescription: "outputDescription_example", outputDataType: "outputDataType_example", outputsArray: false, outputClassification: "outputClassification_example", outputImmediately: false, _required: false, group: "group_example", outputImmediatelyUserDefinable: false, instantTrigger: false, userCanChooseIfInstant: false, dynamicOutputID: "dynamicOutputID_example")], inputs: [ComponentJSONSchema_inputs_inner(inputID: "inputID_example", inputName: "inputName_example", inputDataType: "inputDataType_example", acceptsArray: false, _required: false, inputDescription: "inputDescription_example", trigger: false, triggerNav: false, group: "group_example", dynamicInputID: "dynamicInputID_example")], dynamicComponentRenderer: false, customizableParameters: [ComponentJSONSchema_customizableParameters_inner(paramName: "paramName_example", paramDescription: "paramDescription_example", paramDataType: "paramDataType_example", paramInputType: "paramInputType_example", paramID: "paramID_example", selectedValue: 123, userCustomizable: false)], additionalProperties: 123, resources: ComponentJSONSchema_resources(files: ["files_example"])) // ComponentJSONSchema | Body (optional)

// Returns a component by id
ComponentAPI.updateComponent(id: id, componentJSONSchema: componentJSONSchema) { (response, error) in
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
 **componentJSONSchema** | [**ComponentJSONSchema**](ComponentJSONSchema.md) | Body | [optional] 

### Return type

[**ComponentSchema**](ComponentSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

