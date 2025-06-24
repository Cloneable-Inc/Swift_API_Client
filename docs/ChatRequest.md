# ChatRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messages** | [ComponentAssitantRequestInner] | A list of messages comprising the conversation so far | 
**frequencyPenalty** | **Double** | Penalty for token frequency in the generated text (-2.0 to 2.0) | [optional] 
**logitBias** | **[String: Int]** | Modify likelihood of specified tokens appearing in the completion | [optional] 
**logprobs** | **Bool** | Whether to return log probabilities of the output tokens | [optional] 
**topLogprobs** | **Int** | Number of most likely tokens to return at each position (0-20) | [optional] 
**maxTokens** | **Int** | Maximum number of tokens to generate | [optional] 
**n** | **Int** | Number of chat completion choices to generate | [optional] 
**presencePenalty** | **Double** | Penalty for new tokens based on their presence in the text so far (-2.0 to 2.0) | [optional] 
**responseFormat** | [**ChatRequestResponseFormat**](ChatRequestResponseFormat.md) |  | [optional] 
**seed** | **Int** | Seed for deterministic sampling | [optional] 
**stop** | [**ChatRequestStop**](ChatRequestStop.md) |  | [optional] 
**stream** | **Bool** | Whether to stream partial message deltas | [optional] 
**temperature** | **Double** | Sampling temperature (0-2) | [optional] 
**topP** | **Double** | Nucleus sampling probability (0-1) | [optional] 
**tools** | [ChatRequestToolsInner] | List of tools (functions) the model may call | [optional] 
**toolChoice** | [**ChatRequestToolChoice**](ChatRequestToolChoice.md) |  | [optional] 
**user** | **String** | A unique identifier representing the end-user | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


