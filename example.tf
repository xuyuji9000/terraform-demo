provider "aws" {
    region     = "cn-north-1"
}

resource "aws_instance" "example" {
    ami           = "ami-0220b23b"
    instance_type = "t2.micro"
}
