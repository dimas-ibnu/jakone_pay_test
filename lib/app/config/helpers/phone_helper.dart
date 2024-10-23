class PhoneHelper {
  /// convert 6281234567890 to 081234567890
  static String toIndonesianFormat(String phone) {
    if (phone.startsWith('62')) {
      return '0${phone.substring(2)}';
    } else if (phone.startsWith('+62')) {
      return '0${phone.substring(3)}';
    } else if (phone.startsWith('8')) {
      return phone;
    } else {
      return phone;
    }
  }
}
