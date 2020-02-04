locals {
  records = flatten([
    for record in var.records : [
      for target in record.targets : {
        name   = record.name
        type   = record.type
        ttl    = record.ttl
        target = target
      }
    ]
  ])
}

resource "ovh_domain_zone_record" "this" {
  count = length(local.records)

  zone      = var.zone
  subdomain = local.records[count.index].name
  fieldtype = local.records[count.index].type
  ttl       = local.records[count.index].ttl
  target    = local.records[count.index].target
}
