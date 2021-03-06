import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_exemplo/app/categoria/categoria_module.dart';
import 'package:flutter_modular_exemplo/app/produto/produto_module.dart';
import 'package:flutter_modular_exemplo/app/splash/splash_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => const SplashPage(),
        ),
        ModuleRoute('/categoria', module: CategoriaModule()),
        ModuleRoute('/produto', module: ProdutoModule())
      ];
}
