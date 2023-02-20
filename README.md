Getting started
===

1. Create module using the cookiecutter tool and this boilerplate. Specify all the required variables.
```bash
    $ cookiecutter https://github.com/nevtum/terraform-dynamodb-cookiecutter.git
```
2. Assuming you've named your module `dynamo_table` reference it with
```Terraform
module "my_module" {
  source = "./dynamo_table"
}
```
3. Initialize your Terraform setup with `terraform init`
4. Plan your Terraform with `terraform plan`
5. Apply changes using `terraform apply`
6. Enjoy your new DynamoDB table on AWS!
