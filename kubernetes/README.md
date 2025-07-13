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
| [google_container_cluster.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/container_cluster) | resource |
| [google_container_node_pool.preemptible](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/container_node_pool) | resource |
| [google_service_account.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_description"></a> [cluster\_description](#input\_cluster\_description) | Optional cluster description | `string` | `null` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Name for the GKE cluster | `string` | n/a | yes |
| <a name="input_deletion_protection"></a> [deletion\_protection](#input\_deletion\_protection) | Deletion protection | `bool` | `true` | no |
| <a name="input_enable_private_nodes"></a> [enable\_private\_nodes](#input\_enable\_private\_nodes) | Enable private nodes | `bool` | `false` | no |
| <a name="input_location"></a> [location](#input\_location) | Location of the GKE cluster. Specify a region for a regional cluster or a zone for a zonal cluster. | `string` | n/a | yes |
| <a name="input_network"></a> [network](#input\_network) | VPC where this cluster will be located | `string` | n/a | yes |
| <a name="input_node_disk_size"></a> [node\_disk\_size](#input\_node\_disk\_size) | Disk size of the cluster nodes | `number` | `20` | no |
| <a name="input_node_locations"></a> [node\_locations](#input\_node\_locations) | List of zones where the cluster nodes will be located in | `list(string)` | `null` | no |
| <a name="input_node_pool_count"></a> [node\_pool\_count](#input\_node\_pool\_count) | Count of node instances | `number` | `1` | no |
| <a name="input_node_pool_size"></a> [node\_pool\_size](#input\_node\_pool\_size) | Instance size for the node pool instances | `string` | `"e2-standard-2"` | no |
| <a name="input_node_pool_type"></a> [node\_pool\_type](#input\_node\_pool\_type) | Node pool type, either 'preemptible' or 'permanent'. | `string` | n/a | yes |
| <a name="input_subnet"></a> [subnet](#input\_subnet) | Subnet where this cluster will be located | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_ca_certificate"></a> [cluster\_ca\_certificate](#output\_cluster\_ca\_certificate) | Cluster CA certificate |
| <a name="output_cluster_endpoint"></a> [cluster\_endpoint](#output\_cluster\_endpoint) | The Kubernetes endpoint. |
| <a name="output_cluster_id"></a> [cluster\_id](#output\_cluster\_id) | The Kubernetes cluster ID. |
