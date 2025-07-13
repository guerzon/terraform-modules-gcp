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
| [google_dns_record_set.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/dns_record_set) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_managed_zone"></a> [managed\_zone](#input\_managed\_zone) | Managed zone in which this record set will reside. | `string` | n/a | yes |
| <a name="input_record_content"></a> [record\_content](#input\_record\_content) | The list of string data for this record. | `list(string)` | `[]` | no |
| <a name="input_record_name"></a> [record\_name](#input\_record\_name) | DNS name this record set will apply to. | `string` | n/a | yes |
| <a name="input_record_ttl"></a> [record\_ttl](#input\_record\_ttl) | The TTL (time-to-live) value for the record. Default is 300 (5 minutes). | `number` | `300` | no |
| <a name="input_record_type"></a> [record\_type](#input\_record\_type) | DNS record type. | `string` | n/a | yes |

## Outputs

No outputs.
