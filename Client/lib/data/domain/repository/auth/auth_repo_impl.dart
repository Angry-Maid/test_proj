import 'dart:developer';

import 'package:client/data/domain/entity/config/app_settings.dart';
import 'package:client/data/domain/repository/auth/i_auth_repo.dart';
import 'package:dio/dio.dart';
import 'package:storage_repository/interfaces/i_storage_repository.dart';

class ApiAuthRepository extends IAuthRepository {
  ApiAuthRepository({
    required this.appSettings,
    required this.httpClient,
    required this.storageRepository,
  });

  final AppSettings appSettings;
  final Dio httpClient;
  final IStorageRepository storageRepository;

  @override
  Future<String?> login(String username, String password) async {
    try {
      Response<dynamic>? response = await httpClient.post(
          appSettings.baseAuthUrl,
          data: {'username': username, 'password': password});

      if (response != null) {
        storageRepository.set('token', response.data['token']);
        httpClient.options.headers['Authorization'] =
            "Token ${response.data['token']}";
        return response.data['token'];
      }
    } catch (e, trace) {
      log('login', error: e);
      rethrow;
    }
    return null;
  }

  @override
  Future<void> logout() async {
    await storageRepository.delete('token');
  }

  @override
  Future<String?> getToken() async {
    return await storageRepository.get('token');
  }

  @override
  Future<bool> isAuthenticated() async {
    return (await getToken()) != null;
  }
}
