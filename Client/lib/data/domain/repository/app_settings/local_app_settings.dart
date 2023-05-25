import 'package:client/data/domain/entity/config/app_settings.dart';

class LocalAppSettings extends AppSettings {
  @override
  String get baseUrl => 'http://localhost:8000';

  @override
  String get baseApiUrl => '$baseUrl/api';

  @override
  String get baseAuthUrl => '$baseUrl/api-token-auth/';
}