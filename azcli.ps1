# List Azure Subscriptions
az account list --output table

# Select Azure Subscription
az account set --subscription "Visual Studio Premium with MSDN"

# Create Password-based authentication Service Principal
az ad sp create-for-rbac --name "Service Principal Name" 	
az ad sp create-for-rbac --name "terraformsp"

#Create storage account
az storage account show-connection-string --name "xxxx"

call az storage account show-connection-string --name "xxxx" > tmpconstr
az storage account keys list -g "rg-xxxx" -n "xxxx"

key=$(az storage account keys list -g "rg-xxxx" -n "xxxx" --query [0].value -o tsv)

#Setup Terraform

# List Azure Subscriptions
az account list --output table

# Select Azure Subscription
az account set --subscription "xxxx-xxxx-xxxx-xxxx"

# Create Password-based authentication Service Principal
az ad sp create-for-rbac --name "terraformsp"

#  Create a service principal for use with Terraform
az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/xxxxxx"

# Configure Terraform environment variables
#!/bin/sh
echo "Setting environment variables for Terraform"
export ARM_SUBSCRIPTION_ID="xxxx"
export ARM_CLIENT_ID="xxxx"
export ARM_CLIENT_SECRET="xxxx"
export ARM_TENANT_ID="xxxx"

# Not needed for public, required for usgovernment, german, china
export ARM_ENVIRONMENT=public
