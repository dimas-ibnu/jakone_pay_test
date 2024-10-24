import 'package:intl/intl.dart';

extension DateTimeFormatter on DateTime {
  /// Convert to Indonesian Date Format
  String toIndonesianFormatDate() {
    return DateFormat('dd MMM yyyy').format(this);
  }

  String toTimeFullFormat() {
    return DateFormat('dd MMMM yyyy (HH:mm)').format(this);
  }

  String toInquiryFormat() {
    return DateFormat('yyyy-MM-dd HH:mm:ss').format(this);
  }

  String toTimeFormat() {
    return DateFormat('HH:mm').format(this);
  }
}
