import 'package:flutter/material.dart';
import 'package:jakone_pay/app/config/constants/asset_constant.dart';
import 'package:jakone_pay/app/config/theme/app_colors.dart';
import 'package:jakone_pay/app/widgets/buttons/pressable.dart';

class HomeScanQrButton extends StatelessWidget {
  const HomeScanQrButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Pressable(
      onPressed: () {},
      child: Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.neutral,
                    width: 2,
                  ),
                  gradient: AppColors.primaryGradientReversed,
                  shape: BoxShape.circle,
                  boxShadow: AppColors.boxShadow
                ),
                child: Image.asset(ImageAssetConstant.qrisIcon),
              ),
    );
  }
}