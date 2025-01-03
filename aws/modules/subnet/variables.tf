variable "vpc_id" {
  description = "vpc id"
  type        = string
}

variable "cidr_block" {
  description = "cidr block name"
  type        = string
}

variable "map_public_ip_on_launch" {
  description = "instanc tenancy"
  type       = bool
}

variable "tags" {
  description = "tags name"
  type        = map(string)
}

