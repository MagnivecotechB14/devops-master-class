
provider "aws" {
  region  = "us-east-2"
  //version = "~> 2.46" (No longer necessary)
}

variable "iam_user_name_prefix" {
  type    = string #any, number, bool, list, map, set, object, tuple
  default = "faraway_fresh_iam_user"
}

variable "names" {
  default = ["booster", "Inno607", "cityfox"]
}

resource "aws_iam_user" "my_iam_users" {
  count = length(var.names)
  name  = var.names[count.index]
}

resource "aws_iam_user" "my_iam_user" {
  count = 2
  name  = "${var.iam_user_name_prefix}_${count.index}"
}