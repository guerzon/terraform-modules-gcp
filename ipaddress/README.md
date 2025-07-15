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
| [google_compute_address.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_address_description"></a> [address\_description](#input\_address\_description) | Description of the IP address | `string` | `null` | no |
| <a name="input_address_purpose"></a> [address\_purpose](#input\_address\_purpose) | The purpose for this resource | `string` | `null` | no |
| <a name="input_address_type"></a> [address\_type](#input\_address\_type) | Address type, either 'INTERNAL' or 'EXTERNAL'. | `string` | `"EXTERNAL"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment for which the compute engine instance is being created (e.g., non-production, production) | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region where the IP address will be located | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ip"></a> [ip](#output\_ip) | The reserved IP address |
