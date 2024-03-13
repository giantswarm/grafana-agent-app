# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

- Enable or disable the entire chart by setting the `enabled` property.

## [0.4.1] - 2024-02-13

### Fixed

- Fix CiliumNetworkPolicy port from 3101 to 8080 so prometheus can scrape the grafana-agent.

## [0.4.0] - 2024-01-08

### Added

- Add vintage clusters specific resources in helm chart when running with elevated permissions.

## [0.3.2] - 2024-01-02

### Fixed

- Update `listen-port` to 8080 to avoid connection issues as pods are running with non-root user.

## [0.3.1] - 2023-12-20

### Changed

- Configure `gsoci.azurecr.io` as the default container image registry.

## [0.3.0] - 2023-11-08

## [0.2.1] - 2023-10-26

### Added

- Add grafana-agent extra secret in the chart to store logging write credentials.
- Add CiliumNetworkPolicy to be able to communicate from WC to MC.

### Changed

- Upgrade upstream chart to 0.27.0 and agent to 0.37.0.

## [0.2.0] - 2023-10-03

### Changed

- Upgrade upstream chart to 0.25.0 and agent to 0.36.2.
- Add kyverno policy exception.

## [0.1.0] - 2023-06-12

- Initial version

[Unreleased]: https://github.com/giantswarm/grafana-agent-app/compare/v0.4.1...HEAD
[0.4.1]: https://github.com/giantswarm/grafana-agent-app/compare/v0.4.0...v0.4.1
[0.4.0]: https://github.com/giantswarm/grafana-agent-app/compare/v0.3.2...v0.4.0
[0.3.2]: https://github.com/giantswarm/grafana-agent-app/compare/v0.3.1...v0.3.2
[0.3.1]: https://github.com/giantswarm/grafana-agent-app/compare/v0.3.0...v0.3.1
[0.3.0]: https://github.com/giantswarm/grafana-agent-app/compare/v0.2.1...v0.3.0
[0.2.1]: https://github.com/giantswarm/grafana-agent-app/compare/v0.2.0...v0.2.1
[0.2.0]: https://github.com/giantswarm/grafana-agent-app/compare/v0.1.0...v0.2.0
[0.1.0]: https://github.com/giantswarm/grafana-agent-app/releases/tag/v0.1.0
