import 'package:flutter/material.dart';

class SmartEmptyStateTheme {
  final double iconContainerSize;
  final double iconSize;
  final double iconContainerRadius;
  final double horizontalPadding;
  final double maxMessageWidth;
  final double titleMessageSpacing;
  final double messageActionSpacing;

  final Color? iconBackgroundColor;
  final Color? iconColor;

  final TextStyle? titleStyle;
  final TextStyle? messageStyle;

  const SmartEmptyStateTheme({
    this.iconContainerSize = 96,
    this.iconSize = 48,
    this.iconContainerRadius = 48,
    this.horizontalPadding = 24,
    this.maxMessageWidth = 400,
    this.titleMessageSpacing = 8,
    this.messageActionSpacing = 24,
    this.iconBackgroundColor,
    this.iconColor,
    this.titleStyle,
    this.messageStyle,
  });
}
