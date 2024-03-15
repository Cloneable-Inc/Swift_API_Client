# UserAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**currentUser**](UserAPI.md#currentuser) | **GET** /user | Get current user
[**getAllUsers**](UserAPI.md#getallusers) | **GET** /users | Get all users in the org
[**getUser**](UserAPI.md#getuser) | **GET** /user/{id} | Get user by id
[**updateUser**](UserAPI.md#updateuser) | **POST** /user/{id} | Update a user


# **currentUser**
```swift
    open class func currentUser(completion: @escaping (_ data: UserSchema?, _ error: Error?) -> Void)
```

Get current user

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client


// Get current user
UserAPI.currentUser() { (response, error) in
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

[**UserSchema**](UserSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllUsers**
```swift
    open class func getAllUsers(completion: @escaping (_ data: [UserSchema]?, _ error: Error?) -> Void)
```

Get all users in the org

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client


// Get all users in the org
UserAPI.getAllUsers() { (response, error) in
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

[**[UserSchema]**](UserSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUser**
```swift
    open class func getUser(id: String, completion: @escaping (_ data: UserSchema?, _ error: Error?) -> Void)
```

Get user by id

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 

// Get user by id
UserAPI.getUser(id: id) { (response, error) in
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

[**UserSchema**](UserSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUser**
```swift
    open class func updateUser(id: String, updateUserRequest: UpdateUserRequest? = nil, completion: @escaping (_ data: UserSchema?, _ error: Error?) -> Void)
```

Update a user

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let updateUserRequest = updateUser_request(email: "email_example", firstName: "firstName_example", lastName: "lastName_example", confirmed: false, active: false, auth0Id: "auth0Id_example", companyRoles: ["companyRoles_example"], roles: ["roles_example"], phoneNumber: 123, cloneableEmployeeRoles: ["cloneableEmployeeRoles_example"], organizationId: "organizationId_example", memberId: "memberId_example") // UpdateUserRequest | Body (optional)

// Update a user
UserAPI.updateUser(id: id, updateUserRequest: updateUserRequest) { (response, error) in
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
 **updateUserRequest** | [**UpdateUserRequest**](UpdateUserRequest.md) | Body | [optional] 

### Return type

[**UserSchema**](UserSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

