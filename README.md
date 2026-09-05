# Smart Empty State

A customizable and reusable empty state widget for Flutter applications.

<p align="center">
  <img
    src="https://raw.githubusercontent.com/AhmedWalied26/smart_empty_state/main/assets/demo.gif"
    alt="Smart Empty State Demo"
    width="320"
  />
</p>

<p align="center">
  <a href="https://pub.dev/packages/smart_empty_state">
    <img src="https://img.shields.io/pub/v/smart_empty_state.svg" alt="pub package">
  </a>
  <a href="https://pub.dev/packages/smart_empty_state">
    <img src="https://img.shields.io/pub/popularity/smart_empty_state" alt="popularity">
  </a>
  <a href="https://pub.dev/packages/smart_empty_state">
    <img src="https://img.shields.io/pub/likes/smart_empty_state" alt="likes">
  </a>
  <a href="https://pub.dev/packages/smart_empty_state">
    <img src="https://img.shields.io/pub/points/smart_empty_state" alt="pub points">
  </a>
</p>

`smart_empty_state` provides ready-to-use empty and error states with simple customization options for icons, titles, messages, actions, and styling.

---

## Features

* Built-in empty and error states
* No data state
* Search not found state
* No internet connection state
* Error state
* Permission denied state
* Custom icons
* Custom titles and messages
* Custom action buttons
* Custom themes
* Responsive layout
* Simple and reusable API
* Works with your existing Flutter theme

---

## Installation

Add `smart_empty_state` to your `pubspec.yaml`:

```yaml
dependencies:
  smart_empty_state: ^0.0.1
```

Then run:

```bash
flutter pub get
```

---

## Usage

Import the package:

```dart
import 'package:smart_empty_state/smart_empty_state.dart';
```

Use `SmartEmptyState` with one of the built-in state types:

```dart
SmartEmptyState(
  type: EmptyStateType.noData,
)
```

---

## Built-in States

### No Data

Display a state when there is no available data:

```dart
SmartEmptyState(
  type: EmptyStateType.noData,
)
```

### Search Not Found

Display a state when a search returns no results:

```dart
SmartEmptyState(
  type: EmptyStateType.searchNotFound,
)
```

### No Internet

Display a state when there is no internet connection:

```dart
SmartEmptyState(
  type: EmptyStateType.noInternet,
  onAction: () {
    // Retry request
  },
)
```

### Error

Display a state when something goes wrong:

```dart
SmartEmptyState(
  type: EmptyStateType.error,
  onAction: () {
    // Try again
  },
)
```

### Permission Denied

Display a state when a required permission has been denied:

```dart
SmartEmptyState(
  type: EmptyStateType.permissionDenied,
  onAction: () {
    // Request permission
  },
)
```

---

## Custom Configuration

You can customize the default state using `EmptyStateConfig`:

```dart
SmartEmptyState(
  type: EmptyStateType.noData,
  config: EmptyStateConfig(
    icon: Icons.favorite_outline,
    title: 'No Favorites',
    message: 'You have not added any favorites yet.',
    actionText: 'Explore',
  ),
  onAction: () {
    // Navigate to explore
  },
)
```

You can customize:

* Icon
* Title
* Message
* Action text

---

## Custom Action

You can define the action callback directly inside `EmptyStateConfig`:

```dart
SmartEmptyState(
  type: EmptyStateType.noInternet,
  config: EmptyStateConfig(
    actionText: 'Retry',
    onAction: () {
      // Retry request
    },
  ),
)
```

---

## Custom Theme

Customize the appearance using `SmartEmptyStateTheme`:

```dart
SmartEmptyState(
  type: EmptyStateType.noData,
  theme: SmartEmptyStateTheme(
    iconContainerSize: 120,
    iconSize: 60,
    horizontalPadding: 32,
    maxMessageWidth: 300,
  ),
)
```

### Custom Colors and Text Styles

You can also customize colors and text styles:

```dart
SmartEmptyState(
  type: EmptyStateType.noData,
  theme: SmartEmptyStateTheme(
    iconBackgroundColor: Colors.blue.shade50,
    iconColor: Colors.blue,
    titleStyle: const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
    messageStyle: const TextStyle(
      fontSize: 16,
    ),
  ),
)
```

---

## Supported Types

| Type | Description |
| --- | --- |
| `EmptyStateType.noData` | No data available |
| `EmptyStateType.searchNotFound` | Search returned no results |
| `EmptyStateType.noInternet` | No internet connection |
| `EmptyStateType.error` | Something went wrong |
| `EmptyStateType.permissionDenied` | Required permission was denied |

---

## Example

The package includes an example application demonstrating the available empty states and customization options.

You can find it inside the `example` directory.

---

## Documentation

For more information about the package API, check the generated API documentation on pub.dev.

---

## Contributing

Contributions, issues, and feature requests are welcome.

Feel free to open an issue or submit a pull request with improvements.

---

## License

This project is licensed under the terms specified in the `LICENSE` file.
