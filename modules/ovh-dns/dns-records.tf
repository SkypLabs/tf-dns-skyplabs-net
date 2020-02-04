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
  for_each = {
    for record in local.records :
    "${record.name}_${record.type}_${record.target}" => record
  }

  zone      = var.zone
  subdomain = each.value.name
  fieldtype = each.value.type
  ttl       = each.value.ttl
  target    = each.value.target
}
