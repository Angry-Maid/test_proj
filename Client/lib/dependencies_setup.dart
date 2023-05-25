import 'package:client/data/domain/entity/config/app_settings.dart';
import 'package:client/data/domain/repository/api/api_client.dart';
import 'package:client/data/domain/repository/app_settings/local_app_settings.dart';
import 'package:client/data/domain/repository/auth/auth_repo_impl.dart';
import 'package:client/data/domain/repository/auth/i_auth_repo.dart';
import 'package:storage_repository/implementations/secure_storage_repository.dart';
import 'package:storage_repository/implementations/storage_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

Future setupInjections() async {
  initAppSettings();
  
  await initGlobalSecureStorageModule();
  initHttpClient();
  await initRepositories();
}

Future<void> initRepositories() async {
  final SecureStorageRepository secureStorageRepository =
      await GetIt.I.getAsync<SecureStorageRepository>();
  final AppSettings appSettings = GetIt.I.get<AppSettings>();
  final Dio httpClient = GetIt.I.get<Dio>();

  GetIt.I.registerSingletonWithDependencies<IAuthRepository>(
    () => ApiAuthRepository(
      appSettings: appSettings,
      httpClient: httpClient,
      storageRepository: secureStorageRepository,
    ),
    dependsOn: [SecureStorageRepository],
  );

  GetIt.I.registerFactory<ApiClient>(
    () => ApiClient(
      httpClient,
      baseUrl: appSettings.baseApiUrl,
    ),
  );
}

void initAppSettings() {
  GetIt.I.registerSingleton<AppSettings>(LocalAppSettings());
}

dynamic initGlobalSecureStorageModule() async {
  GetIt.I.registerSingletonAsync<SecureStorageRepository>(() async {
    await StorageRepository.initFlutter();
    final SecureStorageRepository storage = SecureStorageRepository();
    await storage.init();
    return storage;
  });
}

dynamic initHttpClient() {
  GetIt.I.registerSingletonAsync<Dio>(() async => initHttpClientAsync(),
      dispose: (Dio client) => client.close());
}

Future<Dio> initHttpClientAsync() async {
  final AppSettings appSettings = GetIt.I.get<AppSettings>();
  final Dio httpClient = Dio(
    BaseOptions(
      baseUrl: appSettings.baseUrl,
    ),
  );

  httpClient.options.headers['Access-Control-Allow-Origin'] = '*';

  httpClient.options.contentType = Headers.jsonContentType;

  return httpClient;
}
