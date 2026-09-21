variable "region" {
  type    = string
  default = "us-east-1"
}
variable "project" {
  type    = string
  default = "om-incident-demo"
  validation {
    condition     = can(regex("^[a-z][a-z0-9-]{2,24}$", var.project))
    error_message = "Use 3-25 lowercase letters, digits or hyphens; start with a letter."
  }
}
variable "instance_type" {
  type    = string
  default = "t3.micro"
}
