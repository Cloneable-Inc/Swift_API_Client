# OrgAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelInvite**](OrgAPI.md#cancelinvite) | **DELETE** /org/cancel-inivte | 
[**createOrg**](OrgAPI.md#createorg) | **PUT** /org | 
[**currentOrg**](OrgAPI.md#currentorg) | **GET** /org/current | 
[**deactivateUser**](OrgAPI.md#deactivateuser) | **POST** /org/deactivate-user | 
[**getAllOrgs**](OrgAPI.md#getallorgs) | **GET** /org | 
[**getCacheItem**](OrgAPI.md#getcacheitem) | **GET** /org/cache/{key} | 
[**getMembers**](OrgAPI.md#getmembers) | **GET** /org/{id}/members | 
[**getOrg**](OrgAPI.md#getorg) | **GET** /org/{id} | 
[**putCacheItem**](OrgAPI.md#putcacheitem) | **POST** /org/cache/{key} | 
[**resendInvite**](OrgAPI.md#resendinvite) | **POST** /org/resend-invite | 
[**sendInvite**](OrgAPI.md#sendinvite) | **POST** /org/send-invite | Invite user to org
[**updateOrgSettings**](OrgAPI.md#updateorgsettings) | **POST** /org/{id}/settings | 


# **cancelInvite**
```swift
    open class func cancelInvite(resendInviteRequest: ResendInviteRequest? = nil, completion: @escaping (_ data: CreateFile400Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let resendInviteRequest = resendInvite_request(email: "email_example", orgId: "orgId_example") // ResendInviteRequest | Body (optional)

OrgAPI.cancelInvite(resendInviteRequest: resendInviteRequest) { (response, error) in
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
 **resendInviteRequest** | [**ResendInviteRequest**](ResendInviteRequest.md) | Body | [optional] 

### Return type

[**CreateFile400Response**](CreateFile400Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOrg**
```swift
    open class func createOrg(orgSchema: OrgSchema? = nil, completion: @escaping (_ data: UpdateFile200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let orgSchema = OrgSchema(key: 123, id: "id_example", name: "name_example", createdAt: Date(), updatedAt: Date(), organizationId: "organizationId_example", roboflowApiKey: "roboflowApiKey_example") // OrgSchema | Body (optional)

OrgAPI.createOrg(orgSchema: orgSchema) { (response, error) in
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
 **orgSchema** | [**OrgSchema**](OrgSchema.md) | Body | [optional] 

### Return type

[**UpdateFile200Response**](UpdateFile200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **currentOrg**
```swift
    open class func currentOrg(completion: @escaping (_ data: CurrentOrg200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client


OrgAPI.currentOrg() { (response, error) in
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

[**CurrentOrg200Response**](CurrentOrg200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deactivateUser**
```swift
    open class func deactivateUser(deactivateUserRequest: DeactivateUserRequest? = nil, completion: @escaping (_ data: CreateFile400Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let deactivateUserRequest = deactivateUser_request(userId: "userId_example", orgId: "orgId_example") // DeactivateUserRequest | Body (optional)

OrgAPI.deactivateUser(deactivateUserRequest: deactivateUserRequest) { (response, error) in
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
 **deactivateUserRequest** | [**DeactivateUserRequest**](DeactivateUserRequest.md) | Body | [optional] 

### Return type

[**CreateFile400Response**](CreateFile400Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllOrgs**
```swift
    open class func getAllOrgs(completion: @escaping (_ data: [CurrentOrg200Response]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client


OrgAPI.getAllOrgs() { (response, error) in
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

[**[CurrentOrg200Response]**](CurrentOrg200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCacheItem**
```swift
    open class func getCacheItem(key: String, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let key = "key_example" // String | 

OrgAPI.getCacheItem(key: key) { (response, error) in
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
 **key** | **String** |  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMembers**
```swift
    open class func getMembers(id: String, completion: @escaping (_ data: [GetMembers200ResponseInner]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 

OrgAPI.getMembers(id: id) { (response, error) in
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

[**[GetMembers200ResponseInner]**](GetMembers200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrg**
```swift
    open class func getOrg(id: String, completion: @escaping (_ data: CurrentOrg200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 

OrgAPI.getOrg(id: id) { (response, error) in
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

[**CurrentOrg200Response**](CurrentOrg200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putCacheItem**
```swift
    open class func putCacheItem(key: String, putCacheItemRequest: PutCacheItemRequest? = nil, completion: @escaping (_ data: CreateFile400Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let key = "key_example" // String | 
let putCacheItemRequest = putCacheItem_request(value: "value_example") // PutCacheItemRequest | Body (optional)

OrgAPI.putCacheItem(key: key, putCacheItemRequest: putCacheItemRequest) { (response, error) in
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
 **key** | **String** |  | 
 **putCacheItemRequest** | [**PutCacheItemRequest**](PutCacheItemRequest.md) | Body | [optional] 

### Return type

[**CreateFile400Response**](CreateFile400Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resendInvite**
```swift
    open class func resendInvite(resendInviteRequest: ResendInviteRequest? = nil, completion: @escaping (_ data: CreateFile400Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let resendInviteRequest = resendInvite_request(email: "email_example", orgId: "orgId_example") // ResendInviteRequest | Body (optional)

OrgAPI.resendInvite(resendInviteRequest: resendInviteRequest) { (response, error) in
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
 **resendInviteRequest** | [**ResendInviteRequest**](ResendInviteRequest.md) | Body | [optional] 

### Return type

[**CreateFile400Response**](CreateFile400Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendInvite**
```swift
    open class func sendInvite(sendInviteRequest: SendInviteRequest? = nil, completion: @escaping (_ data: CreateFile400Response?, _ error: Error?) -> Void)
```

Invite user to org

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let sendInviteRequest = sendInvite_request(invites: [sendInvite_request_invites_inner(email: "email_example", roles: ["roles_example"], team: sendInvite_request_invites_inner_team(id: "id_example", role: "role_example"))], orgId: "orgId_example") // SendInviteRequest | Body (optional)

// Invite user to org
OrgAPI.sendInvite(sendInviteRequest: sendInviteRequest) { (response, error) in
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
 **sendInviteRequest** | [**SendInviteRequest**](SendInviteRequest.md) | Body | [optional] 

### Return type

[**CreateFile400Response**](CreateFile400Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOrgSettings**
```swift
    open class func updateOrgSettings(id: String, orgSchema: OrgSchema? = nil, completion: @escaping (_ data: UpdateFile200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let orgSchema = OrgSchema(key: 123, id: "id_example", name: "name_example", createdAt: Date(), updatedAt: Date(), organizationId: "organizationId_example", roboflowApiKey: "roboflowApiKey_example") // OrgSchema | Body (optional)

OrgAPI.updateOrgSettings(id: id, orgSchema: orgSchema) { (response, error) in
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
 **orgSchema** | [**OrgSchema**](OrgSchema.md) | Body | [optional] 

### Return type

[**UpdateFile200Response**](UpdateFile200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

