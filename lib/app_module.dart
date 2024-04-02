import 'package:flutter_modular/flutter_modular.dart';

import 'app/commons/adapters/http/http_client.dart';
import 'app/commons/adapters/http/http_client_impl.dart';
import 'app/commons/adapters/storage/storage_adapter.dart';
import 'app/commons/adapters/storage/storage_client.dart';
import 'app/modules/auth/auth_module.dart';
import 'app/modules/auth/presentation/auth_page.dart';
import 'app/modules/home/home_module.dart';
// import 'app/modules/home/presentantion/home.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.addSingleton<IHttpClient>(HttpClient.new);
    i.addSingleton<IStorageClient<String>>(StorageAdapter.new);
  }

  @override
  List<Module> get imports => [
        HomeModule(),
        AuthModule(),
      ];

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => const AuthPage(),
    );
    r.module(
      '/auth',
      module: AuthModule(),
    );
    r.module(
      '/home',
      module: HomeModule(),
    );
  }
}
