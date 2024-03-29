import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/auth_page.dart';

class AuthModule extends Module {
  @override
  void binds(i) {}
  // List<Bind> get binds => [
  //   // Add login page services/bindings here
  //   // Example: Bind((i) => LoginService()),
  // ];

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => const AuthPage(),
    );
  }
}
