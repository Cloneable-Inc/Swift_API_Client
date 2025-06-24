# TeamAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addMember**](TeamAPI.md#addmember) | **POST** /teams/{teamId}/members | Add a member to a team
[**changeTeam**](TeamAPI.md#changeteam) | **POST** /teams/change | Change the current team
[**createTeam**](TeamAPI.md#createteam) | **POST** /teams | Create a new team
[**getTeam**](TeamAPI.md#getteam) | **GET** /teams/{teamId} | Get a single team
[**getTeamMembers**](TeamAPI.md#getteammembers) | **GET** /teams/{teamId}/members | Get all members of a team
[**getUserTeams**](TeamAPI.md#getuserteams) | **GET** /teams/user/{userId} | Get teams for a user
[**listTeams**](TeamAPI.md#listteams) | **GET** /teams | List all teams in an organization
[**removeMember**](TeamAPI.md#removemember) | **DELETE** /teams/{teamId}/members/{userId} | Remove a member from a team
[**updateMemberRole**](TeamAPI.md#updatememberrole) | **PATCH** /teams/{teamId}/members/{userId}/role | Update a team member&#39;s role


# **addMember**
```swift
    open class func addMember(teamId: String, addMemberRequest: AddMemberRequest? = nil, completion: @escaping (_ data: AddMember201Response?, _ error: Error?) -> Void)
```

Add a member to a team

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let teamId = "teamId_example" // String | 
let addMemberRequest = addMember_request(userId: "userId_example", role: "role_example", orgName: "orgName_example", teamName: "teamName_example") // AddMemberRequest | Body (optional)

// Add a member to a team
TeamAPI.addMember(teamId: teamId, addMemberRequest: addMemberRequest) { (response, error) in
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
 **teamId** | **String** |  | 
 **addMemberRequest** | [**AddMemberRequest**](AddMemberRequest.md) | Body | [optional] 

### Return type

[**AddMember201Response**](AddMember201Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **changeTeam**
```swift
    open class func changeTeam(changeTeamRequest: ChangeTeamRequest? = nil, completion: @escaping (_ data: CreateFile400Response?, _ error: Error?) -> Void)
```

Change the current team

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let changeTeamRequest = changeTeam_request(teamId: "teamId_example") // ChangeTeamRequest | Body (optional)

// Change the current team
TeamAPI.changeTeam(changeTeamRequest: changeTeamRequest) { (response, error) in
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
 **changeTeamRequest** | [**ChangeTeamRequest**](ChangeTeamRequest.md) | Body | [optional] 

### Return type

[**CreateFile400Response**](CreateFile400Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTeam**
```swift
    open class func createTeam(createTeamRequest: CreateTeamRequest? = nil, completion: @escaping (_ data: CreateTeam201Response?, _ error: Error?) -> Void)
```

Create a new team

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let createTeamRequest = createTeam_request(name: "name_example", description: "description_example") // CreateTeamRequest | Body (optional)

// Create a new team
TeamAPI.createTeam(createTeamRequest: createTeamRequest) { (response, error) in
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
 **createTeamRequest** | [**CreateTeamRequest**](CreateTeamRequest.md) | Body | [optional] 

### Return type

[**CreateTeam201Response**](CreateTeam201Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTeam**
```swift
    open class func getTeam(teamId: String, completion: @escaping (_ data: CreateTeam201Response?, _ error: Error?) -> Void)
```

Get a single team

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let teamId = "teamId_example" // String | 

// Get a single team
TeamAPI.getTeam(teamId: teamId) { (response, error) in
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
 **teamId** | **String** |  | 

### Return type

[**CreateTeam201Response**](CreateTeam201Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTeamMembers**
```swift
    open class func getTeamMembers(teamId: String, completion: @escaping (_ data: [GetTeamMembers200ResponseInner]?, _ error: Error?) -> Void)
```

Get all members of a team

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let teamId = "teamId_example" // String | 

// Get all members of a team
TeamAPI.getTeamMembers(teamId: teamId) { (response, error) in
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
 **teamId** | **String** |  | 

### Return type

[**[GetTeamMembers200ResponseInner]**](GetTeamMembers200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserTeams**
```swift
    open class func getUserTeams(userId: String, completion: @escaping (_ data: [CreateTeam201Response]?, _ error: Error?) -> Void)
```

Get teams for a user

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let userId = "userId_example" // String | 

// Get teams for a user
TeamAPI.getUserTeams(userId: userId) { (response, error) in
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

### Return type

[**[CreateTeam201Response]**](CreateTeam201Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTeams**
```swift
    open class func listTeams(completion: @escaping (_ data: [ListTeams200ResponseInner]?, _ error: Error?) -> Void)
```

List all teams in an organization

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client


// List all teams in an organization
TeamAPI.listTeams() { (response, error) in
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

[**[ListTeams200ResponseInner]**](ListTeams200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeMember**
```swift
    open class func removeMember(teamId: String, userId: String, body: AnyCodable? = nil, completion: @escaping (_ data: CreateFile400Response?, _ error: Error?) -> Void)
```

Remove a member from a team

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let teamId = "teamId_example" // String | 
let userId = "userId_example" // String | 
let body = "TODO" // AnyCodable | Body (optional)

// Remove a member from a team
TeamAPI.removeMember(teamId: teamId, userId: userId, body: body) { (response, error) in
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
 **teamId** | **String** |  | 
 **userId** | **String** |  | 
 **body** | **AnyCodable** | Body | [optional] 

### Return type

[**CreateFile400Response**](CreateFile400Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMemberRole**
```swift
    open class func updateMemberRole(teamId: String, userId: String, updateMemberRoleRequest: UpdateMemberRoleRequest? = nil, completion: @escaping (_ data: AddMember201Response?, _ error: Error?) -> Void)
```

Update a team member's role

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let teamId = "teamId_example" // String | 
let userId = "userId_example" // String | 
let updateMemberRoleRequest = updateMemberRole_request(role: "role_example") // UpdateMemberRoleRequest | Body (optional)

// Update a team member's role
TeamAPI.updateMemberRole(teamId: teamId, userId: userId, updateMemberRoleRequest: updateMemberRoleRequest) { (response, error) in
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
 **teamId** | **String** |  | 
 **userId** | **String** |  | 
 **updateMemberRoleRequest** | [**UpdateMemberRoleRequest**](UpdateMemberRoleRequest.md) | Body | [optional] 

### Return type

[**AddMember201Response**](AddMember201Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

