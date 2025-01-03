resource "aws_internet_gateway" "gw" {

  vpc_id = "vpc-01d674b67b98e4299"



  tags = {

    Name = "firja-igw-2"

  }

}



provider "aws" {

  region = "ap-southeast-1" 

}
