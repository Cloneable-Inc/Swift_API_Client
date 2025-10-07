# WeatherAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getHistoricalWeather**](WeatherAPI.md#gethistoricalweather) | **POST** /weather/historical | Get historical weather data for a specific location and time


# **getHistoricalWeather**
```swift
    open class func getHistoricalWeather(getHistoricalWeatherRequest: GetHistoricalWeatherRequest? = nil, completion: @escaping (_ data: GetHistoricalWeather200Response?, _ error: Error?) -> Void)
```

Get historical weather data for a specific location and time

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let getHistoricalWeatherRequest = getHistoricalWeather_request(latitude: 123, longitude: 123, timestamp: "timestamp_example", units: "units_example") // GetHistoricalWeatherRequest | Body (optional)

// Get historical weather data for a specific location and time
WeatherAPI.getHistoricalWeather(getHistoricalWeatherRequest: getHistoricalWeatherRequest) { (response, error) in
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
 **getHistoricalWeatherRequest** | [**GetHistoricalWeatherRequest**](GetHistoricalWeatherRequest.md) | Body | [optional] 

### Return type

[**GetHistoricalWeather200Response**](GetHistoricalWeather200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

