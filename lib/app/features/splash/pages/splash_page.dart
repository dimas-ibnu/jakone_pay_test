import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jakone_pay/app/config/constants/asset_constant.dart';
import 'package:jakone_pay/app/config/theme/app_colors.dart';
import 'package:jakone_pay/app/features/splash/cubit/splash_cubit.dart';
import 'package:jakone_pay/app/widgets/texts/default_text.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    context.read<SplashCubit>().delay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppColors.primaryGradient),
        child: Stack(
          children: [
            const Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Image(
                  fit: BoxFit.contain,
                  image: AssetImage(ImageAssetConstant.whiteLogoFull),
                ),
              ),
            ),
            const Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 25),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            fit: BoxFit.contain,
                            height: 15,
                            width: 42,
                            image: AssetImage(ImageAssetConstant.ojkLogo),
                            color: AppColors.neutral,
                          ),
                          SizedBox(width: 23),
                          Image(
                            fit: BoxFit.contain,
                            height: 15,
                            width: 42,
                            image: AssetImage(ImageAssetConstant.lpsLogo),
                            color: AppColors.neutral,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      DefaultText(
                        text: "powered by Bank DKI\n 2023",
                        type: DefaultTextType.text3XS,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                )),
            Positioned(
              top: 0,
              left: 0,
              child: SvgPicture.asset(ImageAssetConstant.splashAbstractTop1),
            ),
            Positioned(
              top: 0,
              left: 50,
              child: SvgPicture.asset(ImageAssetConstant.splashAbstractTop2),
            ),
            Positioned(
              bottom: 66,
              right: 0,
              child: SvgPicture.asset(ImageAssetConstant.splashAbstractBottom1),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: SvgPicture.asset(ImageAssetConstant.splashAbstractBottom2),
            ),
          ],
        ),
      ),
    );
  }
}
