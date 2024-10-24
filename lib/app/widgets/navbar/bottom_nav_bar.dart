import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jakone_pay/app/config/constants/asset_constant.dart';
import 'package:jakone_pay/app/config/theme/app_colors.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: Colors.white, boxShadow: AppColors.boxShadowTop),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(ImageAssetConstant.homeIcon)),
          SvgPicture.asset(ImageAssetConstant.userIcon),
        ],
      ),
    );
  }
}
