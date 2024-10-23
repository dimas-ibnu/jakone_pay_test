import 'package:flutter/material.dart';
import 'package:jakone_pay/app/config/constants/asset_constant.dart';
import 'package:jakone_pay/app/config/theme/app_colors.dart';
import 'package:jakone_pay/app/features/guest/widgets/guest_slider_item.dart';
import 'package:jakone_pay/app/utils/size_util.dart';

class GuestImageSlider extends StatefulWidget {
  const GuestImageSlider({super.key});

  @override
  State<GuestImageSlider> createState() => _GuestImageSliderState();
}

class _GuestImageSliderState extends State<GuestImageSlider> {
  final PageController _pageController =
      PageController(viewportFraction: 1, initialPage: 0);
  double _page = 0;
  int pageLength = 3;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      if (_pageController.page != null) {
        _page = _pageController.page!;
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: SizedBox(
            height: SizeUtil.getScreenHeight() * 0.4,
            child: PageView.builder(
                controller: _pageController,
                itemCount: pageLength,
                itemBuilder: (context, index) {
                  return const SizedBox(
                    child: Row(
                      children: [
                        Expanded(
                            child: GuestSliderItem(
                                image: ImageAssetConstant.monas,
                                title: "Monument Monas",
                                description:
                                    "Explore Jakarta with Jakarta Tourist Pass")),
                      ],
                    ),
                  );
                }),
          ),
        ),
        pageIndicator()
      ],
    );     
  }

  Widget pageIndicator(){
    return  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              for (int i = 0; i < pageLength; i++)
                Container(
                  margin: const EdgeInsets.all(2),
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: _page != i
                          ? AppColors.secondarySurfaceColor.withOpacity(0.3)
                          : AppColors.secondarySurfaceColor,)
                )
            ],
          );
  }
}
