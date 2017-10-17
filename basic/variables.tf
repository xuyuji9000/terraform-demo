variable "access_key" {}
variable "secret_key" {}
variable "region" {
    default = "cn-north-1"
}
variable "amis" {
    type    = "map"
    default = {
        "cn-north-1" = "ami-fba67596"
    }
}
