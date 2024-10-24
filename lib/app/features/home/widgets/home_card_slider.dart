import 'package:flutter/material.dart';
import 'package:jakone_pay/app/config/constants/asset_constant.dart';
import 'package:jakone_pay/app/config/theme/app_colors.dart';
import 'package:jakone_pay/app/models/home/card_item_model.dart';
import 'package:jakone_pay/app/utils/size_util.dart';
import 'package:jakone_pay/app/widgets/texts/default_text.dart';

class HomeCardSlider extends StatefulWidget {
  const HomeCardSlider({super.key});

  @override
  State<HomeCardSlider> createState() => _HomeCardSliderState();
}

class _HomeCardSliderState extends State<HomeCardSlider> {
  final PageController _pageController =
      PageController(viewportFraction: 0.8, initialPage: 0);
  double _page = 0;

  List<CardItemModel> listItem = [
    CardItemModel(
        id: 1,
        title: "Ancol Entrance Gate",
        image:
            "https://s3-alpha-sig.figma.com/img/500f/433a/d7d818700352f0062efdb945ffc3c0b5?Expires=1730678400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=pihWUwXV2~l9YQ5~jyWhNxxvpDzWwwKyfsXSRJfuyVA1oRdZ5Wn0977wNXoaZMjnIocmZpBisCffPpRwMqofcKyg0fQc7no-noX3I9D-LvpOpk3zgPl8Ziu1wFWlEL11Ngab4Z9PjVPYv9Xb28hmiL4fb77Dr4TT7Owo1OCKPbMmdWoJsbD5RS~QH83iTfGx0S2uLqaYHQ5bHp-giArYxVde7~HsAwCbtNoD8NFO2PSN-rRjnVsDI8N98MUUiSaVegxHEuOCTubXuPKIDarImFZJIlW9E1TCoAXAnHVdfuhDK5w7o8gdtg5UnnlAz9b7APzEqCn-3cvOYsLLpE5bhQ__"),
    CardItemModel(
        id: 2,
        title: "Monumen Nasional",
        image:
            "https://s3-alpha-sig.figma.com/img/2b29/2fcf/fe45ee6b2cf65ddca634c5f271836aeb?Expires=1730678400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Uf9NXF7pZElozlKI2-JpfbaLs1eT4-sQkQsuMyFcrPRhhLAORaFk8jqN71lGFcsZfGLAOX26z-CgR1izAXtLjMiBCLR41ovLOcvfnD~xc0BeNMYcUnhQRCGVD7VeE-Br6Hx~mSy7~7V1Ve46C4J7R3akp-2Ov2Xds94~~vOmHU2IAav1hgbPc3Z~oThk5vLlmK~F5gQF5jGtHx5F6MHsmQaZZwND96ooB0MYHzY4YgP9uCkCtGBF83alBbNh20AvT2poy~Xo4jOQYCdmiHDjTzIv3hDhekx9oltJLwa4IF9F3KCKr3JOOhEufsIRTXYQPEjBkiU4Uei1RRj53nAGzQ__"),
    CardItemModel(
        id: 3,
        title: "Monumen Nasional",
        image:
            "https://s3-alpha-sig.figma.com/img/afcd/d24a/07d25b94f6a3e11e71682379549ade7e?Expires=1730678400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=TJNemFtjxbu7lZWznz2uNtp4N3gUwX~hU2iJvFdTHnfj-D-TTQcRQ0y2PWowvcw-MwqT8iiddC7P5AWmUVMHn8PSAHsSSYDgsWYUmSmN97LIcGag1uFuXjZPWeRozWxT0VYlQOwerltTaiHmGqClvtVNnRYSW8RcBmqdNc8qot-NtAtGunANno-tbdAVnM5MDyZgx0f9bYqJa-cTySaRLsf0Vr41duxKD9jao78~k8xYrLPRLLdau7nu3u6FbfOfXhVPBB1oC8z17RAmUSDvqwYxy~1FmBI37fHSaGDclhOPcPW6BQkQuc3NYfkKd-brVuu8zA2iNo7vT-fT739F1g__")
  ];

  @override
  void initState() {
    // TODO: implement initState

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
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 32, right: 10),
              child: Image.asset(ImageAssetConstant.didYouKnow),
            ),
            Flexible(
              child: SizedBox(
                width: SizeUtil.getScreenWidth(),
                height: 190,
                child: PageView.builder(
                    controller: _pageController,
                    itemCount: listItem.length ~/ 2 + listItem.length % 2,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          cardItem(item: listItem[index * 2]),
                          index * 2 + 1 >= listItem.length
                              ? const SizedBox()
                              : cardItem(
                                  item: listItem.length > index * 2 + 1
                                      ? listItem[index * 2 + 1]
                                      : listItem[index * 2]),
                        ],
                      );
                    }),
              ),
            )
          ],
        ),
        pageIndicator()
      ],
    );
  }

  Widget cardItem({required CardItemModel item}) {
    return Container(
      width: 115,
      margin: const EdgeInsets.only(right: 13, bottom: 10),
      decoration: BoxDecoration(
        color: AppColors.neutral,
        borderRadius: BorderRadius.circular(10),
        boxShadow: AppColors.boxShadow,
      ),
      child: Column(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: AppColors.neutral,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10), topLeft: Radius.circular(10)),
              image: DecorationImage(
                image: NetworkImage(item.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Container(
            width: 120,
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DefaultText(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  text: item.title ?? "",
                  type: DefaultTextType.text2XS,
                  color: AppColors.bodyTextColor,
                  weight: DefaultTextWeight.semiBold,
                ),
                const SizedBox(height: 4),
                Align(
                  alignment: Alignment.centerRight,
                  child: detailButton(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget detailButton() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 7),
      decoration: BoxDecoration(
        gradient: AppColors.primaryGradient,
        border: Border.all(color: AppColors.yellowGrid),
        borderRadius: BorderRadius.circular(100),
      ),
      child: const DefaultText(
        text: "Detail",
        type: DefaultTextType.textXS,
        color: AppColors.neutral,
        weight: DefaultTextWeight.semiBold,
      ),
    );
  }

  Widget pageIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        for (int i = 0; i < listItem.length ~/ 2 + listItem.length % 2; i++)
          Container(
              margin: const EdgeInsets.all(2),
              width: 5,
              height: 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: _page != i
                    ? AppColors.primaryColor.withOpacity(0.3)
                    : AppColors.primaryColor,
              ))
      ],
    );
  }
}
