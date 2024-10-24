import 'package:flutter/material.dart';
import 'package:jakone_pay/app/config/theme/app_colors.dart';
import 'package:jakone_pay/app/widgets/buttons/pressable.dart';
import 'package:jakone_pay/app/widgets/texts/default_text.dart';

class HomeMenuItem extends StatelessWidget {
  const HomeMenuItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onPressed,
    required this.isSelected,
  });

  final String icon;
  final String title;
  final void Function() onPressed;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Pressable(
        onPressed: onPressed,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: AppColors.widgetGradientReversed,
                borderRadius: BorderRadius.circular(8),
                boxShadow: isSelected
                    ? AppColors.boxShadow
                    : null
              ),
              child: Container(
                height: 60,
                width: 60,
                margin: const EdgeInsets.all(1),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFFFFE3CA), Color(0xFFFFFFFF)],
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset(icon),
              ),
            ),
            const SizedBox(height: 5),
            DefaultText(
              text: title,
              weight: DefaultTextWeight.regular,
              color: Colors.black,
              type: DefaultTextType.textXS,
            ),
          ],
        ));
  }
}
