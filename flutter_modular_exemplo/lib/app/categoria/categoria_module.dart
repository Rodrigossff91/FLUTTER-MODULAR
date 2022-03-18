import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_exemplo/app/categoria/categoria_page.dart';
import 'package:flutter_modular_exemplo/app/produto/produto_module.dart';

class CategoriaModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => CategoriaPage(categoria: args.data),
        ),
        ModuleRoute('/produto', module: ProdutoModule())
      ];
}
