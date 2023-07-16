### Here in the company we can configure various workspace 
1. for production 
2. for development 

- We can cofigure low cost machine in development enviroment (for low expence)

- For different workspace different tfstate file generated

- By default terraform plan run the default file terraform.tfvars file

*If we want to run dev or prod tfvars file* 
then
*Firsly create the file dev-terraform.tfvars or prod-terraform.tfvars*

Then use this command to make the changes or for update the default tfstate file(not reccomended) use apply instead of plan
```terraform plan -var-file dev-terraform.tfvars```
                       *or*
```terraform plan -var-file prod-terraform.tfvars```

For create new workspace use command terraform workspace ```new 'workspacename'```

```terraform workspace show``` (show the present working workspace)

```terraform workspace list``` (for list of total workspace)


*But this apply command update default tfstate file (that is problem) if u want to create seprate tfstate file in the workspace then* 
1. Create the file dev-terraform.tfvars or prod-terraform.tfvars
2. Create or switch in the workspace 

<!-- then run this command terraform plan -var-file dev-terraform.tfvars -->
```terraform apply --auto-approve --var-file="filename".tfvars```


For delete the workspace ```terraform workspace delete "name"```

You can not delete the default workspace

