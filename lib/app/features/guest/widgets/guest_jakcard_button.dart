import 'package:flutter/material.dart';
import 'package:jakone_pay/app/config/constants/asset_constant.dart';
import 'package:jakone_pay/app/config/theme/app_colors.dart';

class GuestJakcardButton extends StatelessWidget {
  const GuestJakcardButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: AppColors.boxShadow,
          color: AppColors.neutral,
        ),
        child: Row(
           children: [
            Image.asset(
              ImageAssetConstant.ccLogo,
              height: 10,
              width: 10,
            ),
            const SizedBox(
              width: 8,
            ),
            Image.asset(
              ImageAssetConstant.jakcardLogo,
              height: 11,
              width: 25,
            ),
          ],
        ));
  }
}
