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
| [google_compute_ssl_certificate.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_ssl_certificate) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | Environment for which the compute engine instance is being created (e.g., non-production, production) | `string` | n/a | yes |
| <a name="input_ssl_certificate_file"></a> [ssl\_certificate\_file](#input\_ssl\_certificate\_file) | The file containing the PEM-format SSL certificate | `string` | n/a | yes |
| <a name="input_ssl_certificate_name"></a> [ssl\_certificate\_name](#input\_ssl\_certificate\_name) | Name of the SSL certificate | `string` | `null` | no |
| <a name="input_ssl_private_key_file"></a> [ssl\_private\_key\_file](#input\_ssl\_private\_key\_file) | The file containing the SSL private key | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ssl_certificate"></a> [ssl\_certificate](#output\_ssl\_certificate) | Self-link to the classic SSL certificate |
