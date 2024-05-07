# terraform-S3Backend-Project

## I have hosted a static website using terraform and stored the terraform.tfsate file in S3 Backend 


### By using terraform  I have created resources from terraform registry in main.tf :-
    
    - AWS S3 Bucket
    - Changed Bucket Ownership from Pirvate to public By using ACL
    - I have copied the Index.html, error.html , images in S3 Bucket
    - I have enabled static website hosting 

### I have mentioned variables in variable.tf
### I have mentioned provider version,aws region in provider.tf

## Install Terraform

```bash
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null
gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update
sudo apt-get install terraform -y
terraform --version
```

# Execute Steps

### for initializing S3 Backend
```bash
terraform init
```

### for formatting terraform files
```bash
terraform fmt
```

### for validating your code
```bash
terraform validate
```

### paln for checking which resources 
```bash
terraform plan
```

### to apply 
```bash
terraform apply --auto-approve
```

### to destroy created infrastructure
```bash
terraform destroy --auto-approve
```
