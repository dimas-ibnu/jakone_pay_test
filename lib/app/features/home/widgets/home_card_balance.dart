import 'package:flutter/material.dart';
import 'package:jakone_pay/app/config/theme/app_colors.dart';
import 'package:jakone_pay/app/utils/currency_util.dart';
import 'package:jakone_pay/app/widgets/buttons/primary_button.dart';
import 'package:jakone_pay/app/widgets/texts/default_text.dart';

class HomeCardBalance extends StatelessWidget {
  const HomeCardBalance({super.key, required this.balance});

  final int balance;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 32),
        decoration: BoxDecoration(
          color: AppColors.neutral,
          borderRadius: BorderRadius.circular(10),
          boxShadow: AppColors.boxShadow,
        ),
        child: Row(
          children: [
            Container(
              height: 80,
              width: 10,
              decoration: const BoxDecoration(
                gradient: AppColors.widgetGradient,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
            ),
            const SizedBox(width: 12),
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DefaultText(
                  text: "Balance Account",
                  weight: DefaultTextWeight.regular,
                  type: DefaultTextType.text2XS,
                  color: AppColors.bodyTextColor,
                ),
                Row(
                  children: [
                    DefaultText(
                      text: "Rp",
                      weight: DefaultTextWeight.regular,
                      color: AppColors.bodyTextColor,
                    ),
                    SizedBox(width: 4),
                    DefaultText(
                      text: CurrencyUtil.toThousand(balance),
                      weight: DefaultTextWeight.bold,
                      color: AppColors.bodyTextColor,
                    ),
                  ],
                ),
                DefaultText(
                  text: "-",
                  weight: DefaultTextWeight.bold,
                  color: AppColors.bodyTextColor,
                ),
              ],
            ),
            const Spacer(),
            PrimaryButton(
              borderRadius: 4,
              label: "Top Up",
              onPressed: () {},
              fontWeight: DefaultTextWeight.bold,
              customPadding: const EdgeInsets.all(6),
              fontSize: PrimaryButtonFontSize.extraSmall,
            ),
            const SizedBox(width: 8),
          ],
        ));
  }
}
