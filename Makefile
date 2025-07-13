lint:
	tflint --recursive --only=terraform_deprecated_interpolation --only=terraform_deprecated_index --only=terraform_unused_declarations --only=terraform_comment_syntax --only=terraform_documented_outputs --only=terraform_documented_variables --only=terraform_typed_variables --only=terraform_module_pinned_source --only=terraform_naming_convention --only=terraform_standard_module_structure --only=terraform_workspace_remote

fmt:
	terraform fmt -recursive -diff .

docs:
	for m in certificate cloudarmor database dnszone kubernetes loadbalancer natgateway router compute dnsrecord firewall network registry sqlinstance; do \
	cd $$m && docker run --rm --volume "$$(pwd):/terraform-docs" -u $$(id -u) quay.io/terraform-docs/terraform-docs:0.20.0 markdown /terraform-docs > README.md; \
	echo "[+] Done generating docs for $$m\n"; \
	cd ../; \
	done

.SILENT: docs

.PHONY: lint fmt docs