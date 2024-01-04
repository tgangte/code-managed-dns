/*
resource "ns1_record" "def_gangte_org" {
  zone   = "gangte.org"
  domain = "def.gangte.org"
  type   = "A"
   ttl   = 3602
 answers  {
   answer =  "20.253.201.181"
}

}

*/

resource "ns1_record" "simple_records" {
  count = length(var.simple_records_under_zone)

  zone 	 = var.simple_records_under_zone[count.index].zone
  domain = var.simple_records_under_zone[count.index].domain
  type   = var.simple_records_under_zone[count.index].record_type
  ttl    = var.simple_records_under_zone[count.index].ttl

  answers {
    answer = var.simple_records_under_zone[count.index].record_value
  }
}



/*
output a_records {
value=resource.ns1_record.gangte_org

depends_on = ["ns1_records.def_gangte_org"]

}
*/
