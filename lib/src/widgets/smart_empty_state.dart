import 'package:flutter/material.dart';

import '../defaults/empty_state_defaults.dart';
import '../enums/empty_state_type.dart';
import '../models/empty_state_options.dart';
import '../themes/smart_empty_state_theme.dart';

class SmartEmptyState extends StatelessWidget {
  final EmptyStateType type;
  final EmptyStateOptions? options;
  final VoidCallback? onAction;
  final SmartEmptyStateTheme? theme;

  const SmartEmptyState({
    super.key,
    required this.type,
    this.options,
    this.onAction,
    this.theme,
  });

  @override
  Widget build(BuildContext context) {
    final defaultOptions = EmptyStateDefaults.get(type);
    final currentOptions = defaultOptions.copyWith(
      icon: options?.icon,
      title: options?.title,
      message: options?.message,
      actionText: options?.actionText,
      onAction: options?.onAction,
    );
    final stateTheme = theme ?? const SmartEmptyStateTheme();
    final colorScheme = Theme.of(context).colorScheme;
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: stateTheme.horizontalPadding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (currentOptions.icon != null)
              Container(
                width: stateTheme.iconContainerSize,
                height: stateTheme.iconContainerSize,
                decoration: BoxDecoration(
                  color:
                      stateTheme.iconBackgroundColor ??
                      colorScheme.surfaceContainerHighest,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  currentOptions.icon,
                  size: stateTheme.iconSize,
                  color: stateTheme.iconColor ?? colorScheme.primary,
                ),
              ),
            if (currentOptions.icon != null && currentOptions.title != null)
              const SizedBox(height: 24),
            if (currentOptions.title != null)
              Text(
                currentOptions.title!,
                textAlign: TextAlign.center,
                style:
                    stateTheme.titleStyle ??
                    Theme.of(context).textTheme.titleLarge
                        ?.copyWith(fontWeight: FontWeight.w600),
              ),
            if (currentOptions.title != null && currentOptions.message != null)
              SizedBox(height: stateTheme.titleMessageSpacing),
            if (currentOptions.message != null)
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: stateTheme.maxMessageWidth,
                ),
                child: Text(
                  currentOptions.message!,
                  textAlign: TextAlign.center,
                  style:
                      stateTheme.messageStyle ??
                      Theme.of(context).textTheme.bodyMedium
                          ?.copyWith(color: colorScheme.onSurfaceVariant),
                ),
              ),
            if (currentOptions.message != null &&
                currentOptions.actionText != null)
              SizedBox(height: stateTheme.messageActionSpacing),
            if (currentOptions.actionText != null)
              ElevatedButton(
                onPressed: onAction ?? currentOptions.onAction,
                child: Text(currentOptions.actionText!),
              ),
          ],
        ),
      ),
    );
  }
}
