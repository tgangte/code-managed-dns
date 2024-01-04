# code-managed-dns
## Authorative DNS Nameserver providers managed via Terraform 
- NS1 DNS
- Cloudflare DNS todo

## Authentication 

Execute this:

export TF_VAR_ns1_apikey="insert key from ns1 portal"

## How to import configs from NS1

terraform  import ns1_record.def_gangte_org  gangte.org/def.gangte.org/A

terraform  import ns1_zone.gangte_org  gangte.org
