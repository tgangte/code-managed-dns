# code-managed-dns
## Managing Multiple Authoritative DNS Nameserver Providers with Terraform Infrastructure as Code


DNS rarely fails, but when it does, it can cause significant damage. There are numerous documented cases of authoritative DNS nameservers being DDoSed, leading to website downtime. [DYN DDOS 2016](https://en.wikipedia.org/wiki/DDoS_attacks_on_Dyn)

This risk can be mitigated by using not just one, but two authoritative nameservers. If desired, you can use even more authoritative nameservers, though this might be overkill.

Effectively, this means that you need two DNS providers, and both of them need to have the exact same DNS records (such as A records, CNAMEs, etc.). Normally, DNS settings are configured via the respective DNS provider’s portal, but this becomes unmanageable when using a dual DNS setup. Infrastructure as code to the rescue!

In this case, we use Terraform to orchestrate and synchronize the DNS settings across multiple DNS providers.

### Supported providers
- NS1 DNS (https://registry.terraform.io/providers/ns1-terraform/ns1/latest/docs)
- Cloudflare DNS  (https://registry.terraform.io/providers/gaima8/cloudflare/latest/docs)
- More can be added if they have terraform providers 

## Authentication 

Each portal requires authentication keys, which you can store locally in the enviornment variable. 

For NS1, Execute this:

export TF_VAR_ns1_apikey="insert key from ns1 portal"

For Cloudflare,

export TF_VAR_cloudflare_api_token="insert token from cloudflare portal"
## Usage
The terraform.tvfars has the DNS records that we want to add. This is a list and you can add as many records as you need. 
```
simple_records_under_zone = [
  {
    zone         = "example.com"
    domain       = "domain1.example.com"
    ttl          = 84000
    record_type  = "CNAME"
    record_value = "testcname.example.com"
  },
```
The main.tf has the configs for the providers and executes the creation of the records, you can comment out any provider you do not wish to use with /% comment %/

To  execute

```
cd code-managed-dns
terraform init
terraform plan
terraform apply 
```

Notes:
- I use Terraform Cloud to store the state files, but there are many other options such as Azure, S3  etc. 
- Complex records such as DNS round robin, healthcheck or alias records can be added based on provider support 


