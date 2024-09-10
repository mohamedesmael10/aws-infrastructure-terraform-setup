resource "aws_s3_bucket" "state" {
  bucket = "esmael-bucket"

  tags = {
    Name        = "My state bucket"
    
  }
}

resource "aws_s3_bucket_versioning" "terraform_state_bucket" {
  bucket = aws_s3_bucket.state.id

  versioning_configuration {
    status = "Enabled"
  }
}


#terraform {
#  backend "s3" {
#    encrypt = true    bucket = "hella-buckets"
#    dynamodb_table = "terraform-state-lock-dynamo"
#    key    = "terraform.tfstate"
#    region = "us-east-1"
#  }
#}

resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name = "terraform-state-lock-dynamo"
  hash_key = "LockID"                                                         #The primary key used for locking
  billing_mode  = "PROVISIONED"                                                
  read_capacity = 1                                                           #provisioned throughput for the table
  write_capacity = 1                                                          #provisioned throughput for the table
 
  attribute {
    name = "LockID"
    type = "S"                                                                #string
  }

   tags = {
    Name = "dynamodb-terraform-state-lock"
}
}
