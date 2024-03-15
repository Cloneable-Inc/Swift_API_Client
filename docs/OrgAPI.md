# OrgAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createOrg**](OrgAPI.md#createorg) | **PUT** /org | 
[**currentOrg**](OrgAPI.md#currentorg) | **GET** /org/current | 
[**getAllOrgs**](OrgAPI.md#getallorgs) | **GET** /org | 
[**getOrgWithUsers**](OrgAPI.md#getorgwithusers) | **GET** /org/{id}/users | 
[**inviteUser**](OrgAPI.md#inviteuser) | **POST** /org/{id}/invite-user | Invite a user to the org
[**updateOrgSettings**](OrgAPI.md#updateorgsettings) | **POST** /org/{id}/settings | 


# **createOrg**
```swift
    open class func createOrg(orgSchema: OrgSchema? = nil, completion: @escaping (_ data: UpdateFile200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let orgSchema = OrgSchema(id: "id_example", name: "name_example", createdAt: "createdAt_example", updatedAt: "updatedAt_example", roles: ["roles_example"], roboflowApiKey: "roboflowApiKey_example", organizationId: "organizationId_example") // OrgSchema | Body (optional)

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

# **getOrgWithUsers**
```swift
    open class func getOrgWithUsers(id: String, completion: @escaping (_ data: GetOrgWithUsers200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 

OrgAPI.getOrgWithUsers(id: id) { (response, error) in
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

[**GetOrgWithUsers200Response**](GetOrgWithUsers200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inviteUser**
```swift
    open class func inviteUser(id: String, userSchema: UserSchema? = nil, completion: @escaping (_ data: UpdateFile200Response?, _ error: Error?) -> Void)
```

Invite a user to the org

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let userSchema = UserSchema(id: "id_example", email: "email_example", firstName: "firstName_example", lastName: "lastName_example", confirmed: false, active: false, auth0Id: "auth0Id_example", companyRoles: ["companyRoles_example"], roles: ["roles_example"], createdAt: Date(), updatedAt: Date(), companyId: "companyId_example", phoneNumber: 123, cloneableEmployeeRoles: ["cloneableEmployeeRoles_example"], organizationId: "organizationId_example", memberId: "memberId_example") // UserSchema | Body (optional)

// Invite a user to the org
OrgAPI.inviteUser(id: id, userSchema: userSchema) { (response, error) in
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
 **userSchema** | [**UserSchema**](UserSchema.md) | Body | [optional] 

### Return type

[**UpdateFile200Response**](UpdateFile200Response.md)

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
let orgSchema = OrgSchema(id: "id_example", name: "name_example", createdAt: "createdAt_example", updatedAt: "updatedAt_example", roles: ["roles_example"], roboflowApiKey: "roboflowApiKey_example", organizationId: "organizationId_example") // OrgSchema | Body (optional)

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

