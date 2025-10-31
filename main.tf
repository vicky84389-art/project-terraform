resource "aws_vpc" "main_vpc" {
    cidr_block = var.vpc_cidr
    enable_dns_support = true
    enable_dns_hostnames = true

    tags = {
      name = "main_vpc"
    }
}

resource "aws_subnet" "main_subnet" {
    vpc_id = aws_vpc.main_vpc.id
    cidr_block = var.vpc_cidr
    availability_zone = var.availability_zone
    map_public_ip_on_launch = true

    tags = {
        name= "main_subnet"
    }
    
    lifecycle {
        prevent_destroy = false
      }
}

resource "random_id" "bucket_suffix" {
    byte_length = 2
  }

resource "aws_s3_bucket" "demo_bucket" {
    bucket = "my-demobucket-${random_id.bucket_suffix.hex}"
    
    tags = {
      name= "demo_bucket"
    }
}

resource "aws_instance" "ec2_instance" {
  instance_type = var.instance_type
  count = 2
  ami = var.Ami_ID
  subnet_id = aws_subnet.main_subnet.id
  associate_public_ip_address = true

  tags = {
    name= "ec2_instance-${count.index+1}"
  }
}


