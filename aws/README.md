# init

1. create *terraform.tfvars* from *terraform.tfvars.default*

2. `terraform init`

3. set environment variables

    ``` bash
    export TF_VAR_access_key=key_value
    export TF_VAR_secret_key=secret_value
    export TF_VAR_region=ap-northeast-2
    ```

3. check expected result: `terraform plan`

4. execute provision: `terraform apply`