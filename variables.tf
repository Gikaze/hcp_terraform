variable "AMI" {
  type    = string
  default = "ami-02878923bcc184d8d"
}

variable "INSTANCE_TYPE" {
  type    = string
  default = "t3.micro"
}

variable "PATH_TO_PUBLIC_KEY" {
  type        = string
  description = "Contenu brut de la clé publique SSH"
}


variable "INSTANCE_NAME" {
  type    = string
  default = "gilles-instance"

}

variable "TYPE" {
  type    = string
  default = "Private"
}

variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}
