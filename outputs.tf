output "vpc_id" {
    description = "id of the vpc created"
    value = aws_vpc.main_vpc.id
}

output "subnet_id" {
    description = "ID of the subnet created"
    value = aws_subnet.main_subnet[*].id  
}

output "aws_s3_bucket" {
    description = "s3 bucket created"
    value = aws_s3_bucket.demo_bucket.bucket
}

output "aws_instance_ids" {
    description = "ID of ec2 instances created"
    value = aws_instance.ec2_instance[*].id  
}