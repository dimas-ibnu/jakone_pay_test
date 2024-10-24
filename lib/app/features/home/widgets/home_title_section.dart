import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jakone_pay/app/config/constants/asset_constant.dart';
import 'package:jakone_pay/app/config/theme/app_colors.dart';
import 'package:jakone_pay/app/widgets/buttons/pressable.dart';
import 'package:jakone_pay/app/widgets/texts/default_text.dart';

class HomeTitleSection extends StatelessWidget {
  const HomeTitleSection(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.iconPath,
      required this.onPressed});

  final String title;
  final String subtitle;
  final String iconPath;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        icon(),
        const SizedBox(width: 6),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DefaultText(
              text: title,
              type: DefaultTextType.textBase,
              weight: DefaultTextWeight.bold,
              color: AppColors.bodyTextColor,
            ),
             DefaultText(
              text: subtitle,
              type: DefaultTextType.text3XS,
              weight: DefaultTextWeight.regular,
              color: AppColors.bodyTextColor,
            ),
            Container(
              width: 40,
              height: 2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  gradient: AppColors.widgetGradientReversed),
            )
          ],
        ),
        const Spacer(),
        Pressable(
          onPressed: onPressed,
          child: const DefaultText(
              text: "View All",
              type: DefaultTextType.text3XS,
              weight: DefaultTextWeight.regular,
              color: AppColors.bodyTextColor),
        ),
        const SizedBox(width: 16),
      ],
    );
  }

  Widget icon() {
    return Container(
      width: 40,
      height: 45,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.yellowGrid, width: 1),
        gradient: AppColors.primaryGradientReversed,
        borderRadius:
            const BorderRadius.horizontal(right: Radius.circular(100)),
      ),
      child: Image.asset(iconPath),
    );
  }
}
