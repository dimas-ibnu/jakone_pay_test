import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jakone_pay/app/config/theme/app_colors.dart';
import 'package:jakone_pay/app/utils/size_util.dart';

class HomeBigBanner extends StatefulWidget {
  const HomeBigBanner({super.key});

  @override
  State<HomeBigBanner> createState() => _HomeBigBannerState();
}

class _HomeBigBannerState extends State<HomeBigBanner> {
  final PageController _pageController =
      PageController(viewportFraction: 0.9, initialPage: 0);
  int pageLength = 3;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Container(
            padding: const EdgeInsets.only(left: 16),
            width: SizeUtil.getScreenWidth(),
            height: 110,
            child: PageView.builder(
                controller: _pageController,
                itemCount: pageLength,
                itemBuilder: (context, index) {
                  return  bannerItem();
                }),
          ),
        ),
      ],
    );
  }

  Widget bannerItem() {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      height: 100,
      decoration: BoxDecoration(
        color: AppColors.neutral,
        borderRadius: BorderRadius.circular(10),
        boxShadow: AppColors.boxShadow,
        image: const DecorationImage(
          image: NetworkImage(
              "https://s3-alpha-sig.figma.com/img/e410/da97/b4ca34888a21c8c1187c8b1e49487480?Expires=1730678400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=WUrNMLn5BbZ7wpOsaezsKLjRwYsOQVqYlO-WNxYGivT~UHw8Z4I-Dr6naoUE7otet3XKJ8VsGOHC1v5-3fAlHelU8M6daCxenv6N1iHkSsHGWTz~t6AcXsa~yO4RThGd1gvQqKIcubg0o7BFpzSEBayCA~e55LkGoBJhD1n9cXJfk2kDgjTyyWiJlVBkiaRZ0YFcXT3qqy~rO-9GWe~HEfualo0Wu0ZIQHdG5QjYC6w3ghvkxsrqTTxNv8EtmqACQeOZVbSrcTHVsthxepysOObURdrJWGpLuyeJOmC1Oq1-a1CfGNurXRTDPnLrXv20SrZ-xnwqbxd20pD5kiaZqQ__"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
