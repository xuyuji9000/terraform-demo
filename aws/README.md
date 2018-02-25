# init

1. create *terraform.tfvars* from *terraform.tfvars.default*

2. `terraform init`

3. set environment variables

    ``` bash
    export TF_VAR_access_key=key_value
    export TF_VAR_secret_key=secret_value
    export TF_VAR_region=ap-northeast-2
    export TF_VAR_key_pair=~/.ssh/id_rsa.pub
    ```

3. check expected result: `terraform plan`

4. execute provision: `terraform apply`

5. output: `terraform output`

6. ssh instance: `ssh ubuntu@$(terraform output ip)`