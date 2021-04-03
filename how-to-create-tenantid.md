### Guide on using service principal client secret


> https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/service_principal_client_secret

```sh
az account list
# find the id 
export SUBSCRIPTION_ID=XXXX-XXXX-XXXXXXXXXX

az account set --subscription="$SUBSCRIPTION_ID"
az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/$SUBSCRIPTION_ID"

### example output
# {
#   "appId": "41a8378d-05dc-457e-a95e-9b37a159975a",
#   "displayName": "azure-cli-2020-10-29-15-50-20",
#   "name": "http://azure-cli-2020-10-29-15-50-20",
#   "password": "aART-qngy0g1herdcJ6QvSNrafjv_QAJpGk",
#   "tenant": "0a5d6e2b-3b59-4429-95a6-e1152dd0b603"
# }

```


> These values map to the Terraform variables like so:
    > `appId` is the `client_id` defined above.
    > `password` is the `client_secret` defined above.
    > `tenant` is the `tenant_id` defined above.
