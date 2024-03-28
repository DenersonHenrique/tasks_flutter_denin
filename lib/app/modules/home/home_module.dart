import 'package:flutter_modular/flutter_modular.dart';

import 'presentantion/home.dart';

// import 'presentation/home_page.dart';
// import 'presentation/home_viewmodel.dart';

class HomeModule extends Module {
  @override
  void binds(i) {
    // i.addLazySingleton<IPokedexHomeDatasource>(
    //   () => PokedexHomeDataSource(
    //     i.get<IHttpClient>(),
    //   ),
    // );
    // i.addLazySingleton<IPokedexHomeRepository>(PokedexHomeRepository.new);
    // i.addSingleton<IGetPokemonListUsecase>(GetPokemonListUsecase.new);
    // i.addSingleton<HomeViewModel>(HomeViewModel.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => const HomePage(),
    );
  }
}
