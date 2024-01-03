terraform {
  required_providers {
    ns1 = {
      source = "ns1-terraform/ns1"
      version = "~> 2.0"
    }
  }
  required_version = ">= 0.13"
}

provider "ns1" {
  apikey = var.ns1_apikey
  rate_limit_parallelism = 60
}

