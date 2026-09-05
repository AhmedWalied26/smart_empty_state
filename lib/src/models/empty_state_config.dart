import 'package:flutter/material.dart';

class EmptyStateConfig {
  final IconData? icon;
  final String? title;
  final String? message;
  final String? actionText;
  final VoidCallback? onAction;

  const EmptyStateConfig({
    this.icon,
    this.title,
    this.message,
    this.actionText,
    this.onAction,
  });

  EmptyStateConfig copyWith({
    IconData? icon,
    String? title,
    String? message,
    String? actionText,
    VoidCallback? onAction,
  }) {
    return EmptyStateConfig(
      icon: icon ?? this.icon,
      title: title ?? this.title,
      message: message ?? this.message,
      actionText: actionText ?? this.actionText,
      onAction: onAction ?? this.onAction,
    );
  }
}
