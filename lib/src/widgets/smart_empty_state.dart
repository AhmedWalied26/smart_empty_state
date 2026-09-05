import 'package:flutter/material.dart';

import '../config/empty_state_defaults.dart';
import '../enums/empty_state_type.dart';
import '../models/empty_state_config.dart';
import '../themes/smart_empty_state_theme.dart';

class SmartEmptyState extends StatelessWidget {
  final EmptyStateType type;
  final EmptyStateConfig? config;
  final VoidCallback? onAction;
  final SmartEmptyStateTheme? theme;

  const SmartEmptyState({
    super.key,
    required this.type,
    this.config,
    this.onAction,
    this.theme,
  });

  @override
  Widget build(BuildContext context) {
    final defaultConfig = EmptyStateDefaults.get(type);

    final currentConfig = defaultConfig.copyWith(
      icon: config?.icon,
      title: config?.title,
      message: config?.message,
      actionText: config?.actionText,
      onAction: config?.onAction,
    );

    final emptyStateTheme = theme ?? const SmartEmptyStateTheme();

    final children = <Widget>[];

    if (currentConfig.icon != null) {
      children.add(_buildIcon(context, currentConfig, emptyStateTheme));
    }

    if (currentConfig.title != null) {
      if (children.isNotEmpty) {
        children.add(const SizedBox(height: 24));
      }

      children.add(_buildTitle(context, currentConfig, emptyStateTheme));
    }

    if (currentConfig.message != null) {
      if (children.isNotEmpty) {
        children.add(SizedBox(height: emptyStateTheme.titleMessageSpacing));
      }

      children.add(_buildMessage(context, currentConfig, emptyStateTheme));
    }

    if (currentConfig.actionText != null) {
      if (children.isNotEmpty) {
        children.add(SizedBox(height: emptyStateTheme.messageActionSpacing));
      }

      children.add(_buildAction(context, currentConfig));
    }

    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: emptyStateTheme.horizontalPadding,
        ),
        child: Column(mainAxisSize: MainAxisSize.min, children: children),
      ),
    );
  }

  Widget _buildIcon(
    BuildContext context,
    EmptyStateConfig config,
    SmartEmptyStateTheme theme,
  ) {
    if (config.icon == null) {
      return const SizedBox.shrink();
    }

    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      width: theme.iconContainerSize,
      height: theme.iconContainerSize,
      decoration: BoxDecoration(
        color: theme.iconBackgroundColor ?? colorScheme.surfaceContainerHighest,
        shape: BoxShape.circle,
      ),
      child: Icon(
        config.icon,
        size: theme.iconSize,
        color: theme.iconColor ?? colorScheme.primary,
      ),
    );
  }

  Widget _buildTitle(
    BuildContext context,
    EmptyStateConfig config,
    SmartEmptyStateTheme theme,
  ) {
    if (config.title == null) {
      return const SizedBox.shrink();
    }

    return Text(
      config.title!,
      textAlign: TextAlign.center,
      style:
          theme.titleStyle ??
          Theme.of(context).textTheme.titleLarge
              ?.copyWith(fontWeight: FontWeight.w600),
    );
  }

  Widget _buildMessage(
    BuildContext context,
    EmptyStateConfig config,
    SmartEmptyStateTheme theme,
  ) {
    if (config.message == null) {
      return const SizedBox.shrink();
    }

    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: theme.maxMessageWidth),
      child: Text(
        config.message!,
        textAlign: TextAlign.center,
        style:
            theme.messageStyle ??
            Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
      ),
    );
  }

  Widget _buildAction(BuildContext context, EmptyStateConfig config) {
    if (config.actionText == null) {
      return const SizedBox.shrink();
    }

    return ElevatedButton(
      onPressed: onAction ?? config.onAction,
      child: Text(config.actionText!),
    );
  }
}
