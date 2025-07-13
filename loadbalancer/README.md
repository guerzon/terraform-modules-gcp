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
| [google_compute_backend_service.backend](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service) | resource |
| [google_compute_backend_service.backend_backup](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service) | resource |
| [google_compute_backend_service.frontend](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service) | resource |
| [google_compute_backend_service.frontend_backup](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service) | resource |
| [google_compute_firewall.main_proxy_only_subnet](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |
| [google_compute_global_address.loadbalancer](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_global_address) | resource |
| [google_compute_global_forwarding_rule.frontend_http](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_global_forwarding_rule) | resource |
| [google_compute_global_forwarding_rule.frontend_https](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_global_forwarding_rule) | resource |
| [google_compute_health_check.backend](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_health_check) | resource |
| [google_compute_health_check.frontend](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_health_check) | resource |
| [google_compute_ssl_policy.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_ssl_policy) | resource |
| [google_compute_subnetwork.backup_proxyonly_subnet](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork) | resource |
| [google_compute_subnetwork.main_proxyonly_subnet](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork) | resource |
| [google_compute_target_http_proxy.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_target_http_proxy) | resource |
| [google_compute_target_https_proxy.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_target_https_proxy) | resource |
| [google_compute_url_map.load_balancer_http](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map) | resource |
| [google_compute_url_map.load_balancer_https](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api_url"></a> [api\_url](#input\_api\_url) | API URL for the load balancer | `string` | n/a | yes |
| <a name="input_backend_port"></a> [backend\_port](#input\_backend\_port) | Port number of the backend API application | `number` | n/a | yes |
| <a name="input_backend_port_name"></a> [backend\_port\_name](#input\_backend\_port\_name) | Port name of the backend API application | `string` | n/a | yes |
| <a name="input_base_url"></a> [base\_url](#input\_base\_url) | API URL for the load balancer | `string` | n/a | yes |
| <a name="input_build_backup"></a> [build\_backup](#input\_build\_backup) | Flag to indicate whether a backup instance is available and should be added to the ALB. | `bool` | `false` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment for which the compute engine instance is being created (e.g., non-production, production) | `string` | n/a | yes |
| <a name="input_frontend_port"></a> [frontend\_port](#input\_frontend\_port) | Port number of the NodeJS frontend application | `number` | n/a | yes |
| <a name="input_frontend_port_name"></a> [frontend\_port\_name](#input\_frontend\_port\_name) | Port name of the NodeJS frontend application | `string` | n/a | yes |
| <a name="input_instancegroups"></a> [instancegroups](#input\_instancegroups) | Instance group for the load balancer | <pre>map(object({<br/>    main   = string<br/>    backup = string<br/>  }))</pre> | n/a | yes |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | Name of the VPC network where the compute engine instance will be created | `string` | n/a | yes |
| <a name="input_proxyonly_subnets"></a> [proxyonly\_subnets](#input\_proxyonly\_subnets) | Name, region, and CIDR range of the main proxyonly subnetwork to be created. The key should be main or backup. When adding the backup subnet, make sure the flag build\_backup is set to true. | <pre>map(object({<br/>    name       = string<br/>    region     = string<br/>    cidr_range = string<br/>  }))</pre> | n/a | yes |
| <a name="input_security_policy_id"></a> [security\_policy\_id](#input\_security\_policy\_id) | The ID of the Cloud Armor security policy to be applied to the load balancer | `string` | n/a | yes |
| <a name="input_server_tags"></a> [server\_tags](#input\_server\_tags) | List of tags applied on the servers | `list(string)` | n/a | yes |
| <a name="input_ssl_certificates"></a> [ssl\_certificates](#input\_ssl\_certificates) | List of one or more SSL certificate self-links to use for the HTTPs Load Balancer | `list(string)` | `null` | no |
| <a name="input_ssl_min_tls_version"></a> [ssl\_min\_tls\_version](#input\_ssl\_min\_tls\_version) | Minimum TLS version (e.g. TLS\_1\_2) | `string` | `"TLS_1_2"` | no |
| <a name="input_ssl_policy_profile"></a> [ssl\_policy\_profile](#input\_ssl\_policy\_profile) | The SSL policy profile | `string` | `"RESTRICTED"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_load_balancer_ip"></a> [load\_balancer\_ip](#output\_load\_balancer\_ip) | The IP address of the external load balancer |
