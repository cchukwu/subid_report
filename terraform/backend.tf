##subid_report/terraform/backend.tf

terraform {
  backend "s3" {
    endpoint   = "nyc3.digitaloceanspaces.com"  # Change to your Space region
    bucket     = "subid"           # Your Space name
    key        = "terraform.tfstate/k8s"
    region     = "us-east-1"                    # Dummy region for S3 backend
    #access_key = "added_as_env"
    #secret_key = "added_as_env"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    force_path_style            = true
  }
}
