variable "access_key" {}
variable "secret_key" {}
variable "region" {
    default = "cn-shanghai"
}

variable "availability_zone" {
    default = "cn-shanghai-a"
}

variable "vpc_cidr" {
    default = "172.16.0.0/12"
}

variable "vswitch_cidr" {
    default = "172.16.0.0/16"
}
