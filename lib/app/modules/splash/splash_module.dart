import 'package:flutter_modular/flutter_modular.dart';

import '../../commons/adapters/http/http_client.dart';
import '../../commons/adapters/storage/storage_client.dart';
import '../auth/data/datasources/auth_local_datasource.dart';
import '../auth/data/datasources/auth_remote_datasource.dart';
import '../auth/data/repositories/auth_repository.dart';
import '../auth/domain/repositories/auth_respository.dart';
import '../auth/services/auth.dart';
import 'presentation/splash_page.dart';
import 'presentation/splash_viewmodel.dart';

class SplashModule extends Module {
  @override
  void binds(i) {
    i.addLazySingleton<IAuthService>(AuthService.new);
    i.addLazySingleton<IAuthRepository>(AuthRepository.new);
    i.addSingleton<SplashViewModel>(SplashViewModel.new);
    i.addLazySingleton<IAuthRemoteDatasource>(
      () => AuthRemoteDatasource(
        i.get<IHttpClient>(),
        i.get<IStorageClient>(),
      ),
    );
    i.addLazySingleton<IAuthLocalDatasource>(
      () => AuthLocalDatasource(
        i.get<IStorageClient>(),
      ),
    );
  }

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => const SplashPage(),
    );
  }
}
