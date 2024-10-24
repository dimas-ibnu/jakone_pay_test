import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jakone_pay/app/features/guest/cubit/guest_cubit.dart';
import 'package:jakone_pay/app/features/guest/widgets/guest_image_slider.dart';
import 'package:jakone_pay/app/features/guest/widgets/guest_jakcard_button.dart';
import 'package:jakone_pay/app/features/guest/widgets/guest_translation_button.dart';
import 'package:jakone_pay/app/widgets/buttons/fab_button.dart';
import 'package:jakone_pay/app/widgets/buttons/primary_button.dart';
import 'package:jakone_pay/app/widgets/buttons/secondary_button.dart';
import 'package:jakone_pay/app/widgets/texts/default_text.dart';

class GuestPage extends StatefulWidget {
  const GuestPage({super.key});

  @override
  State<GuestPage> createState() => _GuestPageState();
}

class _GuestPageState extends State<GuestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const FabButton(),
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GuestTranslationButton(),
                GuestJakcardButton(),
              ],
            ),
          ),
          const SizedBox(height: 90),
          const Flexible(child: GuestImageSlider()),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              children: [
                PrimaryButton(
                  fontSize: PrimaryButtonFontSize.large,
                  fontWeight: DefaultTextWeight.semiBold,
                  isExpanded: true,
                  onPressed: () {
                     context.read<GuestCubit>().routeToHome();
                  },
                  borderRadius: 100,
                  label: 'Continue as Guest',
                ),
                const SizedBox(height: 16),
                SecondaryButton(
                  fontSize: SecondaryButtonFontSize.regular,
                  fontWeight: DefaultTextWeight.semiBold,
                  isExpanded: true,
                  onPressed: () {
                    context.read<GuestCubit>().routeToHome();
                  },
                   borderRadius: 100,
                  label: 'Continue as Guest',
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
