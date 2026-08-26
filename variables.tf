variable "AMI" {
  type    = string
  default = "ami-02878923bcc184d8d"
}

variable "INSTANCE_TYPE" {
  type    = string
  default = "t3.micro"
}


variable "INSTANCE_NAME" {
  type    = string
  default = "gilles-instance"

}


variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}
