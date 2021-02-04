Terraform example for provider vsphere


Folder Structure: <br>
├── data_sources.tf  <br>
├── main.tf <br> 
├── provider.tf <br>
├── README.md <br>
├── secret.tf <br>
├── terraform.tfvars <br>
└── variables.tf <br>

Set secrets via environment variables <br>
>export TF_VAR_username=(the username) <br>
>export TF_VAR_password=(the password) <br>
When you run Terraform, it'll pick up the secrets automatically <br>
>terraform apply
