terraform {
  backend "s3" {
    bucket = var.backend_bucket
    key    = var.state_file_key
    region = var.backend_region
    encrypt = true
  }
}
