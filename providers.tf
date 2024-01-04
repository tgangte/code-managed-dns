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
}

provider "ns1" {
  apikey                 = var.ns1_apikey
  rate_limit_parallelism = 60
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

