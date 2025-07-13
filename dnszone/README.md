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
| [google_dns_managed_zone.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/dns_managed_zone) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_logging"></a> [cloud\_logging](#input\_cloud\_logging) | Enable logging of DNS queries to Cloud Logging | `bool` | `false` | no |
| <a name="input_visible_gke_clusters"></a> [visible\_gke\_clusters](#input\_visible\_gke\_clusters) | List of visible GKE clusters for private zones. | `list(string)` | `[]` | no |
| <a name="input_visible_networks"></a> [visible\_networks](#input\_visible\_networks) | List of visible networks for private zones. | `list(string)` | `[]` | no |
| <a name="input_zone_description"></a> [zone\_description](#input\_zone\_description) | Description of the zone. | `string` | `null` | no |
| <a name="input_zone_dns_name"></a> [zone\_dns\_name](#input\_zone\_dns\_name) | The DNS name suffix of the zone. | `string` | n/a | yes |
| <a name="input_zone_dnssec"></a> [zone\_dnssec](#input\_zone\_dnssec) | The DNSSEC state of the zone. Possible values are: 'on', 'off', and 'transfer'. | <pre>map(object({<br/>    state         = string<br/>    non_existence = string<br/>  }))</pre> | <pre>{<br/>  "config": {<br/>    "non_existence": "nsec3",<br/>    "state": "on"<br/>  }<br/>}</pre> | no |
| <a name="input_zone_name"></a> [zone\_name](#input\_zone\_name) | Name for the hosted zone. | `string` | n/a | yes |
| <a name="input_zone_type"></a> [zone\_type](#input\_zone\_type) | Specifies whether the zone is a private or public zone. | `string` | `"public"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dns_zone"></a> [dns\_zone](#output\_dns\_zone) | The name of the created managed zone. |
| <a name="output_name_servers"></a> [name\_servers](#output\_name\_servers) | The name servers for the DNS zone. |
