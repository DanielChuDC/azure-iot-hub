

Error: Error retrieving Consumer Group "consumergrouptskfodrk" (Endpoint "events" / IoTHub "sampleiotapptskfodrk" / Resource Group "iothub-resources"): devices.IotHubResourceClient#GetEventHubConsumerGroup: Failure sending request: StatusCode=409 -- Original Error: autorest/azure: Service returned an error. Status=<nil> <nil>

  on module/azure_iot_hub/consumer_group.tf line 1, in resource "azurerm_iothub_consumer_group" "cg":
   1: resource "azurerm_iothub_consumer_group" "cg" {



Error: A resource with the ID "/subscriptions/d9dac43f-65e9-4807-adbf-2c3828cf448e/resourceGroups/iothub-resources/providers/Microsoft.Devices/IotHubs/sampleiotapptskfodrk/eventHubEndpoints/events/ConsumerGroups/consumergrouptskfodrk" already exists - to be managed via Terraform this resource needs to be imported into the State. Please see the resource documentation for "azurerm_iothub_consumer_group" for more information.

  on module/azure_iot_hub/consumer_group.tf line 1, in resource "azurerm_iothub_consumer_group" "cg":
   1: resource "azurerm_iothub_consumer_group" "cg" {



Error: Error creating/updating IotHub "sampleiotapptskfodrk" (Resource Group "iothub-resources"): devices.IotHubResourceClient#CreateOrUpdate: Failure sending request: StatusCode=400 -- Original Error: Code="Failed" Message="The async operation failed." InnerError={"unmarshalError":"json: cannot unmarshal number into Go struct field serviceError2.code of type string"} AdditionalInfo=[{"code":400123,"httpStatusCode":"BadRequest","message":"Endpoint Name:endpointStorageContainer, Storage Container Name:endpoint-storage-container. If you contact a support representative please include this correlation identifier: 58bd7f44-e0c5-4ac3-a0b0-c97d54de8672, timestamp: 2021-04-02 06:49:47Z, errorcode: IH400123."}]

  on module/azure_iot_hub/endpoint_storage_container.tf line 1, in resource "azurerm_iothub_endpoint_storage_container" "endpoint_storage_container":
   1: resource "azurerm_iothub_endpoint_storage_container" "endpoint_storage_container" {

## SOlution

https://github.com/terraform-providers/terraform-provider-azurerm/issues/7444


# 2

Error: Error creating/updating IotHub "sampleiotappegtecldt" (Resource Group "iothub-resources"): devices.IotHubResourceClient#CreateOrUpdate: Failure sending request: StatusCode=400 -- Original Error: Code="Failed" Message="The async operation failed." InnerError={"unmarshalError":"json: cannot unmarshal number into Go struct field serviceError2.code of type string"} AdditionalInfo=[{"code":400123,"httpStatusCode":"BadRequest","message":"Endpoint Name:endpointStorageContainer, Storage Container Name:endpoint-storage-container. If you contact a support representative please include this correlation identifier: a359a68f-2b09-4d15-af74-0521ed76f1e4, timestamp: 2021-04-02 07:13:18Z, errorcode: IH400123."}]

  on module/azure_iot_hub/endpoint_storage_container.tf line 1, in resource "azurerm_iothub_endpoint_storage_container" "endpoint_storage_container":
   1: resource "azurerm_iothub_endpoint_storage_container" "endpoint_storage_container" {
ter    