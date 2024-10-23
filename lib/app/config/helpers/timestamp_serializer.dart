import 'package:json_annotation/json_annotation.dart';

class TimestampSerializer implements JsonConverter<DateTime, dynamic> {
  const TimestampSerializer();

  @override
  DateTime fromJson(dynamic timestamp) => timestamp == null ? DateTime.now() : DateTime.parse(timestamp as String);

  @override
  dynamic toJson(DateTime date) => date.toUtc();

}