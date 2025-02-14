# EsriAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getGeocodeResult**](EsriAPI.md#getgeocoderesult) | **GET** /esri/geocode | Get geocode result from ESRI
[**getSuggestions**](EsriAPI.md#getsuggestions) | **GET** /esri/suggestions | Get geocoding suggestions from ESRI


# **getGeocodeResult**
```swift
    open class func getGeocodeResult(magicKey: String, completion: @escaping (_ data: GetGeocodeResult200Response?, _ error: Error?) -> Void)
```

Get geocode result from ESRI

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let magicKey = "magicKey_example" // String | 

// Get geocode result from ESRI
EsriAPI.getGeocodeResult(magicKey: magicKey) { (response, error) in
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
 **magicKey** | **String** |  | 

### Return type

[**GetGeocodeResult200Response**](GetGeocodeResult200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSuggestions**
```swift
    open class func getSuggestions(text: String? = nil, maxSuggestions: Double? = nil, completion: @escaping (_ data: GetSuggestions200Response?, _ error: Error?) -> Void)
```

Get geocoding suggestions from ESRI

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let text = "text_example" // String |  (optional)
let maxSuggestions = 987 // Double |  (optional)

// Get geocoding suggestions from ESRI
EsriAPI.getSuggestions(text: text, maxSuggestions: maxSuggestions) { (response, error) in
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
 **text** | **String** |  | [optional] 
 **maxSuggestions** | **Double** |  | [optional] 

### Return type

[**GetSuggestions200Response**](GetSuggestions200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

