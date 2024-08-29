# AuthAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createApiKey**](AuthAPI.md#createapikey) | **POST** /auth/api-key | 
[**deactivateApiKey**](AuthAPI.md#deactivateapikey) | **POST** /auth/api-key/deactivate | 
[**getApiKeys**](AuthAPI.md#getapikeys) | **GET** /auth/api-key | 
[**issueKeyForCustomAuth**](AuthAPI.md#issuekeyforcustomauth) | **POST** /auth/issue-key | 
[**signupCreateUser**](AuthAPI.md#signupcreateuser) | **POST** /auth/signup/create-user | Create and sync users to auth platform for new accounts
[**signupNeeded**](AuthAPI.md#signupneeded) | **GET** /auth/signup-needed | Check if signup is needed
[**verifyOrg**](AuthAPI.md#verifyorg) | **POST** /auth/verify-org | Verify organization


# **createApiKey**
```swift
    open class func createApiKey(createApiKeyRequest: CreateApiKeyRequest? = nil, completion: @escaping (_ data: CreateApiKey200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let createApiKeyRequest = createApiKey_request(role: "role_example", expiration: 123) // CreateApiKeyRequest | Body (optional)

AuthAPI.createApiKey(createApiKeyRequest: createApiKeyRequest) { (response, error) in
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
 **createApiKeyRequest** | [**CreateApiKeyRequest**](CreateApiKeyRequest.md) | Body | [optional] 

### Return type

[**CreateApiKey200Response**](CreateApiKey200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deactivateApiKey**
```swift
    open class func deactivateApiKey(updateFile200Response: UpdateFile200Response? = nil, completion: @escaping (_ data: CreateFile400Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let updateFile200Response = updateFile_200_response(id: "id_example") // UpdateFile200Response | Body (optional)

AuthAPI.deactivateApiKey(updateFile200Response: updateFile200Response) { (response, error) in
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
 **updateFile200Response** | [**UpdateFile200Response**](UpdateFile200Response.md) | Body | [optional] 

### Return type

[**CreateFile400Response**](CreateFile400Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getApiKeys**
```swift
    open class func getApiKeys(completion: @escaping (_ data: [GetApiKeys200ResponseInner]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client


AuthAPI.getApiKeys() { (response, error) in
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

[**[GetApiKeys200ResponseInner]**](GetApiKeys200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueKeyForCustomAuth**
```swift
    open class func issueKeyForCustomAuth(issueKeyForCustomAuthRequest: IssueKeyForCustomAuthRequest? = nil, completion: @escaping (_ data: CreateApiKey200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let issueKeyForCustomAuthRequest = issueKeyForCustomAuth_request(jwt: "jwt_example", firstName: "firstName_example", lastName: "lastName_example", orgId: "orgId_example", orgSlug: "orgSlug_example") // IssueKeyForCustomAuthRequest | Body (optional)

AuthAPI.issueKeyForCustomAuth(issueKeyForCustomAuthRequest: issueKeyForCustomAuthRequest) { (response, error) in
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
 **issueKeyForCustomAuthRequest** | [**IssueKeyForCustomAuthRequest**](IssueKeyForCustomAuthRequest.md) | Body | [optional] 

### Return type

[**CreateApiKey200Response**](CreateApiKey200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signupCreateUser**
```swift
    open class func signupCreateUser(signupCreateUserRequest: SignupCreateUserRequest? = nil, completion: @escaping (_ data: SignupCreateUser200Response?, _ error: Error?) -> Void)
```

Create and sync users to auth platform for new accounts

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let signupCreateUserRequest = signupCreateUser_request(orgName: signupCreateUser_request_org_name(), orgId: "orgId_example", firstName: "firstName_example", lastName: "lastName_example", phone: signupCreateUser_request_phone()) // SignupCreateUserRequest | Body (optional)

// Create and sync users to auth platform for new accounts
AuthAPI.signupCreateUser(signupCreateUserRequest: signupCreateUserRequest) { (response, error) in
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
 **signupCreateUserRequest** | [**SignupCreateUserRequest**](SignupCreateUserRequest.md) | Body | [optional] 

### Return type

[**SignupCreateUser200Response**](SignupCreateUser200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signupNeeded**
```swift
    open class func signupNeeded(completion: @escaping (_ data: SignupNeeded200Response?, _ error: Error?) -> Void)
```

Check if signup is needed

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client


// Check if signup is needed
AuthAPI.signupNeeded() { (response, error) in
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

[**SignupNeeded200Response**](SignupNeeded200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyOrg**
```swift
    open class func verifyOrg(verifyOrgRequest: VerifyOrgRequest? = nil, completion: @escaping (_ data: VerifyOrg200Response?, _ error: Error?) -> Void)
```

Verify organization

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let verifyOrgRequest = verifyOrg_request(orgSlug: "orgSlug_example") // VerifyOrgRequest | Body (optional)

// Verify organization
AuthAPI.verifyOrg(verifyOrgRequest: verifyOrgRequest) { (response, error) in
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
 **verifyOrgRequest** | [**VerifyOrgRequest**](VerifyOrgRequest.md) | Body | [optional] 

### Return type

[**VerifyOrg200Response**](VerifyOrg200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

