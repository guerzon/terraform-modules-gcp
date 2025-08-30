## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |
| <a name="provider_google-beta"></a> [google-beta](#provider\_google-beta) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google-beta_google_compute_global_address.default](https://registry.terraform.io/providers/hashicorp/google-beta/latest/docs/resources/google_compute_global_address) | resource |
| [google-beta_google_service_networking_connection.default](https://registry.terraform.io/providers/hashicorp/google-beta/latest/docs/resources/google_service_networking_connection) | resource |
| [google_sql_database_instance.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_authorized_networks"></a> [authorized\_networks](#input\_authorized\_networks) | Networks or IPs authorized to access the database | <pre>list(object({<br/>    name    = string<br/>    address = string<br/>  }))</pre> | `[]` | no |
| <a name="input_availability_type"></a> [availability\_type](#input\_availability\_type) | The availability type of the Cloud SQL instance (e.g., REGIONAL, ZONAL). | `string` | `"ZONAL"` | no |
| <a name="input_backup_enabled"></a> [backup\_enabled](#input\_backup\_enabled) | Whether backups are enabled for the Cloud SQL instance. | `bool` | `false` | no |
| <a name="input_backup_location"></a> [backup\_location](#input\_backup\_location) | The location for the backups of the Cloud SQL instance. | `string` | `null` | no |
| <a name="input_backup_start_time"></a> [backup\_start\_time](#input\_backup\_start\_time) | The start time for the backup configuration in HH:MM format. | `string` | `"00:08"` | no |
| <a name="input_binary_log_enabled"></a> [binary\_log\_enabled](#input\_binary\_log\_enabled) | Whether binary logging is enabled for the Cloud SQL instance. | `bool` | `false` | no |
| <a name="input_database_version"></a> [database\_version](#input\_database\_version) | The version of the database engine (e.g., POSTGRES\_14, MYSQL\_8\_0). | `string` | n/a | yes |
| <a name="input_deletion_protection_enabled"></a> [deletion\_protection\_enabled](#input\_deletion\_protection\_enabled) | Whether deletion protection is enabled for the Cloud SQL instance. This applies not only to Terraform but to all surfaces (ex. API, gcloud cli, etc.) | `bool` | `false` | no |
| <a name="input_edition"></a> [edition](#input\_edition) | The edition of the database (e.g., ENTERPRISE or ENTERPRISE PLUS). | `string` | `"ENTERPRISE"` | no |
| <a name="input_enable_psa"></a> [enable\_psa](#input\_enable\_psa) | Enable access to private Google Cloud services | `bool` | `true` | no |
| <a name="input_instance_name"></a> [instance\_name](#input\_instance\_name) | The name of the Cloud SQL instance. | `string` | n/a | yes |
| <a name="input_ipv4_enabled"></a> [ipv4\_enabled](#input\_ipv4\_enabled) | Whether or not an IPv4 public address is assigned to this instance. | `bool` | `true` | no |
| <a name="input_machine_type"></a> [machine\_type](#input\_machine\_type) | The machine type for the Cloud SQL instance. | `string` | `"db-f1-micro"` | no |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | The name of the VPC network to which the Cloud SQL instance will be connected. | `string` | n/a | yes |
| <a name="input_query_insights_enabled"></a> [query\_insights\_enabled](#input\_query\_insights\_enabled) | Whether or not Query Insights is enabled | `bool` | `false` | no |
| <a name="input_query_string_length"></a> [query\_string\_length](#input\_query\_string\_length) | Used for query insights, maximum length of the query string stored (in bytes). | `number` | `1024` | no |
| <a name="input_region"></a> [region](#input\_region) | The region where the Cloud SQL instance will be created | `string` | n/a | yes |
| <a name="input_retain_backups_on_delete"></a> [retain\_backups\_on\_delete](#input\_retain\_backups\_on\_delete) | Whether to retain backups when the Cloud SQL instance is deleted. | `bool` | `false` | no |
| <a name="input_ssl_mode"></a> [ssl\_mode](#input\_ssl\_mode) | SSL mode enforced on the instance | `string` | `"ENCRYPTED_ONLY"` | no |
| <a name="input_storage_autoresize"></a> [storage\_autoresize](#input\_storage\_autoresize) | Automatically resize disk | `bool` | `false` | no |
| <a name="input_storage_size"></a> [storage\_size](#input\_storage\_size) | The size of the storage in GB for the Cloud SQL instance. | `number` | `50` | no |
| <a name="input_storage_size_maximum"></a> [storage\_size\_maximum](#input\_storage\_size\_maximum) | The maximum size of the storage in GB for the Cloud SQL instance. | `number` | `100` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | The zone where the Cloud SQL instance will be created. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_database_conn"></a> [database\_conn](#output\_database\_conn) | The connection name of the Cloud SQL instance. |
| <a name="output_internal_ip"></a> [internal\_ip](#output\_internal\_ip) | The private IP address of the SQL instance. |
| <a name="output_sql_instance_name"></a> [sql\_instance\_name](#output\_sql\_instance\_name) | The name of the SQL instance created. |
