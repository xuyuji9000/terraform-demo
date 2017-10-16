provider "aws" {
    region     = "cn-north-1"
}

resource "aws_instance" "example" {
    ami           = "ami-fba67596"
    instance_type = "t2.micro"
}
