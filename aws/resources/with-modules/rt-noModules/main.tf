data "aws_route_table" "default" {

  vpc_id = "vpc-01d674b67b98e4299"

  filter {

    name   = "association.main"

    values = ["true"]

  }

}



# Add route to the internet gateway

resource "aws_route" "internet_gateway" {

  route_table_id         = data.aws_route_table.default.id

  destination_cidr_block = "0.0.0.0/0"

  gateway_id             = "igw-0336290217a976184"

}



provider "aws" {

  region = "ap-southeast-1"

}
