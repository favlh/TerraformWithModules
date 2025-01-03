variable "ami" {
  description = "ami id"
  type        = string
}


variable "instance_type" {
  description = "instance type"
  type        = string
}

variable "subnet_id" {
  description = "sunet id"
  type        = string
}

variable "vpc_security_group_ids" {
  description = "Security group id"
  type        = list(string)
}

variable "key_name" {
  description = "Key name"
  type        = string
}

variable "tags" {
  description = "tags name"
  type        = map(string)
}

