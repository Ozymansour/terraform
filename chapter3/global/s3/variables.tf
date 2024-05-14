variable "bucket_name" {
  description = "Name of S3 bucket storing state files"
  type = string
  default = "terraform-state-987654" 
}

variable "table_name" {
  description = "Name of S3 bucket storing state files"
  type = string
  default = "terraform-locks" 
}