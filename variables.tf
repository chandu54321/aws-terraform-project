variable "aws_vpc" {
  type= object({ 
  cidr_block= string
  enable_dns_hostnames= bool
  tags= map(string)
  })
  
  }  


variable "aws_subnet_public" {
  type = list(object({
  name= string  
  cidr_block = string
  availability_zone= string
  tags= map(string)
  }))
}

variable "aws_subnet_private" {
    type = list(object({
      name = string
      cidr_block= string
      availability_zone= string
      tags= map(string)
    }))
  
}