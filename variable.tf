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




















