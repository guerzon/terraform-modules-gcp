## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_compute_router_nat.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_nat_gateway_name"></a> [nat\_gateway\_name](#input\_nat\_gateway\_name) | Name for the NAT Gateway. | `string` | n/a | yes |
| <a name="input_network_tier"></a> [network\_tier](#input\_network\_tier) | The network tier, options are 'PREMIUM' and 'STANDARD'. | `string` | `"PREMIUM"` | no |
| <a name="input_region"></a> [region](#input\_region) | Region that this NAT gateway belongs to. | `string` | n/a | yes |
| <a name="input_router_name"></a> [router\_name](#input\_router\_name) | Name of the router to attach the Nat gateway to. | `string` | n/a | yes |

## Outputs

No outputs.
