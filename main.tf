
#ec2 creation





resource "aws_instance" "web" {
  count = var.create_ec2 ? 2 : 0

  ami   = "ami-004f790b835b26145"
  instance_type = var.instance_type
}


#Vpc creation

resource "aws_vpc" "pub" {
    cidr_block = var.pub_cidr
    tags = {
        Name = var.vpc1
    }
}

#vpc 2 creation

resource "aws_vpc" "pri" {
    cidr_block = var.pri_cidr
    tags = {
        Name = var.vpc2
    }
}

#subnet creation

resource "aws_subnet" "sub1" {
    vpc_id = aws_vpc.pub.id
    cidr_block = var.pub_subnet_cidr
    tags = {
        Name = var.pub_sub
    }
}