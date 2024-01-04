variable  ns1_apikey {
default = "export TF_VAR_ns1_apikey=xxx"
type = string
}

variable simple_records_under_zone {
  description = "List of domains with their respective TTLs, record types, and record values to create as DNS records"
  type        = list(object({
    zone = string
    domain = string
    ttl    = number
    record_type = string
    record_value = string
  }))
}
