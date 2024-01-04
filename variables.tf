variable "ns1_apikey" {
  default = "export TF_VAR_ns1_apikey=xxxx"
  type    = string
}

variable "cloudflare_api_token" {
  default = "export cloudflare_api_token=xxxx"
  type    = string
}

variable "cloudflare_zone_id" {
  default     = "8b94f00b3d750fe8bab6ced25d960295"
  type        = string
  description = "Zone ID is the hash of the zone string by cloudflare. It is not a secret"

}
variable "simple_records_under_zone" {
  description = "List of domains with their respective TTLs, record types, and record values to create as DNS records"
  type = list(object({
    zone         = string
    domain       = string
    ttl          = number
    record_type  = string
    record_value = string
  }))

}
