module "iothub" {
  source = ".//module/azure_iot_hub"
  resource_group_name =  "iothub-resources"
  location =  "East Asia"
  name = "sampleiotapp"
  sku_name = "S1"
  sku_capacity = "1"

  tags = {
      name = "IoTHub"
      environment =  "Development"
  }

}

module "nodeServerForMqtt" {
  source = ".//module/node-server"

  ####################
  # Common Variables #
  ####################
  company     = "nextcloud"
  app_name    = "simpleNodeServerForMqtt"
  environment = "development"
  location    = "southeastasia" # must be one of the supported locaiton in list of supported Azure Locations.
  ############
  # Linux VM #
  ############
  web-linux-vm-size        = "Standard_B1s"
  web-linux-admin-username = "tfadmin"

  ############
  # SSH KEY #
  ############

  ssh_key_name=  "customs-ssh-key"
  ssh_ecs_instance_pem_key= "ECS-SSH-KEY-PEM"
  ssh_ecs_instance_public_key="ECS-SSH-PUBLIC-KEY"

  ###########
  # Network #
  #####
  network-vnet-cidr   = "10.128.0.0/16"
  network-subnet-cidr = "10.128.1.0/24"




}
