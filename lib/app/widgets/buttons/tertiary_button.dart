import 'package:flutter/material.dart';
import 'package:jakone_pay/app/config/theme/app_colors.dart';
import 'package:jakone_pay/app/widgets/texts/default_text.dart';

enum TertiaryButtonVariant { regular, danger, link }

class TertiaryButton extends StatelessWidget {
  const TertiaryButton({
    Key? key,
    required this.label,
    this.onPressed,
    this.variant = TertiaryButtonVariant.regular,
    this.textType = DefaultTextType.textBase,
    this.textWeight = DefaultTextWeight.regular,
  }) : super(key: key);

  final String label;
  final VoidCallback? onPressed;
  final TertiaryButtonVariant variant;
  final DefaultTextType textType;
  final DefaultTextWeight textWeight;

  _getTextColor() {
    if (onPressed == null) {
      return AppColors.neutral50;
    }

    switch (variant) {
      case TertiaryButtonVariant.regular:
        return AppColors.primaryColor;
      case TertiaryButtonVariant.danger:
        return AppColors.errorColor;
      case TertiaryButtonVariant.link:
        return AppColors.infoColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size(0, 0),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        alignment: Alignment.centerLeft,
      ),
      child: DefaultText(
        text: label,
        color: _getTextColor(),
        type: textType,
        weight: textWeight,
      ),
    );
  }
}
