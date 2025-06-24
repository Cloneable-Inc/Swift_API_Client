# FileSchema

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | 
**relatedObjectId** | **UUID** |  | [optional] 
**relatedWorkflowId** | **UUID** |  | [optional] 
**typeRefIds** | **[String]** |  | [optional] 
**company** | **String** | The company ID | 
**contentType** | **String** | The content type of the file | 
**createdAt** | **Date** | The date the file was created | 
**updatedAt** | **Date** | The date the file was last updated | [optional] 
**createdBy** | **String** | The user ID of the user who created the file | 
**_extension** | **String** | The file extension | 
**name** | **String** | The file name | 
**displayName** | **String** | The file display name | 
**size** | **Double** | The file size in bytes | 
**type** | **String** | The file type | 
**url** | **String** | The stored file path | 
**savedToCloud** | **Bool** | Whether the file is saved to the cloud | 
**storageAuthProviderName** | **String** |  | 
**storageProvider** | **String** |  | 
**syncToEdge** | **Bool** | Whether the file should be synced to the edge device | 
**typeRefID** | **String** |  | [optional] 
**additionalProperties** | **[String: JSONValue]** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


