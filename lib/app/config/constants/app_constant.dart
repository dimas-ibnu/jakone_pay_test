import 'package:jakone_pay/app/config/environtment.dart';

class AppConstant {
  AppConstant._();
  static const name = 'jakone_pay';
  static const title = 'JakOne Pay';
  static const appIdAndroid = "";
  static const appIdIos = "";
  static const masterAdminEmail = "";
  static const googleMapsKey = '';
  static const googleMapsKeyURL = '';

  /// API SETTINGS
  static String currentEnvBaseUrl = ConfigEnvironments.getEnvironment();
  static String baseUrl = currentEnvBaseUrl + api + _apiVersionV1;
  static String assetStorage = '$currentEnvBaseUrl/storage/';
  static const String api = '/api';

  static const String _apiVersionV1 = '/v1';

}
