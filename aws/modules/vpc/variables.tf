variable "cidr_block" {
  description = "cidr block name"
  type        = string
}

variable "instance_tenancy" {
  description = "instanc tenancy"
  type       = string
}

variable "tags" {
  description = "tags name"
  type        = map(string)
}

