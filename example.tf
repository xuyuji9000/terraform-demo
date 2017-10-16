provider "aws" {
    region     = "cn-north-1"
}

resource "aws_instance" "example" {
    ami           = "ami-fba67596"
    instance_type = "t2.micro"

    depends_on    = ["aws_s3_bucket.example"]
}

resource "aws_eip" "ip" {
    instance = "${aws_instance.example.id}"
}

resource "aws_s3_bucket" "example" {
    bucket = "terraform-getting-started-guide-yogiman"
    acl    = "private"
}

