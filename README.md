# Azure Test VM terraform module

Build a virtual machine in a given subnet for testing network connectivity.

<!-- markdownlint-disable -->
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
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
| enable | Enable creation of test vm in this subnet. | `bool` | n/a | yes |
| location | The Azure region | `string` | n/a | yes |
| resource\_group\_name | The name of the resource group which will contain the vnet resources. | `string` | n/a | yes |
| subnet\_id | The id of the subnet for the test vm. | `string` | n/a | yes |
| testvm\_name | The name of the test host. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| admin\_password | The administrative password on the test host. |
| admin\_user | The administrative user on the test host. |
| name | The name of the test host. |
| private\_ip | The private IP of this test host. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
<!-- markdownlint-restore -->
