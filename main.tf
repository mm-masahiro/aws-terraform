provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    "Name" = "sample_vpc"
  }
}

resource "aws_subnet" "public_1a" {
  vpc_id = "${aws_vpc.main.id}"

  availability_zone = "ap-northeast-1a"

  cidr_block = "10.0.0.0/24"

  tags = {
    "Name" = "sample_subnet"
  }
}
