import 'package:intl/intl.dart';

class CurrencyUtil {
  /// Format double to IDR currency
  static String toIDR(num value) {
    return NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    ).format(value);
  }

  static String toThousand(num value) {
    return NumberFormat.currency(
      locale: 'id_ID',
      symbol: '',
      decimalDigits: 0,
    ).format(value);
  }

  static int toInt(String value) {
    if (value.isEmpty) {
      return 0;
    } else if (value == '0') {
      return 0;
    }

    /// Replace all symbol to empty String
    String result = value.replaceAll(RegExp(r'[^0-9]'), '');

    /// Convert String to int
    return int.parse(result);
  }
}
