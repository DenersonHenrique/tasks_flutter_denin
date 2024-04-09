import 'package:flutter_modular/flutter_modular.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/commons/adapters/http/http_client.dart';
import 'app/commons/adapters/http/http_client_impl.dart';
import 'app/commons/adapters/storage/storage_adapter.dart';
import 'app/commons/adapters/storage/storage_client.dart';
import 'app/modules/auth/auth_module.dart';
import 'app/modules/home/home_module.dart';
import 'app/modules/splash/presentation/splash_page.dart';
import 'app/modules/splash/splash_module.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.addLazySingleton<SharedPreferences>(SharedPreferences.getInstance);
    i.addSingleton<IHttpClient>(HttpClient.new);
    i.addSingleton<IStorageClient>(StorageAdapter.new);
  }

  @override
  List<Module> get imports => [
        HomeModule(),
        AuthModule(),
        SplashModule(),
      ];

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      // child: (context) => const AuthPage(),
      child: (context) => const SplashPage(),
    );
    r.module(
      '/auth',
      module: AuthModule(),
    );
    r.module(
      '/home',
      module: HomeModule(),
    );
    r.module(
      '/',
      module: SplashModule(),
    );
  }
}
