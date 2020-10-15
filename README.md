# Azure Test VM terraform module

Build a virtual machine in a given subnet for testing network connectivity.

<!-- markdownlint-disable -->
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |
| azurerm | ~> 2.0 |
| random | ~> 2.2 |

## Providers

| Name | Version |
|------|---------|
| azurerm | ~> 2.0 |
| random | ~> 2.2 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| admin\_user | The administrative username for this host. | `string` | `"azureadmin"` | no |
| enable | Enable creation of vm in this subnet. | `bool` | `true` | no |
| location | The Azure region | `string` | n/a | yes |
| resource\_group\_name | The name of the resource group which will contain the resources. | `string` | n/a | yes |
| subnet\_id | The id of the subnet for the vm. | `string` | n/a | yes |
| vm\_name | The name of the host. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| admin\_password | The administrative password on the host. |
| admin\_user | The administrative user on the host. |
| name | The name of the host. |
| private\_ip | The private IP of this host. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
<!-- markdownlint-restore -->
