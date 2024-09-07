variable "vpc_cidr_block" {
    type = string
    description = "the cidr block for vpc"
    default = "10.0.0.0/16"
}

variable "vpc_tags" {
type = map(string)
description = "vpc tags"
default = {
    Name = "vpc"
}
}

variable "public_cidr_blocks" {
type = list(string)
description = "cidr blocks for public"
default = ["10.0.1.0/24","10.0.2.0/24"]
}

variable "private_cidr_blocks" {
type = list(string)
description = "cidr blocks for private"
default = ["10.0.3.0/24","10.0.4.0/24"]
}

variable "public_subnet_names" {
    type = list(string)
    description = "public subnet names"
    default = ["public1","public2"]
}

variable "private_subnet_names" {
    type = list(string)
    description = "private subnet names"
    default = ["private1","private2"]
}














