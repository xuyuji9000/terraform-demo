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

variable "password" {
    description = "The password of instance. Need contain capital, lowercase and special character at the same time."
}

variable "key_name" {
    default = "key-pair-from-terraform"
}

variable "key_file" {
    default = "alicloud_ssh_key.pem"
}
