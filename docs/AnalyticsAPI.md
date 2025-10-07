# AnalyticsAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAccountAnalytics**](AnalyticsAPI.md#getaccountanalytics) | **GET** /analytics/account/{org_id} | Get analytics data for an organization from Intercom
[**getDailyUsage**](AnalyticsAPI.md#getdailyusage) | **GET** /analytics/usage/{org_id} | Get daily pole measurement usage for an organization
[**getOrgEvents**](AnalyticsAPI.md#getorgevents) | **GET** /analytics/events/{org_id} | Get events for an entire organization
[**getSessionTrends**](AnalyticsAPI.md#getsessiontrends) | **GET** /analytics/sessions/{org_id} | Get session trends over time for an organization
[**getUserAnalytics**](AnalyticsAPI.md#getuseranalytics) | **GET** /analytics/users/{org_id} | Get detailed user analytics for an organization
[**getUserEvents**](AnalyticsAPI.md#getuserevents) | **GET** /analytics/events/user/{user_id} | Get recent events for a specific user
[**refreshAnalytics**](AnalyticsAPI.md#refreshanalytics) | **POST** /analytics/refresh/{org_id} | Refresh analytics cache for an organization


# **getAccountAnalytics**
```swift
    open class func getAccountAnalytics(orgId: String, completion: @escaping (_ data: GetAccountAnalytics200Response?, _ error: Error?) -> Void)
```

Get analytics data for an organization from Intercom

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let orgId = "orgId_example" // String | 

// Get analytics data for an organization from Intercom
AnalyticsAPI.getAccountAnalytics(orgId: orgId) { (response, error) in
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
 **orgId** | **String** |  | 

### Return type

[**GetAccountAnalytics200Response**](GetAccountAnalytics200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDailyUsage**
```swift
    open class func getDailyUsage(orgId: String, completion: @escaping (_ data: GetDailyUsage200Response?, _ error: Error?) -> Void)
```

Get daily pole measurement usage for an organization

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let orgId = "orgId_example" // String | 

// Get daily pole measurement usage for an organization
AnalyticsAPI.getDailyUsage(orgId: orgId) { (response, error) in
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
 **orgId** | **String** |  | 

### Return type

[**GetDailyUsage200Response**](GetDailyUsage200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrgEvents**
```swift
    open class func getOrgEvents(orgId: String, completion: @escaping (_ data: GetOrgEvents200Response?, _ error: Error?) -> Void)
```

Get events for an entire organization

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let orgId = "orgId_example" // String | 

// Get events for an entire organization
AnalyticsAPI.getOrgEvents(orgId: orgId) { (response, error) in
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
 **orgId** | **String** |  | 

### Return type

[**GetOrgEvents200Response**](GetOrgEvents200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSessionTrends**
```swift
    open class func getSessionTrends(orgId: String, completion: @escaping (_ data: GetSessionTrends200Response?, _ error: Error?) -> Void)
```

Get session trends over time for an organization

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let orgId = "orgId_example" // String | 

// Get session trends over time for an organization
AnalyticsAPI.getSessionTrends(orgId: orgId) { (response, error) in
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
 **orgId** | **String** |  | 

### Return type

[**GetSessionTrends200Response**](GetSessionTrends200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserAnalytics**
```swift
    open class func getUserAnalytics(orgId: String, completion: @escaping (_ data: GetUserAnalytics200Response?, _ error: Error?) -> Void)
```

Get detailed user analytics for an organization

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let orgId = "orgId_example" // String | 

// Get detailed user analytics for an organization
AnalyticsAPI.getUserAnalytics(orgId: orgId) { (response, error) in
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
 **orgId** | **String** |  | 

### Return type

[**GetUserAnalytics200Response**](GetUserAnalytics200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserEvents**
```swift
    open class func getUserEvents(userId: String, orgId: String, days: UpdateCustomTypeRequestPropertiesValueEnumInner? = nil, completion: @escaping (_ data: GetUserEvents200Response?, _ error: Error?) -> Void)
```

Get recent events for a specific user

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let userId = "userId_example" // String | 
let orgId = "orgId_example" // String | 
let days = updateCustomType_request_properties_value_enum_inner() // UpdateCustomTypeRequestPropertiesValueEnumInner |  (optional)

// Get recent events for a specific user
AnalyticsAPI.getUserEvents(userId: userId, orgId: orgId, days: days) { (response, error) in
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
 **userId** | **String** |  | 
 **orgId** | **String** |  | 
 **days** | [**UpdateCustomTypeRequestPropertiesValueEnumInner**](.md) |  | [optional] 

### Return type

[**GetUserEvents200Response**](GetUserEvents200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refreshAnalytics**
```swift
    open class func refreshAnalytics(orgId: String, refreshAnalyticsRequest: RefreshAnalyticsRequest? = nil, completion: @escaping (_ data: RefreshAnalytics200Response?, _ error: Error?) -> Void)
```

Refresh analytics cache for an organization

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let orgId = "orgId_example" // String | 
let refreshAnalyticsRequest = refreshAnalytics_request(force: false) // RefreshAnalyticsRequest | Body (optional)

// Refresh analytics cache for an organization
AnalyticsAPI.refreshAnalytics(orgId: orgId, refreshAnalyticsRequest: refreshAnalyticsRequest) { (response, error) in
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
 **orgId** | **String** |  | 
 **refreshAnalyticsRequest** | [**RefreshAnalyticsRequest**](RefreshAnalyticsRequest.md) | Body | [optional] 

### Return type

[**RefreshAnalytics200Response**](RefreshAnalytics200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

