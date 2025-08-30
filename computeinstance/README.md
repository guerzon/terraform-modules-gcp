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
| [google_compute_instance.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance) | resource |
| [google_service_account.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_compute_engine_sa_name"></a> [compute\_engine\_sa\_name](#input\_compute\_engine\_sa\_name) | Name of the service account to be used by the compute engine instance | `string` | n/a | yes |
| <a name="input_compute_engine_sa_scopes"></a> [compute\_engine\_sa\_scopes](#input\_compute\_engine\_sa\_scopes) | List of scopes for the compute engine service account | `list(any)` | <pre>[<br/>  "https://www.googleapis.com/auth/devstorage.read_only",<br/>  "https://www.googleapis.com/auth/logging.write",<br/>  "https://www.googleapis.com/auth/monitoring.write",<br/>  "https://www.googleapis.com/auth/service.management.readonly",<br/>  "https://www.googleapis.com/auth/servicecontrol",<br/>  "https://www.googleapis.com/auth/trace.append"<br/>]</pre> | no |
| <a name="input_disk_auto_delete"></a> [disk\_auto\_delete](#input\_disk\_auto\_delete) | Whether the disk will be deleted when the VM is deleted | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment for which the compute engine instance is being created (e.g., test, dev, production) | `string` | n/a | yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Type of the compute engine instance | `string` | `"e2-medium"` | no |
| <a name="input_metadata_startup_script"></a> [metadata\_startup\_script](#input\_metadata\_startup\_script) | Startup script to be executed on the compute engine instance | `string` | `null` | no |
| <a name="input_public_instance"></a> [public\_instance](#input\_public\_instance) | Add a public IP address to the instance. | `bool` | `false` | no |
| <a name="input_region"></a> [region](#input\_region) | Region where the compute engine instance will be created. | `string` | n/a | yes |
| <a name="input_server_name"></a> [server\_name](#input\_server\_name) | Name of the compute engine instance to be created | `string` | n/a | yes |
| <a name="input_subnetwork"></a> [subnetwork](#input\_subnetwork) | Subnet wherein the compute engine instance will be created | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | List of tags to be applied to the compute engine instance | `list(string)` | `[]` | no |
| <a name="input_vm_instance_image"></a> [vm\_instance\_image](#input\_vm\_instance\_image) | Image to be used for the compute engine instance | `string` | `"ubuntu-minimal-2204-jammy-v20250521"` | no |
| <a name="input_vm_metadata"></a> [vm\_metadata](#input\_vm\_metadata) | Map of metadata to pass to the compute engine instance | `map(any)` | `null` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | Zone where the compute engine instance will be created. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_id"></a> [instance\_id](#output\_instance\_id) | The ID of the compute engine instance. |
| <a name="output_public_ip"></a> [public\_ip](#output\_public\_ip) | The public IP address attached to the instance. |
