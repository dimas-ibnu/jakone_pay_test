import 'package:flutter/material.dart';
import 'package:jakone_pay/app/config/constants/asset_constant.dart';
import 'package:jakone_pay/app/config/theme/app_colors.dart';
import 'package:jakone_pay/app/features/home/widgets/home_card_balance.dart';
import 'package:jakone_pay/app/utils/size_util.dart';
import 'package:jakone_pay/app/widgets/texts/default_text.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeUtil.getScreenHeight() * 0.25,
      child: Stack(
        children: [
          const SizedBox(height: 50),
          Container(
            height: 180,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                gradient: AppColors.primaryGradientReversed),
          ),
          Column(
            children: [
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 120,
                      alignment: Alignment.center,
                      child: const Image(
                        fit: BoxFit.cover,
                        image: AssetImage(ImageAssetConstant.whiteLogoFull),
                      ),
                    ),
                    const Spacer(),
                    circularIconButton(
                        icon: ImageAssetConstant.reportIcon, onPressed: () {}),
                    const SizedBox(width: 10),
                    circularIconButton(
                        icon: ImageAssetConstant.notificationIcon,
                        onPressed: () {}),
                  ],
                ),
              ),
              welcomeText(),
              const SizedBox(height: 16),
            ],
          ),
          const Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: HomeCardBalance(
                balance: 10000,
              )),
        ],
      ),
    );
  }

  Widget circularIconButton(
      {required String icon, required Function() onPressed}) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        gradient: AppColors.primaryGradientReversed,
        shape: BoxShape.circle,
        boxShadow: AppColors.boxShadow,
      ),
      child: Image.asset(
        icon,
        width: 16,
        height: 16,
      ),
    );
  }

  Widget welcomeText() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            ImageAssetConstant.userIconWhite,
            width: 36,
            height: 36,
          ),
          const SizedBox(width: 16),
          const DefaultText(
            text: "Good morning,\nGuest",
            weight: DefaultTextWeight.bold,
          ),
        ],
      ),
    );
  }
}
