# Terraform DNS zone - skyplabs.net

Terraform module for managing the `skyplabs.net` DNS zone.

This module follows the [standard structure][standard-module-structure] described in the [Terraform documentation][terraform-docs].

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |
| ovh | ~> 0.10 |

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| ovh\_application\_key | The OVH API application key | `string` | `null` | no |
| ovh\_application\_secret | The OVH API application secret | `string` | `null` | no |
| ovh\_consumer\_key | The OVH API consumer key | `string` | `null` | no |
| ovh\_endpoint | Specify which API endpoint to use | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| records | DNS records |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

 [standard-module-structure]: https://www.terraform.io/docs/modules/index.html#standard-module-structure "Terraform Documentation - Standard Module Structure"
 [terraform-docs]: https://www.terraform.io/docs/ "Terraform Documentation"
