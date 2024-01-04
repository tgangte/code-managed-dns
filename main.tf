resource "ns1_record" "simple_records" {
  count = length(var.simple_records_under_zone)

  zone   = var.simple_records_under_zone[count.index].zone
  domain = var.simple_records_under_zone[count.index].domain
  type   = var.simple_records_under_zone[count.index].record_type
  ttl    = var.simple_records_under_zone[count.index].ttl

  answers {
    answer = var.simple_records_under_zone[count.index].record_value
  }
}

resource "cloudflare_record" "simple_records" {
  count = length(var.simple_records_under_zone)

  zone_id = var.cloudflare_zone_id
  name    = var.simple_records_under_zone[count.index].domain
  type    = var.simple_records_under_zone[count.index].record_type
  ttl     = var.simple_records_under_zone[count.index].ttl

  value = var.simple_records_under_zone[count.index].record_value
}
