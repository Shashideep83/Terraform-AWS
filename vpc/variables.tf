variable "vpc_cidr" {}

variable "public_cidrs" {
  type = "lists"
}

variable "private_cidrs" {
  type = "list"
}

variable "transit_gateway" {}
