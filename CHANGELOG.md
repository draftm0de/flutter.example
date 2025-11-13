# Changelog

All notable changes to this project will be documented in this file. The format loosely follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/) and versions adhere to semantic versioning.

## [Unreleased]
### Changed
- Clarify the README around how `DraftModeExamplePageWidget` is consumed via `package:draftmode/example.dart` and why assets must specify the package name.
- Tighten the top-level `.gitignore` so generated Flutter artifacts (`pubspec.lock`, build outputs, Pods, etc.) stay out of version control.

### Fixed
- Document asset usage expectations and ensure the header logo loads via the package bundle when embedded downstream.

## [0.1.0] - 2025-11-13
### Added
- Initial Cupertino `DraftModeExamplePageWidget` scaffold with hero header and child injection slots.
- Asset bundle with `assets/images/logo.png` and pubspec wiring.
- Widget test covering the header copy, navigation title, and injected children.
- Developer tooling: `flutter.init.sh`, contributor guide (`AGENTS.md`), and project README/Changelog documentation.
