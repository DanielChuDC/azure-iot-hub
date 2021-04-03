# resource "azurerm_iothub_endpoint_storage_container" "endpoint_storage_container" {
#   resource_group_name = azurerm_resource_group.iothub.name
#   iothub_name         = azurerm_iothub.iothub.name
#   name                =  "endpointStorageContainer"

#   container_name    = "endpoint-storage-container"
#   connection_string =   azurerm_storage_account.main.primary_blob_connection_string

#   depends_on = [ azurerm_storage_account.main, azurerm_iothub.iothub,azurerm_iothub_shared_access_policy.shared_access_policy,azurerm_iothub_endpoint_servicebus_queue.endpoint_servicebus_queue ]
#   file_name_format           = "{iothub}/{partition}_{YYYY}_{MM}_{DD}_{HH}_{mm}"
#   batch_frequency_in_seconds = 60
#   max_chunk_size_in_bytes    = 10485760

#   encoding                   = "Avro"

# }