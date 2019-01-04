variable "bastion_key_path" {
  description = "My public ssh key"
   default = "./helper_scripts/id_rsa.pub"
}
variable "openshift_key_path" {
  description = "My public ssh key"
   default = "./helper_scripts/id_rsa.pub"
}
variable "bastion_key_name" {
  description = "Desired name of AWS key pair"
  default     = "bastion"
}
variable "openshift_key_name" {
  description = "Desired name of AWS key pair"
  default     = "openshift"
}
variable "gcp_region" {
  description = "Google Compute Platform region to launch servers."
  default     = "europe-west3"
}
variable "gcp_project" {
  description = "Google Compute Platform project name."
  default     = "terraform-227611"
}
variable "gcp_credentials" {
  description = "Google Compute Platform credentials file"
  default     = "credentials.json"
}
variable "gcp_amis" {
  default = {
    eu-west-1 = "ami-6e28b517"
  }
}
variable "vpc_cidr" {
  default = "10.0.0.0/20"
  description = "the vpc cdir range"
}
variable "public_subnet_a" {
  default = "10.0.0.0/24"
  description = "Public subnet A"
}
variable "htpasswd" {
}
