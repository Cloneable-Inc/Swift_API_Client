# AuthAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**signupCreateOrg**](AuthAPI.md#signupcreateorg) | **POST** /auth/signup/create-org | Create and sync orgs to auth platform for new accounts
[**signupCreateUser**](AuthAPI.md#signupcreateuser) | **POST** /auth/signup/create-user | Create and sync users to auth platform for new accounts
[**signupNeeded**](AuthAPI.md#signupneeded) | **GET** /auth/signup-needed | Check if signup is needed


# **signupCreateOrg**
```swift
    open class func signupCreateOrg(signupCreateOrgRequest: SignupCreateOrgRequest? = nil, completion: @escaping (_ data: SignupCreateOrg200Response?, _ error: Error?) -> Void)
```

Create and sync orgs to auth platform for new accounts

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let signupCreateOrgRequest = signupCreateOrg_request(orgId: "orgId_example", orgName: "orgName_example", userFirstName: "userFirstName_example", userLastName: "userLastName_example") // SignupCreateOrgRequest | Body (optional)

// Create and sync orgs to auth platform for new accounts
AuthAPI.signupCreateOrg(signupCreateOrgRequest: signupCreateOrgRequest) { (response, error) in
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
 **signupCreateOrgRequest** | [**SignupCreateOrgRequest**](SignupCreateOrgRequest.md) | Body | [optional] 

### Return type

[**SignupCreateOrg200Response**](SignupCreateOrg200Response.md)

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

let signupCreateUserRequest = signupCreateUser_request(orgId: "orgId_example", userFirstName: "userFirstName_example", userLastName: "userLastName_example") // SignupCreateUserRequest | Body (optional)

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

