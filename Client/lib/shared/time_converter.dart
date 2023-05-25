import 'package:json_annotation/json_annotation.dart';

class TimeOrNullConverter implements JsonConverter<DateTime?, String?> {
  const TimeOrNullConverter();

  @override
  DateTime? fromJson(String? string) {
    return string != null ? DateTime.parse(string) : null;
  }

  @override
  String? toJson(DateTime? time) {
    return time?.toIso8601String();
  }
}