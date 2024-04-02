import 'package:flutter_modular/flutter_modular.dart';

import '../auth/data/datasources/auth_local_datasource.dart';
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
    i.addLazySingleton<IAuthLocalDatasource>(AuthLocalDatasource.new);
    i.addSingleton<SplashViewModel>(SplashViewModel.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => const SplashPage(),
    );
  }
}
