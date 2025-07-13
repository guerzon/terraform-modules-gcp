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
| [google_compute_router.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bgp_asn"></a> [bgp\_asn](#input\_bgp\_asn) | ASN number for the Cloud Router | `number` | n/a | yes |
| <a name="input_network"></a> [network](#input\_network) | Network that this router belongs to. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Region that this router belongs to. | `string` | n/a | yes |
| <a name="input_router_name"></a> [router\_name](#input\_router\_name) | Name of the router. | `string` | n/a | yes |

## Outputs

No outputs.
