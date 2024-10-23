import 'package:flutter/material.dart';
import 'package:jakone_pay/app/config/theme/app_colors.dart';
import 'package:jakone_pay/app/widgets/texts/default_text.dart';

class ChipButton extends StatelessWidget {
  const ChipButton({
    Key? key,
    required this.label,
    this.active,
    this.onPressed,
  }) : super(key: key);

  final String label;
  final bool? active;
  final VoidCallback? onPressed;

  _buildText() {
    return DefaultText(
      text: label,
      color: active == true ? AppColors.neutral100 : AppColors.neutral600,
      type: DefaultTextType.text3XS,
      weight: active == true
          ? DefaultTextWeight.semiBold
          : DefaultTextWeight.regular,
    );
  }

  _getBackgroundColor() {
    return active == true ? AppColors.primaryColor : AppColors.neutral200;
  }


  _getPadding() {
    return const EdgeInsets.symmetric(horizontal: 16, vertical: 8);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 28,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          elevation: MaterialStateProperty.all<double>(0),
          shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
          backgroundColor:
              MaterialStateProperty.all<Color>(_getBackgroundColor()),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(_getPadding()),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        child: _buildText(),
      ),
    );
  }
}
