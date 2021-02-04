Terraform example for provider vsphere


Folder Structure:
├── data_sources.tf
├── main.tf
├── provider.tf
├── README.md
├── secret.tf
├── terraform.tfvars
└── variables.tf

Set secrets via environment variables
>export TF_VAR_username=(the username)
>export TF_VAR_password=(the password)
When you run Terraform, it'll pick up the secrets automatically
>terraform apply
