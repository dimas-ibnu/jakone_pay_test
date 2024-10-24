import 'package:flutter/material.dart';
import 'package:jakone_pay/app/config/constants/asset_constant.dart';
import 'package:jakone_pay/app/features/home/widgets/home_menu_item.dart';

class HomeListMenu extends StatelessWidget {
  const HomeListMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HomeMenuItem(
              isSelected: false,
              icon: ImageAssetConstant.menuMaps,
              title: "Explore Jakarta",
              onPressed: () {}),
          const SizedBox(width: 19),
          HomeMenuItem(
              isSelected: false,
              icon: ImageAssetConstant.menuWallet,
              title: "Top Up JakCard",
              onPressed: () {}),
          const SizedBox(width: 19),
          HomeMenuItem(
              isSelected: true,
              icon: ImageAssetConstant.menuCC,
              title: "JakCard Balance",
              onPressed: () {}),
          const SizedBox(width: 19),
          HomeMenuItem(
              isSelected: false,
              icon: ImageAssetConstant.menuEvent,
              title: "Event",
              onPressed: () {}),
        ],
      ),
    );
  }
}
