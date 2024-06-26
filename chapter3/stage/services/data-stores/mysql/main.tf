provider "aws" {
region = "us-east-2"
}

terraform {
  backend "s3" {
    bucket = "terraform-state-987654"
    key = "stage/data-stores/mysql/terraform.tfstate"
    region = "us-east-2"

    dynamodb_table = "terraform-locks"
    encrypt = true
  }
}

resource "aws_db_instance" "example" {
  identifier_prefix   = "terraform-up-and-running"
  engine              = "mysql"
  allocated_storage   = 10
  instance_class      = "t2.micro"
  skip_final_snapshot = true

  db_name             =  "example-database"

  username = var.db_username
  password = var.db_password
}

