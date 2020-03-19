variable "AWS_REGION" {
  type    = "string"
  default = "us-west-2"
}

variable "AMIS" {
  type = "map"

  default = {
    us-east-1 = "ami-07b4156579ea1d7ba"
    us-west-1 = "ami-07d3239ff0bf35160"
    us-west-2 = "ami-036affea69a1101c9"
  }
}
