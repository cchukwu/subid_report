##subid_report/terraform/backend.tf

terraform {
  backend "s3" {
    endpoint   = "nyc3.digitaloceanspaces.com"  # Change to your Space region
    bucket     = "subid"           # Your Space name
    key        = "terraform.tfstate/vpc"
    region     = "us-east-1"                    # Dummy region for S3 backend
    access_key = "DO00HM2JDBVT66E7R92Q"
    secret_key = "8u0yzUJPu5lgO1leDSgMKx4knTgr5uwNCS2YRTZcRFs"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    force_path_style            = true
  }
}
