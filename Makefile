lint:
	tflint --recursive --only=terraform_deprecated_interpolation --only=terraform_deprecated_index --only=terraform_unused_declarations --only=terraform_comment_syntax --only=terraform_documented_outputs --only=terraform_documented_variables --only=terraform_typed_variables --only=terraform_module_pinned_source --only=terraform_naming_convention --only=terraform_standard_module_structure --only=terraform_workspace_remote

fmt:
	terraform fmt -recursive -diff .

.PHONY: lint