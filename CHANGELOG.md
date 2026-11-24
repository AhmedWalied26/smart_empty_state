# Changelog

All notable changes to this project will be documented in this file.

## 0.2.0

* Migrated from the deprecated `package:flutter/material.dart` to the standalone `package:material_ui/material_ui.dart`, following Flutter 3.50.
* Added `material_ui` as a dependency (`^1.0.0`).
* Raised the minimum Flutter version to 3.47.0, the first release compatible with `material_ui`.
* No changes to the public API.

## 0.1.1

* Added button customization options to `EmptyStateTheme`.
* Renamed `SmartEmptyStateTheme` to `EmptyStateTheme`.
* Updated the package API and documentation to use `EmptyStateTheme`.

## 0.1.0

### Breaking Changes

* Renamed `EmptyStateConfig` to `EmptyStateOptions`.
* Renamed the `SmartEmptyState` parameter from `config` to `options`.

### Improvements

* Updated documentation and examples to use `EmptyStateOptions`.

## 0.0.1

### Initial Release

* Added customizable empty state widget.
* Added built-in empty state types:

  * No data
  * Search not found
  * No internet connection
  * Error
  * Permission denied
* Added custom configurations for icons, titles, messages, and actions.
* Added customizable theme and styling options.
* Added responsive layout support.
