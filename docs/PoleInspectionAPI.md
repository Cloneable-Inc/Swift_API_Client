# PoleInspectionAPI

All URIs are relative to *https://app.cloneable.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulkUpdateJobStatus**](PoleInspectionAPI.md#bulkupdatejobstatus) | **POST** /pole-inspection/jobs/bulk/status | Bulk update job statuses
[**createConfiguration**](PoleInspectionAPI.md#createconfiguration) | **POST** /pole-inspection/configurations | Create a new pole inspection configuration
[**createGroup**](PoleInspectionAPI.md#creategroup) | **POST** /pole-inspection/groups | Create a new pole inspection job group
[**createJob**](PoleInspectionAPI.md#createjob) | **POST** /pole-inspection/jobs | Create a new pole inspection job
[**deleteConfiguration**](PoleInspectionAPI.md#deleteconfiguration) | **DELETE** /pole-inspection/configurations/{id} | Delete a pole inspection configuration
[**deleteGroup**](PoleInspectionAPI.md#deletegroup) | **DELETE** /pole-inspection/groups/{id} | Delete a pole inspection job group
[**deleteJob**](PoleInspectionAPI.md#deletejob) | **DELETE** /pole-inspection/jobs/{id} | Delete a pole inspection job
[**getConfigurationById**](PoleInspectionAPI.md#getconfigurationbyid) | **GET** /pole-inspection/configurations/{id} | Get a single pole inspection configuration by ID
[**getConfigurations**](PoleInspectionAPI.md#getconfigurations) | **GET** /pole-inspection/configurations | Get all pole inspection configurations
[**getGroupById**](PoleInspectionAPI.md#getgroupbyid) | **GET** /pole-inspection/groups/{id} | Get a single pole inspection job group by ID
[**getGroups**](PoleInspectionAPI.md#getgroups) | **GET** /pole-inspection/groups | Get all pole inspection job groups
[**getJobById**](PoleInspectionAPI.md#getjobbyid) | **GET** /pole-inspection/jobs/{id} | Get a single pole inspection job by ID
[**getJobStatistics**](PoleInspectionAPI.md#getjobstatistics) | **GET** /pole-inspection/jobs/statistics | Get job statistics and analytics
[**getJobs**](PoleInspectionAPI.md#getjobs) | **GET** /pole-inspection/jobs | Get all pole inspection jobs with filtering and pagination
[**getMigrationStatus**](PoleInspectionAPI.md#getmigrationstatus) | **GET** /pole-inspection/migrate/status | Get the current migration status
[**migrateFromKV**](PoleInspectionAPI.md#migratefromkv) | **POST** /pole-inspection/migrate | Migrate pole inspection data from KV storage to database
[**updateConfiguration**](PoleInspectionAPI.md#updateconfiguration) | **PUT** /pole-inspection/configurations/{id} | Update an existing pole inspection configuration
[**updateGroup**](PoleInspectionAPI.md#updategroup) | **PUT** /pole-inspection/groups/{id} | Update an existing pole inspection job group
[**updateJob**](PoleInspectionAPI.md#updatejob) | **PUT** /pole-inspection/jobs/{id} | Update an existing pole inspection job


# **bulkUpdateJobStatus**
```swift
    open class func bulkUpdateJobStatus(bulkUpdateJobStatusRequest: BulkUpdateJobStatusRequest? = nil, completion: @escaping (_ data: BulkUpdateJobStatus200Response?, _ error: Error?) -> Void)
```

Bulk update job statuses

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let bulkUpdateJobStatusRequest = bulkUpdateJobStatus_request(jobIds: [123], status: "status_example") // BulkUpdateJobStatusRequest | Body (optional)

// Bulk update job statuses
PoleInspectionAPI.bulkUpdateJobStatus(bulkUpdateJobStatusRequest: bulkUpdateJobStatusRequest) { (response, error) in
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
 **bulkUpdateJobStatusRequest** | [**BulkUpdateJobStatusRequest**](BulkUpdateJobStatusRequest.md) | Body | [optional] 

### Return type

[**BulkUpdateJobStatus200Response**](BulkUpdateJobStatus200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createConfiguration**
```swift
    open class func createConfiguration(createConfigurationRequest: CreateConfigurationRequest? = nil, completion: @escaping (_ data: GetConfigurations200ResponseConfigurationsInner?, _ error: Error?) -> Void)
```

Create a new pole inspection configuration

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let createConfigurationRequest = createConfiguration_request(name: "name_example", configData: "TODO") // CreateConfigurationRequest | Body (optional)

// Create a new pole inspection configuration
PoleInspectionAPI.createConfiguration(createConfigurationRequest: createConfigurationRequest) { (response, error) in
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
 **createConfigurationRequest** | [**CreateConfigurationRequest**](CreateConfigurationRequest.md) | Body | [optional] 

### Return type

[**GetConfigurations200ResponseConfigurationsInner**](GetConfigurations200ResponseConfigurationsInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createGroup**
```swift
    open class func createGroup(createGroupRequest: CreateGroupRequest? = nil, completion: @escaping (_ data: GetGroups200ResponseGroupsInner?, _ error: Error?) -> Void)
```

Create a new pole inspection job group

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let createGroupRequest = createGroup_request(name: "name_example", description: "description_example") // CreateGroupRequest | Body (optional)

// Create a new pole inspection job group
PoleInspectionAPI.createGroup(createGroupRequest: createGroupRequest) { (response, error) in
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
 **createGroupRequest** | [**CreateGroupRequest**](CreateGroupRequest.md) | Body | [optional] 

### Return type

[**GetGroups200ResponseGroupsInner**](GetGroups200ResponseGroupsInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createJob**
```swift
    open class func createJob(createJobRequest: CreateJobRequest? = nil, completion: @escaping (_ data: GetJobs200ResponseJobsInner?, _ error: Error?) -> Void)
```

Create a new pole inspection job

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let createJobRequest = createJob_request(name: "name_example", description: "description_example", configurationId: 123, groupId: 123, status: "status_example", assignedTo: "assignedTo_example", location: "location_example", metadata: getJobs_200_response_jobs_inner_metadata(jobIdField: "jobIdField_example", createdBy: "createdBy_example", katapultJobId: "katapultJobId_example", exportBatches: [getJobs_200_response_jobs_inner_metadata_export_batches_inner(batchId: "batchId_example", startedAt: "startedAt_example", queuedCount: 123)], lastExportReferenceTime: "lastExportReferenceTime_example"), importExecutionId: 123, createdBy: "createdBy_example", archivedAt: Date()) // CreateJobRequest | Body (optional)

// Create a new pole inspection job
PoleInspectionAPI.createJob(createJobRequest: createJobRequest) { (response, error) in
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
 **createJobRequest** | [**CreateJobRequest**](CreateJobRequest.md) | Body | [optional] 

### Return type

[**GetJobs200ResponseJobsInner**](GetJobs200ResponseJobsInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteConfiguration**
```swift
    open class func deleteConfiguration(id: String, body: JSONValue? = nil, completion: @escaping (_ data: JSONValue?, _ error: Error?) -> Void)
```

Delete a pole inspection configuration

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let body = "TODO" // JSONValue | Body (optional)

// Delete a pole inspection configuration
PoleInspectionAPI.deleteConfiguration(id: id, body: body) { (response, error) in
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
 **body** | **JSONValue** | Body | [optional] 

### Return type

**JSONValue**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGroup**
```swift
    open class func deleteGroup(id: String, body: JSONValue? = nil, completion: @escaping (_ data: JSONValue?, _ error: Error?) -> Void)
```

Delete a pole inspection job group

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let body = "TODO" // JSONValue | Body (optional)

// Delete a pole inspection job group
PoleInspectionAPI.deleteGroup(id: id, body: body) { (response, error) in
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
 **body** | **JSONValue** | Body | [optional] 

### Return type

**JSONValue**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteJob**
```swift
    open class func deleteJob(id: String, body: JSONValue? = nil, completion: @escaping (_ data: JSONValue?, _ error: Error?) -> Void)
```

Delete a pole inspection job

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let body = "TODO" // JSONValue | Body (optional)

// Delete a pole inspection job
PoleInspectionAPI.deleteJob(id: id, body: body) { (response, error) in
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
 **body** | **JSONValue** | Body | [optional] 

### Return type

**JSONValue**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConfigurationById**
```swift
    open class func getConfigurationById(id: String, completion: @escaping (_ data: GetConfigurations200ResponseConfigurationsInner?, _ error: Error?) -> Void)
```

Get a single pole inspection configuration by ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 

// Get a single pole inspection configuration by ID
PoleInspectionAPI.getConfigurationById(id: id) { (response, error) in
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

[**GetConfigurations200ResponseConfigurationsInner**](GetConfigurations200ResponseConfigurationsInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConfigurations**
```swift
    open class func getConfigurations(search: String? = nil, limit: Double? = nil, offset: Double? = nil, completion: @escaping (_ data: GetConfigurations200Response?, _ error: Error?) -> Void)
```

Get all pole inspection configurations

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let search = "search_example" // String |  (optional)
let limit = 987 // Double |  (optional) (default to 50)
let offset = 987 // Double |  (optional) (default to 0)

// Get all pole inspection configurations
PoleInspectionAPI.getConfigurations(search: search, limit: limit, offset: offset) { (response, error) in
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
 **search** | **String** |  | [optional] 
 **limit** | **Double** |  | [optional] [default to 50]
 **offset** | **Double** |  | [optional] [default to 0]

### Return type

[**GetConfigurations200Response**](GetConfigurations200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupById**
```swift
    open class func getGroupById(id: String, completion: @escaping (_ data: GetGroups200ResponseGroupsInner?, _ error: Error?) -> Void)
```

Get a single pole inspection job group by ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 

// Get a single pole inspection job group by ID
PoleInspectionAPI.getGroupById(id: id) { (response, error) in
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

[**GetGroups200ResponseGroupsInner**](GetGroups200ResponseGroupsInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroups**
```swift
    open class func getGroups(search: String? = nil, limit: Double? = nil, offset: Double? = nil, completion: @escaping (_ data: GetGroups200Response?, _ error: Error?) -> Void)
```

Get all pole inspection job groups

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let search = "search_example" // String |  (optional)
let limit = 987 // Double |  (optional) (default to 50)
let offset = 987 // Double |  (optional) (default to 0)

// Get all pole inspection job groups
PoleInspectionAPI.getGroups(search: search, limit: limit, offset: offset) { (response, error) in
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
 **search** | **String** |  | [optional] 
 **limit** | **Double** |  | [optional] [default to 50]
 **offset** | **Double** |  | [optional] [default to 0]

### Return type

[**GetGroups200Response**](GetGroups200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobById**
```swift
    open class func getJobById(id: String, completion: @escaping (_ data: GetJobs200ResponseJobsInner?, _ error: Error?) -> Void)
```

Get a single pole inspection job by ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 

// Get a single pole inspection job by ID
PoleInspectionAPI.getJobById(id: id) { (response, error) in
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

[**GetJobs200ResponseJobsInner**](GetJobs200ResponseJobsInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobStatistics**
```swift
    open class func getJobStatistics(startDate: Date? = nil, endDate: Date? = nil, completion: @escaping (_ data: GetJobStatistics200Response?, _ error: Error?) -> Void)
```

Get job statistics and analytics

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let startDate = Date() // Date |  (optional)
let endDate = Date() // Date |  (optional)

// Get job statistics and analytics
PoleInspectionAPI.getJobStatistics(startDate: startDate, endDate: endDate) { (response, error) in
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
 **startDate** | **Date** |  | [optional] 
 **endDate** | **Date** |  | [optional] 

### Return type

[**GetJobStatistics200Response**](GetJobStatistics200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobs**
```swift
    open class func getJobs(status: Status_getJobs? = nil, configurationId: UUID? = nil, groupId: UUID? = nil, assignedTo: UUID? = nil, search: String? = nil, limit: Double? = nil, offset: Double? = nil, sortBy: SortBy_getJobs? = nil, sortOrder: SortOrder_getJobs? = nil, completion: @escaping (_ data: GetJobs200Response?, _ error: Error?) -> Void)
```

Get all pole inspection jobs with filtering and pagination

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let status = "status_example" // String |  (optional)
let configurationId = 987 // UUID |  (optional)
let groupId = 987 // UUID |  (optional)
let assignedTo = 987 // UUID |  (optional)
let search = "search_example" // String |  (optional)
let limit = 987 // Double |  (optional) (default to 50)
let offset = 987 // Double |  (optional) (default to 0)
let sortBy = "sortBy_example" // String |  (optional) (default to .createdAt)
let sortOrder = "sortOrder_example" // String |  (optional) (default to .desc)

// Get all pole inspection jobs with filtering and pagination
PoleInspectionAPI.getJobs(status: status, configurationId: configurationId, groupId: groupId, assignedTo: assignedTo, search: search, limit: limit, offset: offset, sortBy: sortBy, sortOrder: sortOrder) { (response, error) in
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
 **status** | **String** |  | [optional] 
 **configurationId** | **UUID** |  | [optional] 
 **groupId** | **UUID** |  | [optional] 
 **assignedTo** | **UUID** |  | [optional] 
 **search** | **String** |  | [optional] 
 **limit** | **Double** |  | [optional] [default to 50]
 **offset** | **Double** |  | [optional] [default to 0]
 **sortBy** | **String** |  | [optional] [default to .createdAt]
 **sortOrder** | **String** |  | [optional] [default to .desc]

### Return type

[**GetJobs200Response**](GetJobs200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMigrationStatus**
```swift
    open class func getMigrationStatus(completion: @escaping (_ data: MigrateFromKV200Response?, _ error: Error?) -> Void)
```

Get the current migration status

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client


// Get the current migration status
PoleInspectionAPI.getMigrationStatus() { (response, error) in
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

[**MigrateFromKV200Response**](MigrateFromKV200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrateFromKV**
```swift
    open class func migrateFromKV(migrateFromKVRequest: MigrateFromKVRequest? = nil, completion: @escaping (_ data: MigrateFromKV200Response?, _ error: Error?) -> Void)
```

Migrate pole inspection data from KV storage to database

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let migrateFromKVRequest = migrateFromKV_request(dryRun: false) // MigrateFromKVRequest | Body (optional)

// Migrate pole inspection data from KV storage to database
PoleInspectionAPI.migrateFromKV(migrateFromKVRequest: migrateFromKVRequest) { (response, error) in
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
 **migrateFromKVRequest** | [**MigrateFromKVRequest**](MigrateFromKVRequest.md) | Body | [optional] 

### Return type

[**MigrateFromKV200Response**](MigrateFromKV200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateConfiguration**
```swift
    open class func updateConfiguration(id: String, updateConfigurationRequest: UpdateConfigurationRequest? = nil, completion: @escaping (_ data: GetConfigurations200ResponseConfigurationsInner?, _ error: Error?) -> Void)
```

Update an existing pole inspection configuration

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let updateConfigurationRequest = updateConfiguration_request(name: "name_example", configData: "TODO") // UpdateConfigurationRequest | Body (optional)

// Update an existing pole inspection configuration
PoleInspectionAPI.updateConfiguration(id: id, updateConfigurationRequest: updateConfigurationRequest) { (response, error) in
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
 **updateConfigurationRequest** | [**UpdateConfigurationRequest**](UpdateConfigurationRequest.md) | Body | [optional] 

### Return type

[**GetConfigurations200ResponseConfigurationsInner**](GetConfigurations200ResponseConfigurationsInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGroup**
```swift
    open class func updateGroup(id: String, updateGroupRequest: UpdateGroupRequest? = nil, completion: @escaping (_ data: GetGroups200ResponseGroupsInner?, _ error: Error?) -> Void)
```

Update an existing pole inspection job group

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let updateGroupRequest = updateGroup_request(name: "name_example", description: "description_example") // UpdateGroupRequest | Body (optional)

// Update an existing pole inspection job group
PoleInspectionAPI.updateGroup(id: id, updateGroupRequest: updateGroupRequest) { (response, error) in
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
 **updateGroupRequest** | [**UpdateGroupRequest**](UpdateGroupRequest.md) | Body | [optional] 

### Return type

[**GetGroups200ResponseGroupsInner**](GetGroups200ResponseGroupsInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateJob**
```swift
    open class func updateJob(id: String, updateJobRequest: UpdateJobRequest? = nil, completion: @escaping (_ data: GetJobs200ResponseJobsInner?, _ error: Error?) -> Void)
```

Update an existing pole inspection job

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Cloneable_Swift_Client

let id = "id_example" // String | 
let updateJobRequest = updateJob_request(name: "name_example", description: "description_example", configurationId: 123, groupId: 123, status: "status_example", assignedTo: "assignedTo_example", location: "location_example", metadata: getJobs_200_response_jobs_inner_metadata(jobIdField: "jobIdField_example", createdBy: "createdBy_example", katapultJobId: "katapultJobId_example", exportBatches: [getJobs_200_response_jobs_inner_metadata_export_batches_inner(batchId: "batchId_example", startedAt: "startedAt_example", queuedCount: 123)], lastExportReferenceTime: "lastExportReferenceTime_example"), importExecutionId: 123, createdBy: "createdBy_example", archivedAt: Date()) // UpdateJobRequest | Body (optional)

// Update an existing pole inspection job
PoleInspectionAPI.updateJob(id: id, updateJobRequest: updateJobRequest) { (response, error) in
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
 **updateJobRequest** | [**UpdateJobRequest**](UpdateJobRequest.md) | Body | [optional] 

### Return type

[**GetJobs200ResponseJobsInner**](GetJobs200ResponseJobsInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

