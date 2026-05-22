variable "aws_region" {
    type = string
    default = "us-east-1"
}

variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
}
 
variable "availability_zones" {
    type = list(string)
    default = ["us-east-1a", "us-east-1b"]
}

variable "public_subnets" {
    type = map(string)
    default = {
        web-public-subnet-1a = "10.0.1.0/24"
        web-public-subnet-1b = "10.0.2.0/24"
    }
}

variable "app_private_subnets" {
    type = map(string)
    default ={
        app-private-subnet-1a = "10.0.3.0/24"
        app-private-subnet-1b = "10.0.4.0/24"
    }
}

variable "db_private_subnets" {
    type = map(string)
    default = {
        data-private-subnet-1a = "10.0.5.0/24"
        data-private-subnet-1b = "10.0.6.0/24"
    }
}
