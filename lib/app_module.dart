import 'package:flutter_modular/flutter_modular.dart';

import 'app/commons/adapters/http_client.dart';
import 'app/commons/adapters/http_client_impl.dart';
import 'app/modules/home/home_module.dart';
import 'app/modules/home/presentantion/home.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.addSingleton<IHttpClient>(HttpClient.new);
  }

  @override
  List<Module> get imports => [
        HomeModule(),
      ];

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => const HomePage(),
    );
    r.module(
      '/home',
      module: HomeModule(),
    );
  }
}
