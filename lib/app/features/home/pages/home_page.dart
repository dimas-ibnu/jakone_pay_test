import 'package:flutter/material.dart';
import 'package:jakone_pay/app/config/constants/asset_constant.dart';
import 'package:jakone_pay/app/features/home/widgets/home_big_banner.dart';
import 'package:jakone_pay/app/features/home/widgets/home_big_card_slider.dart';
import 'package:jakone_pay/app/features/home/widgets/home_card_slider.dart';
import 'package:jakone_pay/app/features/home/widgets/home_list_menu.dart';
import 'package:jakone_pay/app/features/home/widgets/home_scan_qr_button.dart';
import 'package:jakone_pay/app/features/home/widgets/home_title_section.dart';
import 'package:jakone_pay/app/features/home/widgets/home_top_bar.dart';
import 'package:jakone_pay/app/utils/size_util.dart';
import 'package:jakone_pay/app/widgets/buttons/fab_button.dart';
import 'package:jakone_pay/app/widgets/navbar/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const BottomNavBar(),
        floatingActionButton: const HomeScanQrButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Stack(
          children: [
            SizedBox(
              height: SizeUtil.getScreenHeight(),
              child: ListView(children: [
                const HomeTopBar(),
                const SizedBox(height: 16),
                const HomeListMenu(),
                const SizedBox(height: 16),
                const HomeBigBanner(),
                const SizedBox(height: 32),
                HomeTitleSection(
                  title: "Let’s Go with Jakarta Tourist Pass",
                  subtitle: "a place not to be missed",
                  iconPath: ImageAssetConstant.landmarkWhiteIcon,
                  onPressed: () {},
                ),
                const SizedBox(height: 16),
                const HomeCardSlider(),
                const SizedBox(height: 32),
                HomeTitleSection(
                  title: "Events in Jakarta",
                  subtitle: "don't miss the current events",
                  iconPath: ImageAssetConstant.calendarWhiteIcon,
                  onPressed: () {},
                ),
                const SizedBox(height: 16),
                const HomeBigCardSlider(),
                const SizedBox(height: 32),
              ]),
            ),
            const Positioned(
              bottom: 0,
              right: 0,
              child: FabButton(),
            ),
          ],
        ),
      ),
    );
  }
}
