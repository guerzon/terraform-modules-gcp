# Changelog

All notable changes to this project will be documented in this file.

## [1.6.0](https://github.com/guerzon/terraform-modules-gcp/compare/v1.5.0...v1.6.0) (2025-09-01)

### Features

* **computeinstance:** allow specifying the boot disk size ([6f4aa69](https://github.com/guerzon/terraform-modules-gcp/commit/6f4aa69f667b70dcd9d50397bd39d1b4bcdf595c))

## [1.5.0](https://github.com/guerzon/terraform-modules-gcp/compare/v1.4.0...v1.5.0) (2025-08-30)

### Features

* **computeinstance:** ignore attached disk changes ([6e338bc](https://github.com/guerzon/terraform-modules-gcp/commit/6e338bc82ae966ee0ebf6bac1fc14d35d76170a9))

## [1.4.0](https://github.com/guerzon/terraform-modules-gcp/compare/v1.3.1...v1.4.0) (2025-08-30)

### Features

* **computeinstance:** add instance_id output ([4cf0ec8](https://github.com/guerzon/terraform-modules-gcp/commit/4cf0ec860300217042c23a6627759e9216fb53c5))

## [1.3.1](https://github.com/guerzon/terraform-modules-gcp/compare/v1.3.0...v1.3.1) (2025-08-30)

### Bug Fixes

* remove firewall resources in computeinstance module ([85ad9d8](https://github.com/guerzon/terraform-modules-gcp/commit/85ad9d80a9c6ccccee820e167aaa62bf8801a1d8))

## [1.3.0](https://github.com/guerzon/terraform-modules-gcp/compare/v1.2.0...v1.3.0) (2025-08-10)

### Features

* **sqlinstance:** output the private IP ([d63e535](https://github.com/guerzon/terraform-modules-gcp/commit/d63e5355a65d7479ab15ae441cf8628dba83f163))

## [1.2.0](https://github.com/guerzon/terraform-modules-gcp/compare/v1.1.1...v1.2.0) (2025-08-10)

### Features

* **kubernetes:** allow binding IAM role to serviceAccount ([27592b9](https://github.com/guerzon/terraform-modules-gcp/commit/27592b913980b53333c17ece1595fef5e3ad6b50))

## [1.1.1](https://github.com/guerzon/terraform-modules-gcp/compare/v1.1.0...v1.1.1) (2025-08-09)

### Bug Fixes

* **sqlinstance:** workaround to fix issue on google_service_networking_connection during destroy ([91beedd](https://github.com/guerzon/terraform-modules-gcp/commit/91beedda01e6ae16372783e3b6966a15ce3710f1))

## [1.1.0](https://github.com/guerzon/terraform-modules-gcp/compare/v1.0.0...v1.1.0) (2025-08-09)

### Features

* **kubernetes:** carve out scopes to var ([5ad8410](https://github.com/guerzon/terraform-modules-gcp/commit/5ad84104ff2bdb7f0d0ee352ce6973182a3488f2))

## 1.0.0 (2025-07-16)

### Features

* add dnszone and dnsrecord modules ([#2](https://github.com/guerzon/terraform-modules-gcp/issues/2)) ([2e3ba54](https://github.com/guerzon/terraform-modules-gcp/commit/2e3ba54ecedf6c567407dbe50fd607a86d644c92))
* initial release version ([9b212f7](https://github.com/guerzon/terraform-modules-gcp/commit/9b212f770459e9494b6296e7d08329fe0ff7de82))
* new module computeinstance for standalone instances ([8cc940b](https://github.com/guerzon/terraform-modules-gcp/commit/8cc940bb1a9f7103dd8286e97739708b3e3bf4d5))
* new modules (ipaddress, subnets), reorg (network, computeinstance) ([be5217f](https://github.com/guerzon/terraform-modules-gcp/commit/be5217f385ba3c29ae5de799c2785b9e3e843aaf))
* new modules router and nat gateway ([#4](https://github.com/guerzon/terraform-modules-gcp/issues/4)) ([edf2f3b](https://github.com/guerzon/terraform-modules-gcp/commit/edf2f3bc3ef8eb85ccd94e8bdadd0388c738488c))

### Bug Fixes

* **kubernetes:** expose cluster endpoint and cert ([#3](https://github.com/guerzon/terraform-modules-gcp/issues/3)) ([4fecbc2](https://github.com/guerzon/terraform-modules-gcp/commit/4fecbc2c1bb9c08738c186c0c3b4c557615d3315))
