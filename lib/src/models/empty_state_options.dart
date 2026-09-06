import 'package:flutter/material.dart';

class EmptyStateOptions {
  final IconData? icon;
  final String? title;
  final String? message;
  final String? actionText;
  final VoidCallback? onAction;

  const EmptyStateOptions({
    this.icon,
    this.title,
    this.message,
    this.actionText,
    this.onAction,
  });

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
