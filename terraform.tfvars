simple_records_under_zone = [
  {
    zone         = "gangte.net"
    domain       = "domain1.gangte.net"
    ttl          = 84000
    record_type  = "CNAME"
    record_value = "siem.gangte.net"
  },
  {
    zone         = "gangte.net"
    domain       = "domain2.gangte.net"
    ttl          = 84000
    record_type  = "CNAME"
    record_value = "siem.gangte.net"
  },
  {
    zone         = "gangte.net"
    domain       = "siem.gangte.net"
    ttl          = 3600
    record_type  = "A"
    record_value = "20.253.201.181"
  }
]

