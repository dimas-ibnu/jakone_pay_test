import 'package:flutter/material.dart';
import 'package:jakone_pay/app/config/theme/app_colors.dart';
import 'package:jakone_pay/app/models/home/card_item_model.dart';
import 'package:jakone_pay/app/widgets/texts/default_text.dart';

class HomeBigCardSlider extends StatefulWidget {
  const HomeBigCardSlider({super.key});

  @override
  State<HomeBigCardSlider> createState() => _HomeBigCardSliderState();
}

class _HomeBigCardSliderState extends State<HomeBigCardSlider> {
  final PageController _pageController =
      PageController(viewportFraction: 0.85, initialPage: 0);
  double _page = 0;
  List<CardItemModel> listItem = [
    CardItemModel(
      id: 1,
      image:
          "https://s3-alpha-sig.figma.com/img/3f94/648a/636c7c22ab7c674196156556e70eb31f?Expires=1730678400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=UnL0yrwftI04EgK9XrifkC3iLKIg8MqPuN8bcAybXJnPXI2SIBSEcm05q1v2eQ17Ul6VCnqgsF1gDQpWeyKrkEhzuY~sfNr1FjNL44qi~G7I0Mx38hb~c4uj~23-mDciULSFYSwbdHpP6FF0d5bt5BiNBXqiJ4Rn8wB3QZkN45eICpGzb3T9~nq6XEh6wS~F4j29CwWh89IYpqUOVmayK6ob-DH-GM~hSnW6fjKxFQi7cb6QDhawlWL4cuoi1b5oNOHJzAgjOlVWQjkR81v7q8Ne~6QUX5v38C243IXod2wVJbSOmIogCh5KMdBUExsLq9k-fsIE3l9Xs7PmNvC2TA__",
    ),
    CardItemModel(
      id: 2,
      image:
          "https://s3-alpha-sig.figma.com/img/e5ca/678b/16bde10fb2975c512e1397cd61d32fe8?Expires=1730678400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Is-2ZTPXFRcIA-fsKNgxvreDJmIaeq52Bck5dicPOvQgVq6wjVzP5pr30aH-oEzwW1dbyZ3mvKnSvtfDj7lDn7Zwn9VOrQHOXjIE5P-qf5xWHr09J8~vGxU5yD4CBi79xxoX6hAQJdiXPhbmDBR7e50hwSM9y4q0IZi0igMhtSKYiLJuIf1nB3486VmRvWdbNN3rEQdoL~itUqxxKCjkJnaahv9v4dkGkvMSa0PLnTGBaDWE6SI55dIgIHM62T1xjvxGCH-SUu4qQbLZmp-E7fdnrP2D~YlcorqQMdGzTvzSwwsD0mKgHvLMjfdl4DoIBbtEClV1FOmX9eAOBhRATQ__",
    ),
    CardItemModel(
      id: 3,
      image:
          "https://s3-alpha-sig.figma.com/img/3f94/648a/636c7c22ab7c674196156556e70eb31f?Expires=1730678400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=UnL0yrwftI04EgK9XrifkC3iLKIg8MqPuN8bcAybXJnPXI2SIBSEcm05q1v2eQ17Ul6VCnqgsF1gDQpWeyKrkEhzuY~sfNr1FjNL44qi~G7I0Mx38hb~c4uj~23-mDciULSFYSwbdHpP6FF0d5bt5BiNBXqiJ4Rn8wB3QZkN45eICpGzb3T9~nq6XEh6wS~F4j29CwWh89IYpqUOVmayK6ob-DH-GM~hSnW6fjKxFQi7cb6QDhawlWL4cuoi1b5oNOHJzAgjOlVWQjkR81v7q8Ne~6QUX5v38C243IXod2wVJbSOmIogCh5KMdBUExsLq9k-fsIE3l9Xs7PmNvC2TA__",
    ),
  ];

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
      children: [
        SizedBox(
          height: 160,
          child: PageView.builder(
              controller: _pageController,
              itemCount: listItem.length ~/ 2 + listItem.length % 2,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    cardItem(item: listItem[index]),
                    cardItem(item: listItem[index + 1]),
                  ],
                );
              }),
        ),
        pageIndicator()
      ],
    );
  }

  Widget cardItem({required CardItemModel item}) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: AppColors.primaryGradientWhite,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            width: 150,
            height: 110,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.neutral, width: 2),
              color: AppColors.neutral,
              borderRadius: BorderRadius.circular(10),
              image:  DecorationImage(
                image: NetworkImage(item.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          moreButton(),
        ],
      ),
    );
  }

  Widget moreButton() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 7),
      decoration: BoxDecoration(
        gradient: AppColors.primaryGradientReversed,
        border: Border.all(color: AppColors.yellowGrid),
        borderRadius: BorderRadius.circular(100),
      ),
      child: const DefaultText(
        text: "More Information",
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
