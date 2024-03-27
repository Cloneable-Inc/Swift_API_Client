# AuthAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**signupCreateUser**](AuthAPI.md#signupcreateuser) | **POST** /auth/signup/create-user | Create and sync users to auth platform for new accounts
[**signupNeeded**](AuthAPI.md#signupneeded) | **GET** /auth/signup-needed | Check if signup is needed
[**verifyOrg**](AuthAPI.md#verifyorg) | **POST** /auth/verify-org | Verify organization


# **signupCreateUser**
```swift
    open class func signupCreateUser(signupCreateUserRequest: SignupCreateUserRequest? = nil, completion: @escaping (_ data: SignupCreateUser200Response?, _ error: Error?) -> Void)
```

Create and sync users to auth platform for new accounts

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let signupCreateUserRequest = signupCreateUser_request(orgName: signupCreateUser_request_org_name(), orgId: "orgId_example", firstName: "firstName_example", lastName: "lastName_example", password: signupCreateUser_request_password(), phone: signupCreateUser_request_phone()) // SignupCreateUserRequest | Body (optional)

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

