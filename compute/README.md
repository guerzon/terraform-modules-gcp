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
| [google-beta_google_service_directory_endpoint.backend_endpoint](https://registry.terraform.io/providers/hashicorp/google-beta/latest/docs/resources/google_service_directory_endpoint) | resource |
| [google-beta_google_service_directory_endpoint.frontend_endpoint](https://registry.terraform.io/providers/hashicorp/google-beta/latest/docs/resources/google_service_directory_endpoint) | resource |
| [google-beta_google_service_directory_namespace.default](https://registry.terraform.io/providers/hashicorp/google-beta/latest/docs/resources/google_service_directory_namespace) | resource |
| [google-beta_google_service_directory_service.default](https://registry.terraform.io/providers/hashicorp/google-beta/latest/docs/resources/google_service_directory_service) | resource |
| [google_compute_instance.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance) | resource |
| [google_compute_instance_group.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance_group) | resource |
| [google_compute_instance_group_membership.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance_group_membership) | resource |
| [google_service_account.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account) | resource |
| [google-beta_google_project.project](https://registry.terraform.io/providers/hashicorp/google-beta/latest/docs/data-sources/google_project) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_backend_port"></a> [backend\_port](#input\_backend\_port) | Port number of the backend API application | `number` | n/a | yes |
| <a name="input_backend_port_name"></a> [backend\_port\_name](#input\_backend\_port\_name) | Port name of the backend API application | `string` | n/a | yes |
| <a name="input_compute_engine_sa_name"></a> [compute\_engine\_sa\_name](#input\_compute\_engine\_sa\_name) | Name of the service account to be used by the compute engine instance | `string` | n/a | yes |
| <a name="input_compute_engine_sa_scopes"></a> [compute\_engine\_sa\_scopes](#input\_compute\_engine\_sa\_scopes) | List of scopes for the compute engine service account | `list(any)` | <pre>[<br/>  "https://www.googleapis.com/auth/devstorage.read_only",<br/>  "https://www.googleapis.com/auth/logging.write",<br/>  "https://www.googleapis.com/auth/monitoring.write",<br/>  "https://www.googleapis.com/auth/service.management.readonly",<br/>  "https://www.googleapis.com/auth/servicecontrol",<br/>  "https://www.googleapis.com/auth/trace.append"<br/>]</pre> | no |
| <a name="input_disk_auto_delete"></a> [disk\_auto\_delete](#input\_disk\_auto\_delete) | Whether the disk will be deleted when the VM is deleted | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment for which the compute engine instance is being created (e.g., non-production, production) | `string` | n/a | yes |
| <a name="input_frontend_port"></a> [frontend\_port](#input\_frontend\_port) | Port number of the NodeJS frontend application | `number` | n/a | yes |
| <a name="input_frontend_port_name"></a> [frontend\_port\_name](#input\_frontend\_port\_name) | Port name of the NodeJS frontend application | `string` | n/a | yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Type of the compute engine instance | `string` | `"e2-medium"` | no |
| <a name="input_ip"></a> [ip](#input\_ip) | Static IP address for the main instance | `string` | n/a | yes |
| <a name="input_metadata_startup_script"></a> [metadata\_startup\_script](#input\_metadata\_startup\_script) | Startup script to be executed on the compute engine instance | `string` | `"#!/bin/bash\nset +x\necho \"Running startup script for VM\"\necho \"Installing Docker\"\nsudo apt-get update\nsudo apt-get install -y ca-certificates curl\nsudo install -m 0755 -d /etc/apt/keyrings\nsudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc\nsudo chmod a+r /etc/apt/keyrings/docker.asc\necho \"deb [arch=amd64 signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu jammy stable\" | \\\n  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null\nsudo apt-get update\nsudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin\necho \"Done installing Docker\"\necho \"Setting up the app user\"\nsudo useradd app\nsudo mkdir /home/app && sudo chown -R app:app /home/app\nsudo usermod -s /bin/bash -d /home/app app\nsudo usermod -aG docker app\nsudo mkdir /home/app/.ssh && sudo chmod 0700 /home/app/.ssh\necho \"ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDG6CsZObJyoRt8qt1A6TUK/TUjMrUHC6XhDdJL659jDvLN6lTa3ce+bzy5spxaSNzyXLUt3eeSqRfMCKSnHQ9tW/AnnIoFcpyox/YUKxhnK9iG+46ujXjMtaMU1NEMrIf+tldmUijwsop+5k8UArzp0lZ+fznI6EhBhkZtqerYGOJmqEy0kHyDo/uLMKhtb6pEIedARdr1FggBjAXjXVP3nb6XfmhbeIzZvdgT6nFvX+lI/w0NSyklSs+DQwGHPbYZUP7vFx+OFla9X985hdLWeqdgoMsszK6X6/4L0oho0lRTrLlv8hNfWLpo8uy10RGda4GrpkaPBv+kv74QNUDyioEWvSJugq2l8EMYLtLEfi1MQ1amtQuFZC4lUh7zGDQ6psvb+Xz/zTCOBITeid3ZwSOAkcTmlmIR5rQvKfbKhHvrnRL5fBCDpFaXK/3GBJMkaFcSvK9Yl4npRWzjEkUM8N9FiqIh0QwKQEAh8L5lToTSWwL9nYQs3hT9RlU4wfM= app key pair\" \\\n  | sudo tee /home/app/.ssh/authorized_keys\nsudo mkdir /home/app/secrets && sudo chmod 0700 /home/app/secrets\necho ewogICJ0eXBlIjogInNlcnZpY2VfYWNjb3VudCIsCiAgInByb2plY3RfaWQiOiAibm9uLXByb2R1Y3Rpb24tNDYwNjE0IiwKICAicHJpdmF0ZV9rZXlfaWQiOiAiN2E3NzI2MjE0ZmRjYzFjYjc5MGJlZjBhOTM4NTFiMDE4M2YzYzUzMyIsCiAgInByaXZhdGVfa2V5IjogIi0tLS0tQkVHSU4gUFJJVkFURSBLRVktLS0tLVxuTUlJRXZRSUJBREFOQmdrcWhraUc5dzBCQVFFRkFBU0NCS2N3Z2dTakFnRUFBb0lCQVFEM09GQ1JEU3RIa2VDelxuSkROa2Z0U3FlN3dENzd3K2MzRzQ5YXJlSkUxKzJEb0hEZmNSLzRNYlFBUzdtMlBwNUNVQnlld2tzeG10K3o0NFxuLy9STlhmWDdlTmhzd3liZVBKSzd6Sk1iTUQ3VWovTmFqK2pZQ0hnSXZBNGFxRllCMGZQMmJtZkVreU5ZRTNPOVxuMFVxTU1kREZrK2ttZjY5S3VmcjBzdk5ITlZmL1RtVWtjY0NWNmJKMnlxN3BrZ2E1TDhXNDB5RGg1VEx1ZklGRFxuSm95dFBaQktyWVVSNUFPc090b0laVnp4YklvU2Q0M2ZuaWdjbHpQZzdpaE1tbkJQS1NNdnkraGJyQWc5SHRQTFxuN1pIem0wL2J0Y21mR2xkR2JPa1dUanhXNHZmdEdZOWlvWmNXOXorZW9QTTdvdXpvUlVkaXJBcVNnY2VGR3Q1UlxudUxsRFNPODNBZ01CQUFFQ2dnRUFFY1hYS081bzc1N0JxQzlRa0lkN3MzdnN3dDJ2eTArU1cra3hiUUh3SGsvZVxuTUJhbGJnSlFBeHdCbXhrclFDdmFLenhBZ1V6czZqQ1hReExIbGU1TTJsVFFQbFZ6VEdQUGFyZmsxWDRNN2t3aFxuQXlBNGJadUNRYUovWXhRNkJxeDQzUDBIOGI1Z09wcy9aV1NQOXU4MzRwUmxIUkx0MzdIcUpFQmZNLzNXUXpEVFxuOEd3aWhNcmcwZHczMmRKcEd1ZHBqRjZYZXdwK0FGdHBkUzlCbFBKQ011V1N6a1AzTStjNWl6ejBRc2hWOUhxWVxuZzBXRThLTFJJYWZMSkxyRlUzcVV4dnBwNWx1REJTVnNYYWh2WDljMW9pS2dRaHhKWXJCWW4yWWtHaUR4UUJOWlxucTVoU1R3YXdhQ0xOcTdKbG52aXZaYkFsTmRQTkd2WEJYTUUwRG5Dd0NRS0JnUUQvcVNXZ1IvK291RnFTbXB1L1xudUFMU0dOZ1hEVzBVZy9Zc2J2RXA2ekxlWnA4V2IyYTZ4bG5KLzltTDdWS0YzY0Q1aVk3ZFVPanE2dHRPajJXUlxuWnhlSkNZUkJoMVdLY0dQdmlhaW5aUWZTY1hWU0lRTVAwUHg3NEttM0dReW45Ly9ZUlN2ekpveUhmWWlrY3BJeFxudmkxOVlxMU5GRVYyWkJSMy90ZENvOUN5dndLQmdRRDNqRXpjNTlMM2VXNGtucHBtam1SRWRkWUxXQmo1eG5icFxuQmRVQ0I4b2pDUXMzSTkrditwV3o0Z3pBK1d0bHhsUWY1emJkSTQzT0kxMjFSMm1naXhzN2szUzZzNDBvd2JQOVxuakNZTlYvYjZuSlJJMVQzM1NlQ0F5TGFyR1RaOStuSnVZL1cycW5YamhvQUVVYS80V2xwaVIvV3IrTFRWL2N2V1xuQ1VlN2ZDTjVpUUtCZ1FETXc2TDVMdkZiSnR5VUV2U3ZweWZMTWs3UWw5WkgyakZ2QVNSeTJJZ1RqTW5hWkRzNVxuV09oTlczZllGS3BGd1lodjFIYnlWMzFWdWVrUWtOVmVrZDFOeXF0OCtISFF3WmVwSU81TnRDT0JyNUd4eC9MMVxuMWdLRERUdWhCSlVZYXc4bEhySEd1NWRPWllMdGd6NElUVE9OKzF5bUlaaEk3SHRnYUdIc1k5d2hiUUtCZ0h2alxucElnZUlYQW5QcDluSFFEY25JUENzWWZsNUVJRk9IZXdxb1VrbnQ1ZjVWUUlTU2ZLY21lZlp5Q2c4MFh4TnlMc1xuVllIaERGUXhVUEdydHNwWk5CemgxRmFvQzZwdEh3Wnl3SXlIREowcUJmQlpnSFNsYlkwbVpuMUUxZ2ZBY3NxYVxuamx1SC9nNEx2ei9xSGZaZVNjUE1IY0NlYk9wMzVTN09ZQzhObHJkNUFvR0FkKzVXN1Z4VkZoYUtKMlBsQmJzdVxuL1VHRExoemQ5UG1pa3UwTTRKcHA1QS9lRUltZmFSVVhwMUIrSDloUEdCS2pxMndKN1BKRFdVN2tSbHc2WC9LK1xuV3Bid3M0RXdWQ1hjNE9tQ0dYZzBnOUhVbTRWSXVoa01MREMzS3FtMmZURkY5WmFQY2VheFpKU3RzZ3BxdmFPSlxucnhnRERESFF6UWFKNUxMNlZoY1NxaUE9XG4tLS0tLUVORCBQUklWQVRFIEtFWS0tLS0tXG4iLAogICJjbGllbnRfZW1haWwiOiAiZ2l0aHViLWRvY2tlci1zZXJ2aWNlYWNjb3VudEBub24tcHJvZHVjdGlvbi00NjA2MTQuaWFtLmdzZXJ2aWNlYWNjb3VudC5jb20iLAogICJjbGllbnRfaWQiOiAiMTE3NTc2OTE3MjIxNTcxODYyMzc5IiwKICAiYXV0aF91cmkiOiAiaHR0cHM6Ly9hY2NvdW50cy5nb29nbGUuY29tL28vb2F1dGgyL2F1dGgiLAogICJ0b2tlbl91cmkiOiAiaHR0cHM6Ly9vYXV0aDIuZ29vZ2xlYXBpcy5jb20vdG9rZW4iLAogICJhdXRoX3Byb3ZpZGVyX3g1MDlfY2VydF91cmwiOiAiaHR0cHM6Ly93d3cuZ29vZ2xlYXBpcy5jb20vb2F1dGgyL3YxL2NlcnRzIiwKICAiY2xpZW50X3g1MDlfY2VydF91cmwiOiAiaHR0cHM6Ly93d3cuZ29vZ2xlYXBpcy5jb20vcm9ib3QvdjEvbWV0YWRhdGEveDUwOS9naXRodWItZG9ja2VyLXNlcnZpY2VhY2NvdW50JTQwbm9uLXByb2R1Y3Rpb24tNDYwNjE0LmlhbS5nc2VydmljZWFjY291bnQuY29tIiwKICAidW5pdmVyc2VfZG9tYWluIjogImdvb2dsZWFwaXMuY29tIgp9Cg== \\\n  | base64 -d | sudo tee /home/app/secrets/service-key.json\nsudo chown -R app:app /home/app\necho \"Service account key added to /home/app/secrets/service-key.json\"\necho \"Startup script completed\"\n"` | no |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | Self ID of the VPC network | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Region where service directory can find the compute engine instances | `string` | `"asia-east1"` | no |
| <a name="input_server_name"></a> [server\_name](#input\_server\_name) | Name of the compute engine instance to be created | `string` | n/a | yes |
| <a name="input_subnetwork"></a> [subnetwork](#input\_subnetwork) | Name of the subnet wherein the compute engine instance will be created | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | List of tags to be applied to the compute engine instance | `list(string)` | `[]` | no |
| <a name="input_vm_instance_image"></a> [vm\_instance\_image](#input\_vm\_instance\_image) | Image to be used for the compute engine instance | `string` | `"ubuntu-minimal-2204-jammy-v20250521"` | no |
| <a name="input_vm_metadata"></a> [vm\_metadata](#input\_vm\_metadata) | Map of metadata to pass to the compute engine instance | `map(any)` | `null` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | Zone suffix where the compute engine instance will be created | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_group"></a> [instance\_group](#output\_instance\_group) | Instance group for the main backend and frontend services |
