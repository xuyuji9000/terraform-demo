variable "access_key" {}
variable "secret_key" {}
variable "region" {
    default = "cn-north-1"
}
variable "amis" {
    type    = "map"
    default = {
        "cn-north-1" = "ami-fba67596",
        "ap-northeast-2" = "ami-ab77d4c5"
    }
}
