import 'package:intl/intl.dart';

extension DateTimeFormatter on DateTime {
  /// Convert to Indonesian Date Format
  String toIndonesianFormatDate() {
    return DateFormat('dd MMM yyyy').format(add(const Duration(hours: 7)));
  }

  String toTimeFullFormat({bool? isAdd7}) {
    return DateFormat('dd MMMM yyyy (HH:mm)')
        .format((isAdd7 ?? true) ? add(const Duration(hours: 7)) : this);
  }

  String toInquiryFormat() {
    return DateFormat('yyyy-MM-dd HH:mm:ss').format(this);
  }

  String toTimeFormat({bool? isAdd7}) {
    return DateFormat('HH:mm')
        .format((isAdd7 ?? true) ? add(const Duration(hours: 7)) : this);
  }
}
