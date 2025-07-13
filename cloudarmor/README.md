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
| [google_compute_security_policy.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_security_policy) | resource |
| [google_compute_security_policy_rule.deny_non_ph_origins](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_security_policy_rule) | resource |
| [google_compute_security_policy_rule.preconfigured_cve_canary](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_security_policy_rule) | resource |
| [google_compute_security_policy_rule.preconfigured_java](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_security_policy_rule) | resource |
| [google_compute_security_policy_rule.preconfigured_lfi](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_security_policy_rule) | resource |
| [google_compute_security_policy_rule.preconfigured_nodejs](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_security_policy_rule) | resource |
| [google_compute_security_policy_rule.preconfigured_protocol_attack](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_security_policy_rule) | resource |
| [google_compute_security_policy_rule.preconfigured_rce](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_security_policy_rule) | resource |
| [google_compute_security_policy_rule.preconfigured_rfi](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_security_policy_rule) | resource |
| [google_compute_security_policy_rule.preconfigured_scanner_detection](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_security_policy_rule) | resource |
| [google_compute_security_policy_rule.preconfigured_session_fixation](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_security_policy_rule) | resource |
| [google_compute_security_policy_rule.preconfigured_sqli](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_security_policy_rule) | resource |
| [google_compute_security_policy_rule.preconfigured_xss](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_security_policy_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | Environment for which the compute engine instance is being created (e.g., non-production, production) | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloud_armor_policy_id"></a> [cloud\_armor\_policy\_id](#output\_cloud\_armor\_policy\_id) | The ID of the Cloud Armor policy |
