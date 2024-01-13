terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"  # Specify the version you want to use
    }
  }
}

provider "digitalocean" {
  token = var.do_token  # This is set via environment variables
}

