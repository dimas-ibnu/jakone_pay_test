import 'package:flutter/material.dart';

enum ButtonSize { small, medium, large }

enum ButtonStyleType { primary, outlined }

class AppButtonHelpers {
  static EdgeInsets getButtonPadding(ButtonSize size) {
    switch (size) {
      case ButtonSize.small:
        return const EdgeInsets.symmetric(horizontal: 8, vertical: 4);
      case ButtonSize.medium:
        return const EdgeInsets.symmetric(horizontal: 16, vertical: 8);
      case ButtonSize.large:
        return const EdgeInsets.symmetric(horizontal: 24, vertical: 12);
      default:
        return const EdgeInsets.symmetric(horizontal: 16, vertical: 8);
    }
  }

  static BoxDecoration getButtonDecoration(           
      {ButtonStyleType? style,
      ButtonSize? size,
      Color? color,
      bool? disabled}) {
    switch (style) {
      case ButtonStyleType.primary:
        return BoxDecoration(
          
          borderRadius: BorderRadius.circular(8),
        );
      case ButtonStyleType.outlined:
        return BoxDecoration(
          border: Border.all(width: 1, color: color ?? Colors.black),
          borderRadius: BorderRadius.circular(8),
        );
      default:
        return BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        );
    }
  }

  static double getButtonFontSize(ButtonSize size) {
    switch (size) {
      case ButtonSize.small:
        return 12;
      case ButtonSize.medium:
        return 14;
      case ButtonSize.large:
        return 16;
      default:
        return 14;
    }
  }
}
