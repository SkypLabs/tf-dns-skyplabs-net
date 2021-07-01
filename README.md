# Terraform DNS zone - skyplabs.net

Terraform module for managing the `skyplabs.net` DNS zone.

This module follows the [standard structure][standard-module-structure] described in the [Terraform documentation][terraform-docs].

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_ovh"></a> [ovh](#requirement\_ovh) | ~> 0.14 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_dns_records"></a> [dns\_records](#module\_dns\_records) | ./modules/ovh-dns |  |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ovh_application_key"></a> [ovh\_application\_key](#input\_ovh\_application\_key) | The OVH API application key | `string` | `null` | no |
| <a name="input_ovh_application_secret"></a> [ovh\_application\_secret](#input\_ovh\_application\_secret) | The OVH API application secret | `string` | `null` | no |
| <a name="input_ovh_consumer_key"></a> [ovh\_consumer\_key](#input\_ovh\_consumer\_key) | The OVH API consumer key | `string` | `null` | no |
| <a name="input_ovh_endpoint"></a> [ovh\_endpoint](#input\_ovh\_endpoint) | Specify which API endpoint to use | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_records"></a> [records](#output\_records) | DNS records |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

 [standard-module-structure]: https://www.terraform.io/docs/modules/index.html#standard-module-structure "Terraform Documentation - Standard Module Structure"
 [terraform-docs]: https://www.terraform.io/docs/ "Terraform Documentation"
