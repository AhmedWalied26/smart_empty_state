import 'package:flutter/material.dart';

/// Options used to customize an empty state.
class EmptyStateOptions {
  /// The icon displayed in the empty state.
  final IconData? icon;

  /// The title displayed in the empty state.
  final String? title;

  /// The message displayed in the empty state.
  final String? message;

  /// The text displayed on the action button.
  final String? actionText;

  /// The callback called when the action button is pressed.
  final VoidCallback? onAction;

  /// Creates options for customizing an empty state.
  const EmptyStateOptions({
    this.icon,
    this.title,
    this.message,
    this.actionText,
    this.onAction,
  });

  /// Creates a copy of these options with the given values replaced.
  EmptyStateOptions copyWith({
    IconData? icon,
    String? title,
    String? message,
    String? actionText,
    VoidCallback? onAction,
  }) {
    return EmptyStateOptions(
      icon: icon ?? this.icon,
      title: title ?? this.title,
      message: message ?? this.message,
      actionText: actionText ?? this.actionText,
      onAction: onAction ?? this.onAction,
    );
  }
}
