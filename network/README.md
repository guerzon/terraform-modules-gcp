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
| [google_compute_network.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network) | resource |
| [google_compute_subnetwork.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_create_subnetworks"></a> [auto\_create\_subnetworks](#input\_auto\_create\_subnetworks) | Auto-create subnets or not | `bool` | `false` | no |
| <a name="input_create_ip"></a> [create\_ip](#input\_create\_ip) | Create an IP address to attach to the VM | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment for which the compute engine instance is being created (e.g., non-production, production) | `string` | n/a | yes |
| <a name="input_routing_mode"></a> [routing\_mode](#input\_routing\_mode) | Routing mode | `string` | `"REGIONAL"` | no |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | Name, region, and CIDR range of the main subnetwork to be created. The key should be main or backup. When adding the backup subnet, make sure the flag build\_backup is set to true. | <pre>map(object({<br/>    name       = string<br/>    region     = string<br/>    cidr_range = string<br/>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_network"></a> [network](#output\_network) | The full self link of the created network |
| <a name="output_network_name"></a> [network\_name](#output\_network\_name) | The name of the VPC network |
| <a name="output_static_ip"></a> [static\_ip](#output\_static\_ip) | The static IP address for the main static ip |
| <a name="output_subnetwork"></a> [subnetwork](#output\_subnetwork) | The name of the created main subnetwork |
