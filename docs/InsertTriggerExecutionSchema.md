# InsertTriggerExecutionSchema

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | [optional] 
**triggerId** | **UUID** |  | 
**jobId** | **UUID** |  | [optional] 
**batchId** | **UUID** |  | [optional] 
**status** | **String** |  | 
**createdAt** | **Date** |  | [optional] 
**startedAt** | **Date** |  | [optional] 
**completedAt** | **Date** |  | [optional] 
**error** | **String** |  | [optional] 
**inputs** | **[String: JSONValue]** |  | 
**outputs** | **[String: JSONValue]** |  | 
**metadata** | [**InsertTriggerExecutionSchemaMetadata**](InsertTriggerExecutionSchemaMetadata.md) |  | 
**resourceLimits** | [**GetTriggerTemplates200ResponseInnerResourceLimits**](GetTriggerTemplates200ResponseInnerResourceLimits.md) |  | 
**resourceUsage** | [**InsertTriggerExecutionSchemaResourceUsage**](InsertTriggerExecutionSchemaResourceUsage.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


