variable "region" {
  description = "region"
  type        = string
  default     = "us-west-2"
}
variable "secret_key" {
  description = "secret_key"
  type        = string
  default     = ""
}

variable "access_key" {
  description = "access_key"
  type        = string
  default     = ""
}

variable "ami" {
  description = "ami"
  type        = string
  default     = "ami-0a36eb8fadc976275"
}

variable "instance_type" {
  description = "instance_type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "key_name"
  type        = string
  default     = "Fox-key"
}
