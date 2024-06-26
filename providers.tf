terraform {
  required_providers {
    ns1 = {
      source  = "ns1-terraform/ns1"
      version = "~> 2.0"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
  required_version = ">= 0.13"
}

provider "ns1" {
  apikey                 = var.ns1_apikey
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

terraform {
  cloud {
    organization = "cabbage-patch"
    workspaces {
      name = "code-managed-dns-workspace"
    }
  }
}

