import 'package:flutter/material.dart';
import 'package:jakone_pay/app/config/theme/app_colors.dart';
import 'package:jakone_pay/app/widgets/texts/default_text.dart';

enum PrimaryButtonVariant { regular, grey, neutralGrey }

enum PrimaryButtonSize { extraSmall, small, regular, large }

enum PrimaryButtonFontSize { extraSmall, small, regular, large }

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.label,
    this.variant = PrimaryButtonVariant.regular,
    this.buttonSize = PrimaryButtonSize.regular,
    this.fontSize = PrimaryButtonFontSize.regular,
    this.fontWeight = DefaultTextWeight.medium,
    this.onPressed,
    this.isExpanded = false,
    this.isLoading = false,
    this.leftWidget,
    this.rightWidget,
    this.useExtraRightWidgetSpace = true,
    this.borderRadius,
    this.gradient,
    this.customPadding,
  }) : super(key: key);

  final String label;
  final PrimaryButtonVariant variant;
  final PrimaryButtonSize buttonSize;
  final PrimaryButtonFontSize fontSize;
  final DefaultTextWeight fontWeight;
  final VoidCallback? onPressed;
  final bool isExpanded;
  final bool isLoading;
  final Widget? leftWidget;
  final Widget? rightWidget;
  final bool useExtraRightWidgetSpace;
  final double? borderRadius;
  final Gradient? gradient;
  final EdgeInsetsGeometry? customPadding;

  EdgeInsetsGeometry _getPadding() {
    switch (buttonSize) {
      case PrimaryButtonSize.extraSmall:
        return const EdgeInsets.symmetric(horizontal: 8, vertical: 0);
      case PrimaryButtonSize.small:
        return const EdgeInsets.symmetric(horizontal: 16, vertical: 10);
      case PrimaryButtonSize.regular:
        return const EdgeInsets.symmetric(horizontal: 24, vertical: 12);
      case PrimaryButtonSize.large:
        return const EdgeInsets.symmetric(horizontal: 35, vertical: 17.5);
    }
  }

  _getRippleColor() {
    switch (variant) {
      case PrimaryButtonVariant.regular:
        return onPressed == null ? AppColors.neutral : AppColors.primaryColor;
      case PrimaryButtonVariant.neutralGrey:
      case PrimaryButtonVariant.grey:
        return AppColors.neutral;
    }
  }

  _getTextColor() {
    if (onPressed == null) {
      return AppColors.neutral;
    }

    switch (variant) {
      case PrimaryButtonVariant.regular:
        return AppColors.neutral;
      case PrimaryButtonVariant.neutralGrey:
        return AppColors.neutral800;
      case PrimaryButtonVariant.grey:
        return AppColors.neutral400;
    }
  }

  _getTextType() {
    switch (fontSize) {
      case PrimaryButtonFontSize.extraSmall:
        return DefaultTextType.text3XS;
      case PrimaryButtonFontSize.small:
        return DefaultTextType.textSM;
      case PrimaryButtonFontSize.regular:
        return DefaultTextType.textBase;
      case PrimaryButtonFontSize.large:
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

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.yellowGrid,
          width: 2,
        ),
        gradient: gradient ?? AppColors.primaryGradientReversed,
        borderRadius: BorderRadius.circular(borderRadius ?? 4),
      ),
      width: isExpanded ? double.infinity : null,
      child: ElevatedButton(
        
        onPressed: isLoading ? null : onPressed,
        style: ButtonStyle(
          tapTargetSize: customPadding != null ? MaterialTapTargetSize.shrinkWrap : MaterialTapTargetSize.padded,
          minimumSize: WidgetStateProperty.all<Size>(const Size(0, 0)),
          elevation: WidgetStateProperty.all<double>(0),
          shadowColor: WidgetStateProperty.all<Color>(Colors.transparent),
          overlayColor: WidgetStateProperty.all<Color>(_getRippleColor()),
          backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
          padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
              customPadding ?? _getPadding()),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 4),
            ),
          ),
        ),
        child: isLoading
            ? const SizedBox(
                height: 16,
                width: 16,
                child: CircularProgressIndicator(
                  color: AppColors.neutral,
                ),
              )
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
                    if (useExtraRightWidgetSpace) ...[const SizedBox(width: 8)],
                  ],
                ],
              ),
      ),
    );
  }
}
