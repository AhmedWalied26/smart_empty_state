import 'package:flutter/material.dart';

/// Defines the visual style of an empty state.
class EmptyStateTheme {
  /// The size of the container around the icon.
  final double iconContainerSize;

  /// The size of the icon.
  final double iconSize;

  /// The radius of the icon container.
  final double iconContainerRadius;

  /// The radius of the action button.
  final double buttonRadius;

  /// The horizontal padding around the empty state.
  final double horizontalPadding;

  /// The maximum width of the message.
  final double maxMessageWidth;

  /// The space between the title and message.
  final double titleMessageSpacing;

  /// The space between the message and action button.
  final double messageActionSpacing;

  /// The horizontal padding inside the action button.
  final double buttonHorizontalPadding;

  /// The vertical padding inside the action button.
  final double buttonVerticalPadding;

  /// The border width of the action button.
  final double buttonBorderWidth;

  /// The elevation of the action button.
  final double buttonElevation;

  /// The background color of the icon container.
  final Color? iconBackgroundColor;

  /// The background color of the action button.
  final Color? buttonBackgroundColor;

  /// The color of the icon.
  final Color? iconColor;

  /// The border color of the action button.
  final Color buttonBorderColor;

  /// The text style of the title.
  final TextStyle? titleStyle;

  /// The text style of the message.
  final TextStyle? messageStyle;

  /// The text style of the action button.
  final TextStyle? actionTextStyle;

  /// Creates a theme for customizing the appearance of an empty state.
  const EmptyStateTheme({
    this.iconContainerSize = 96,
    this.iconSize = 48,
    this.iconContainerRadius = 48,
    this.buttonRadius = 48,
    this.horizontalPadding = 24,
    this.buttonHorizontalPadding = 20,
    this.buttonVerticalPadding = 12,
    this.maxMessageWidth = 400,
    this.titleMessageSpacing = 8,
    this.messageActionSpacing = 24,
    this.iconBackgroundColor,
    this.buttonBackgroundColor,
    this.iconColor,
    this.titleStyle,
    this.messageStyle,
    this.actionTextStyle,
    this.buttonBorderColor = Colors.transparent,
    this.buttonBorderWidth = 1,
    this.buttonElevation = 1,
  });
}
