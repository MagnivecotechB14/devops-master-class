provider "aws" {
    region = "us-east-2"
    access_key = "AKIAWMA3FZJ7JJE22QCI"
    secret_key = "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"
    //version = "~> 2.46" (No longer necessary)
}


# plan - execute 
resource "aws_s3_bucket" "my_s3_bucket" {
    bucket = "my-s3-bucket-03-faraway-fresh"
    versioning {
        enabled = true
    }
     server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_iam_user" "my_iam_user" {
    name = "my_iam_user_booster"
}
