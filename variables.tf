variable "aws_region" {
    description = "aws region to deploy resource"
    type = string
    default = "ap-south=1"
}

variable "vpc_cidr" {
        description = "CIDR block for vpc"
        type = string
        default = "10.0.0.0/16"  
}

variable "subnet_cidr" {
    description = "cidr block for subnet"
    type = string
    default = "10.0.1.0/24"
}

variable "availability_zone" {
    description = "available zones for subnet"
    type = string
    default = "ap-south-1a"
}

variable "instance_type" {
    description = "Type of ec2 instance"
    type = string
    default = "t3.micro"
}

variable "Ami_ID" {
    description = "Ami ID for ec2 instance"
    type = string
    default = "ami-00af95fa354fdb788"
}

