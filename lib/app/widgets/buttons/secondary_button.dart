import 'package:flutter/material.dart';
import 'package:jakone_pay/app/config/theme/app_colors.dart';
import 'package:jakone_pay/app/widgets/texts/default_text.dart';

enum SecondaryButtonVariant { regular, striped, grey }

enum SecondaryButtonSize { extraSmall, small, regular, large, compact }

enum SecondaryButtonFontSize { small, regular, large }

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    Key? key,
    this.label = '',
    this.child,
    this.variant = SecondaryButtonVariant.regular,
    this.buttonSize = SecondaryButtonSize.regular,
    this.fontSize = SecondaryButtonFontSize.regular,
    this.fontWeight = DefaultTextWeight.medium,
    this.onPressed,
    this.isExpanded = false,
    this.isLoading = false,
    this.leftWidget,
    this.rightWidget,
    this.borderRadius,
    this.gradient,
  }) : super(key: key);

  final String label;
  final Widget? child;
  final SecondaryButtonVariant variant;
  final SecondaryButtonSize buttonSize;
  final SecondaryButtonFontSize fontSize;
  final DefaultTextWeight fontWeight;
  final VoidCallback? onPressed;
  final bool isExpanded;
  final bool isLoading;
  final Widget? leftWidget;
  final Widget? rightWidget;
  final double? borderRadius;
  final Gradient? gradient;

  EdgeInsetsGeometry _getPadding() {
    switch (buttonSize) {
      case SecondaryButtonSize.extraSmall:
        return const EdgeInsets.symmetric(horizontal: 16, vertical: 8);
      case SecondaryButtonSize.small:
        return const EdgeInsets.symmetric(horizontal: 16, vertical: 10);
      case SecondaryButtonSize.regular:
        return const EdgeInsets.symmetric(horizontal: 24, vertical: 12);
      case SecondaryButtonSize.large:
        return const EdgeInsets.symmetric(horizontal: 35, vertical: 17.5);
      case SecondaryButtonSize.compact:
        return const EdgeInsets.all(0);
    }
  }

  _getBackgroundColor() {
    switch (variant) {
      case SecondaryButtonVariant.regular:
        return AppColors.neutral;
      case SecondaryButtonVariant.grey:
        return AppColors.neutral;
      case SecondaryButtonVariant.striped:
        return AppColors.primarySurfaceColor;
    }
  }

  _getRippleColor() {
    switch (variant) {
      case SecondaryButtonVariant.regular:
        return AppColors.neutral200;
      case SecondaryButtonVariant.grey:
        return AppColors.neutral200;
      case SecondaryButtonVariant.striped:
        return AppColors.neutral200;
    }
  }

  _getTextColor() {
    switch (variant) {
      case SecondaryButtonVariant.regular:
        return AppColors.primaryColor;
      case SecondaryButtonVariant.grey:
        return AppColors.neutral700;
      case SecondaryButtonVariant.striped:
        return AppColors.primaryColor;
    }
  }

  _getTextType() {
    switch (fontSize) {
      case SecondaryButtonFontSize.small:
        return DefaultTextType.textSM;
      case SecondaryButtonFontSize.regular:
        return DefaultTextType.textBase;
      case SecondaryButtonFontSize.large:
        return DefaultTextType.textMD;
    }
  }

  _buildText() {
    return DefaultText(
      text: label,
      color: _getTextColor(),
      type: _getTextType(),
      weight: fontWeight,
    );
  }

  _buildLoadingChild() {
    return const SizedBox(
      height: 16,
      width: 16,
      child: CircularProgressIndicator(
        color: AppColors.neutral,
      ),
    );
  }

  _buildRegularVariant() {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        elevation: WidgetStateProperty.all<double>(0),
        shadowColor: WidgetStateProperty.all<Color>(Colors.transparent),
        overlayColor: WidgetStateProperty.all<Color>(_getRippleColor()),
        backgroundColor: WidgetStateProperty.all<Color>(_getBackgroundColor()),
        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(_getPadding()),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 4),
          ),
        ),
      ),
      child: child ??
          (isLoading
              ? _buildLoadingChild()
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (leftWidget != null) ...[
                      leftWidget!,
                      const SizedBox(width: 8)
                    ],
                    _buildText(),
                    if (rightWidget != null) ...[
                      rightWidget!,
                      const SizedBox(width: 8)
                    ],
                  ],
                )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: gradient ?? AppColors.primaryGradient,
          borderRadius: BorderRadius.circular(borderRadius ?? 4),
        ),
        width: isExpanded ? double.infinity : null,
        child: Container(
          margin: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius ?? 4),
          ),
          child: _buildRegularVariant(),
        ));
  }
}
