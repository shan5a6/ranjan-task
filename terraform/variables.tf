variable "jenkins_master_instance_type" {
  description = "Jenkins Master instance type"
  default     = "t2.medium"
}

variable "key_name" {
  description = "SSH KeyPair"
  default = "jenkins"
}
