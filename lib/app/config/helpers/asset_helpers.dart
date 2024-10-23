class AssetHelpers {
  static String getImage({required ImageAssetEnum image}) {
    return 'assets/images/${_getImageAsset(image: image)}';
  }

  /// Use this method to get the image path
  /// don't forget to add the image to the assets folder
  /// then add the image name to the [ImageAssetEnum]
  static String _getImageAsset({required ImageAssetEnum image}) {
    switch (image) {
      case ImageAssetEnum.logo:
        return 'logo.png';
      case ImageAssetEnum.logoSplashWhite:
        return 'logo_splash_white.png';
      case ImageAssetEnum.logoHorizontal:
        return 'logo_horizontal.png';

      /// Onboard Image
      case ImageAssetEnum.onboard1:
        return 'onboard_1.png';
      case ImageAssetEnum.onboard2:
        return 'onboard_2.png';
      case ImageAssetEnum.onboard3:
        return 'onboard_3.png';
      case ImageAssetEnum.onboard4:
        return 'onboard_4.png';
      default:
        return 'logo.png';
    }
  }

  static String getIcon({required IconAssetEnum icon}) {
    return 'assets/icons/${_getSvgAsset(icon: icon)}';
  }

  static String _getSvgAsset({required IconAssetEnum icon}) {
    switch (icon) {
      case IconAssetEnum.eye:
        return 'eye.svg';
      case IconAssetEnum.eyeSlash:
        return 'eye_slash.svg';
      case IconAssetEnum.back:
        return 'back.svg';
      case IconAssetEnum.search:
        return 'search_icon.svg';

      /// Illustration
      case IconAssetEnum.checkIllustration:
        return 'check_illustration.svg';
      case IconAssetEnum.emailIllustration:
        return 'email_illustration.svg';

      default:
        return 'check_illustration.svg';
    }
  }
}

/// Use this extension to get the image path
/// Example:
/// [import 'package:kasheer/app/data/helpers/asset_helpers.dart';]
/// ...
/// [ImageAssetEnum.logo.file]
extension ImageAssetEnumExtension on ImageAssetEnum {
  String get file => AssetHelpers.getImage(image: this);
}

enum ImageAssetEnum {
  logo,
  logoSplashWhite,
  logoHorizontal,
  onboard1,
  onboard2,
  onboard3,
  onboard4,
}

/// Use this extension to get the icon path
/// Example:
/// [import 'package:kasheer/app/data/helpers/asset_helpers.dart';]
/// ...
/// [IconAssetEnum.eye.file]

extension SvgIconEnumExtension on IconAssetEnum {
  String get file => AssetHelpers.getIcon(icon: this);
}

enum IconAssetEnum {
  eye,
  eyeSlash,
  back,
  search,

  /// Illustration
  emailIllustration,
  checkIllustration,
}
