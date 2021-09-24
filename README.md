# Create An Azure App Service Using Terraform

## How to run this project

1. Clone this repository and open with VS code.
```
git clone https://github.com/tanvirIqbal/azure-appservice-with-terraform.git
```

2. Provide ```subscription_id```, ```client_id```, ```client_secret```, ```tenant_id``` in main.tf
3. Go to VS code terminal and login to azure
   ```az login```
4. Initialize terraform
   ```terraform init```
5. Apply terraform, this command create the app service in azure
   ```terraform apply```
6. If you want to destroy what you created, type destro command
   ```terraform destroy```  


Go to this [link](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/app_service) for Reference