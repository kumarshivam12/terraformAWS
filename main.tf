provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAXWBW7QD5P4VBOBLJ"
  secret_key = "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"
}
resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "dedicated"

  tags = {
    Name = "main"
  }
}
resource "aws_subnet" "subnet" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}