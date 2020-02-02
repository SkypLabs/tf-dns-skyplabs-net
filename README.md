# Terraform DNS zone - skyplabs.net

Terraform module for managing the `skyplabs.net` DNS zone.

This module follows the [standard structure][standard-module-structure] described in the [Terraform documentation][terraform-docs].

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| ovh\_application\_key | The OVH API application key | `string` | n/a | yes |
| ovh\_application\_secret | The OVH API application secret | `string` | n/a | yes |
| ovh\_consumer\_key | The OVH API consumer key | `string` | n/a | yes |
| ovh\_endpoint | Specify which API endpoint to use | `string` | n/a | yes |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

 [standard-module-structure]: https://www.terraform.io/docs/modules/index.html#standard-module-structure "Terraform Documentation - Standard Module Structure"
 [terraform-docs]: https://www.terraform.io/docs/ "Terraform Documentation"
