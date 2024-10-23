import 'package:flutter/material.dart';
import 'package:jakone_pay/app/config/constants/asset_constant.dart';
import 'package:jakone_pay/app/config/theme/app_colors.dart';

class GuestTranslationButton extends StatelessWidget {
  const GuestTranslationButton({super.key});

  @override
  Widget build(BuildContext context) {
    Widget flag({required String flag}) {
      return Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          boxShadow: AppColors.boxShadow,
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.contain,
            image: AssetImage(flag),
          ),
        ),
      );
    }

    return Container(
        width: 50,
        height: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: AppColors.boxShadow,
          color: AppColors.neutral,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            flag(flag: ImageAssetConstant.idFlag),
            flag(flag: ImageAssetConstant.ukFlag),
          ],
        ));
  }
}
