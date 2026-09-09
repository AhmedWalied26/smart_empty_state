import 'package:flutter/material.dart';

class EmptyStateTheme {
  final double iconContainerSize;
  final double iconSize;
  final double iconContainerRadius;
  final double buttonRadius;
  final double horizontalPadding;
  final double maxMessageWidth;
  final double titleMessageSpacing;
  final double messageActionSpacing;

  final double buttonHorizontalPadding;
  final double buttonVerticalPadding;
  final double buttonBorderWidth;
  final double buttonElevation;

  final Color? iconBackgroundColor;
  final Color? buttonBackgroundColor;
  final Color? iconColor;
  final Color buttonBorderColor;

  final TextStyle? titleStyle;
  final TextStyle? messageStyle;
  final TextStyle? actionTextStyle;

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
