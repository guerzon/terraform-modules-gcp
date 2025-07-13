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
| [google_artifact_registry_repository.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/artifact_registry_repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | Location of the registry | `string` | n/a | yes |
| <a name="input_registry_format"></a> [registry\_format](#input\_registry\_format) | Registry format | `string` | n/a | yes |
| <a name="input_registry_id"></a> [registry\_id](#input\_registry\_id) | Registry ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_registry"></a> [registry](#output\_registry) | ID of the Artifact Registry |
