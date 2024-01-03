resource "ns1_record" "def_gangte_org" {
  zone   = "gangte.org"
  domain = "def.gangte.org"
  type   = "A"
   ttl   = 3602
 answers  {
   answer =  "20.253.201.181"
}

}


/*
output a_records {
value=resource.ns1_record.gangte_org

depends_on = ["ns1_records.def_gangte_org"]

}
*/
