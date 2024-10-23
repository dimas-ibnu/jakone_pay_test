import 'package:flutter/material.dart';
import 'package:jakone_pay/app/config/constants/asset_constant.dart';

class FabButton extends StatelessWidget {
  const FabButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      height: 90,
      child: FloatingActionButton(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        backgroundColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightElevation: 0,
        onPressed: () {},
        child:  Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(ImageAssetConstant.help),
                  ),
                ),
              ),
      ),
    );
  }
}