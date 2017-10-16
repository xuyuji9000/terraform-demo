provider "aws" {
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    region     = "${var.region}"
}

resource "aws_instance" "example" {
    ami           = "${lookup(var.amis, var.region)}"
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

