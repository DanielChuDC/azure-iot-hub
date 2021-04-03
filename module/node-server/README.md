# terraform-azure-starter
terraform-azure-starter

> The code uses AzureRM Provider 2.x


### Before you begin

Install terraform

### Using terraform to provision a demo instance


Follow [this link](https://docs.microsoft.com/en-us/azure/developer/terraform/create-linux-virtual-machine-with-infrastructure)

### How to run

```sh
terraform init && terraform plan && terraform apply -auto-approve

# Once Terraform completes, your VM infrastructure is ready. Obtain the public IP address of your VM with az vm show:


az vm show --resource-group myResourceGroup --name myVM -d --query [publicIps] -o tsv

# SSH into the vm instance
ssh azureuser@<publicIps>
```