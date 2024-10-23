import 'package:flutter/material.dart';
import 'package:jakone_pay/app/config/constants/asset_constant.dart';
import 'package:jakone_pay/app/config/theme/app_colors.dart';
import 'package:jakone_pay/app/widgets/texts/default_text.dart';
import 'package:jakone_pay/app/widgets/texts/gradient_text.dart';

class GuestSliderItem extends StatelessWidget {
  const GuestSliderItem(
      {super.key,
      required this.image,
      required this.title,
      required this.description});

  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 275,
              width: 275,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                ),
              ),
            ),
            Positioned(
              bottom: 24,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                decoration: BoxDecoration(
                  color: AppColors.secondaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: DefaultText(
                  text: title,
                  type: DefaultTextType.text3XS,
                  weight: DefaultTextWeight.semiBold,
                  color: AppColors.neutral,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        GradientText(
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          text: description,
          colors: const [AppColors.primaryColor, AppColors.secondaryColor],
          gradientDirection: GradientDirection.ttb,
        ),
      ],
    );
  }
}
