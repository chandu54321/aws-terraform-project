resource "aws_vpc" "kind" {  
  cidr_block = var.aws_vpc.cidr_block
  enable_dns_hostnames = var.aws_vpc.enable_dns_hostnames
  tags = var.aws_vpc.tags
}

resource "aws_subnet" "public" {
count = length(var.aws_subnet_public)
vpc_id = aws_vpc.kind.id
cidr_block = var.aws_subnet_public[count.index].cidr_block
availability_zone = var.aws_subnet_public[count.index].availability_zone
tags= var.aws_subnet_public[count.index].tags 
}
resource "aws_subnet" "private" {
    count = length(var.aws_subnet_private)
    vpc_id = aws_vpc.kind.id
    cidr_block = var.aws_subnet_private[count.indec].cidr_block
    availability_zone = var.aws_subnet_private[count.index].availability_zone
    tags = var.aws_subnet_private[count.index].tags
}
