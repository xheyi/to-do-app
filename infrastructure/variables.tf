# this section is for networking varibles
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet1_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "public_subnet2_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "private_subnet1_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
}

variable "private_subnet2_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
}

variable "availability_zone1" {
  description = "Availability zone for the first subnet"
  type        = string
}

variable "availability_zone2" {
  description = "Availability zone for the second subnet"
  type        = string
}

variable "route_table_route_cidr" {
  description = "CIDR block for the route table route"
  type        = string
}

variable "ingress_rule_cidr" {
  description = "CIDR block for the ingress rule"
  type        = string
}

variable "egress_rule_cidr" {
  description = "CIDR block for the egress rule"
  type        = string
}

variable "fargate_security_group_ingress_rule_cidr" {
  description = "CIDR block for the Fargate security group ingress rule"
  type        = string
}

variable "route_private_nat_cidr" {
    description = "CIDR block for the private route to NAT"
    type        = string
}

# this section is for eks cluster variable