# azure-iot-hub

### Prerequisite 

- Azure Account
- Azure cli installed in your workstation

### Before you begin

- Change the name of `terraform.tfvars.example` into `terraform.tfvars`
- Update the content with `terraform.tfvars` with the output of [how to create your secret cli](./how-to-create-tenantid.md)
- Run the following command
```

terraform init
terraform plan
terraform apply -auto-approve
```


### Testing

- Open `test-connection-examples` folder
- `npm install && node server.js`


### Destroy the resource
- Run the following command
```
terraform destroy -auto-approve
```

### Reference

https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iothub#fallback_route

https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iothub_endpoint_storage_container#delete

https://github.com/terraform-providers/terraform-provider-azurerm/issues/5609

https://github.com/regelcloud/terraform-azurerm-iothub



### How to connect device in Azure IOT hub

https://github.com/Azure-Samples/IoTMQTTSample

https://github.com/Azure-Samples/iot-hub-mqtt-5-preview-samples-csharp


https://docs.microsoft.com/en-us/azure/iot-hub/quickstart-send-telemetry-cli

```cli

az group create --name MyResourceGroup --location eastus
az extension add --name azure-iot

```

### Using nodejs sdk 

 https://github.com/Azure/azure-iot-sdk-node