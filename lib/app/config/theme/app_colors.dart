import 'package:flutter/material.dart';

class AppColors {
  // PRIMARY
  static const Color primaryColor = Color(0xFFFE5F5F);
  static const Color primarySurfaceColor = Color(0xFFFFFFFF);
  static const Color primaryBorderColor = Color(0xFFD3AA8E);
  static const Color primaryHoverColor = Color(0xFF512019);
  static const Color primaryPressedColor = Color(0xFF360A0B);

  // INFO COLOR
  static const Color infoColor = Color(0xFF5991F2);
  static const Color infoSurfaceColor = Color(0xFFDEEFFC);
  static const Color infoBorderColor = Color(0xFF9BC6F8);
  static const Color infoHoverColor = Color(0xFF2F53AD);
  static const Color infoPressedColor = Color(0xFF142772);

  // WARNING COLOR
  static const Color warningColor = Color(0xFFF2C94C);
  static const Color mainWarningColor = Color(0xFFF2C94C);
  static const Color yellowGrid = Color(0xFFFFF84B);

  /// ERROR COLOR
  static const Color errorColor = Color(0xFFCC1F1B);
  static const Color errorSurfaceColor = Color(0xFFFCE1D0);
  static const Color errorBorderColor = Color(0xFFEF8B73);
  static const Color errorHoverColor = Color(0xFF920E23);
  static const Color errorPressedColor = Color(0xFF620522);

  // SECONDARY COLOR
  static const Color accentColor = Color(0xFFD9EDE1);
  static const Color secondaryColor = Color(0xFFFC9842);
  static const Color secondarySurfaceColor = Color(0xFFFFDBA5);

  //APPBAR
  static const Color appBarColor = primaryColor;

  //SCAFFOLD
  static const Color scaffoldBackgroundColor = Colors.white;
  static const Color backgroundColor = Colors.white;
  static const Color dividerColor = Color(0xff686868);
  static const Color cardColor = Color(0xfffafafa);

  //ICONS
  static const Color appBarIconsColor = Colors.white;
  static const Color iconColor = Colors.black;

  //BUTTON
  static const Color buttonColor = primaryColor;
  static const Color buttonTextColor = Colors.white;
  static const Color buttonDisabledColor = AppColors.primarySurfaceColor;

  //TEXT
  static const Color bodyTextColor = Colors.black;
  static const Color displayTextColor = Color(0xFF1E2432);
  static const Color bodySmallTextColor = Color(0xff7C7C7C);
  static const Color hintTextColor = Color(0xff686868);

  /// APP COLOR
  // Neutral / Disable Fill
  static const Color neutral = Color(0xFFFFFFFF);
  static const Color neutral50 = Color(0xFFF6F6F9);
  static const Color neutral100 = Color(0xFFF9F9F9);
  static const Color neutral200 = Color(0xFFE9EBE8);
  static const Color neutral300 = Color(0xFFDFDFE1);
  static const Color neutral400 = Color(0xFFBDBDBD);
  static const Color neutral500 = Color(0xFF949496);
  static const Color neutral600 = Color(0xFF737278);
  static const Color neutral700 = Color(0xFF5D5C62);
  static const Color neutral800 = Color(0xFF413F4C);

  /// GRADIENT
  static const Gradient primaryGradient = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [primaryColor, secondaryColor],
  );

  static const Gradient primaryGradientReversed = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
      secondaryColor,
      primaryColor,
    ],
  );

  static const List<BoxShadow> boxShadow = [
    BoxShadow(
      color: Color(0x19000000),
      blurRadius: 4,
      offset: Offset(0, 4),
      spreadRadius: 0,
    )
  ];
}
