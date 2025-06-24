# NotificationAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createNotification**](NotificationAPI.md#createnotification) | **PUT** /notification | Create a new notification request
[**getNotifications**](NotificationAPI.md#getnotifications) | **POST** /notifications | Get all notifications


# **createNotification**
```swift
    open class func createNotification(notificationRequestSchema: NotificationRequestSchema? = nil, completion: @escaping (_ data: UpdateFile200Response?, _ error: Error?) -> Void)
```

Create a new notification request

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let notificationRequestSchema = NotificationRequestSchema(id: "id_example", createdBy: "createdBy_example", companyId: "companyId_example", workflowId: "workflowId_example", workflowName: "workflowName_example", deployedWorkflowId: "deployedWorkflowId_example", notificationContent: "notificationContent_example", targetCompanyRoles: ["targetCompanyRoles_example"], targetCompanyRolesChannels: ["targetCompanyRolesChannels_example"], linkToWorkflow: false, targetEmails: ["targetEmails_example"], targetSmsNumbers: [NotificationRequestSchema_target_sms_numbers_inner(countryCode: 123, number: 123)], classification: "classification_example") // NotificationRequestSchema | Body (optional)

// Create a new notification request
NotificationAPI.createNotification(notificationRequestSchema: notificationRequestSchema) { (response, error) in
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
 **notificationRequestSchema** | [**NotificationRequestSchema**](NotificationRequestSchema.md) | Body | [optional] 

### Return type

[**UpdateFile200Response**](UpdateFile200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotifications**
```swift
    open class func getNotifications(getNotificationsRequest: GetNotificationsRequest? = nil, completion: @escaping (_ data: [NotificationSchema]?, _ error: Error?) -> Void)
```

Get all notifications

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let getNotificationsRequest = getNotifications_request(id: ["id_example"], filters: getNotifications_request_filters(workflowId: "workflowId_example"), latest: "latest_example") // GetNotificationsRequest | Body (optional)

// Get all notifications
NotificationAPI.getNotifications(getNotificationsRequest: getNotificationsRequest) { (response, error) in
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
 **getNotificationsRequest** | [**GetNotificationsRequest**](GetNotificationsRequest.md) | Body | [optional] 

### Return type

[**[NotificationSchema]**](NotificationSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

