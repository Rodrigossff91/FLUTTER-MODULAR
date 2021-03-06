import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_exemplo/app/categoria/categoria_page.dart';
import 'package:flutter_modular_exemplo/app/categoria/modelo/categoria_controller.dart';
import 'package:flutter_modular_exemplo/app/categoria/modelo/preco_model.dart';
import 'package:flutter_modular_exemplo/app/produto/produto_module.dart';

import 'modelo/x.dart';

class CategoriaModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton((i) => X(), export: true),
        Bind.lazySingleton((i) => PrecoModel(x: i()), export: true),
        Bind.lazySingleton(((i) => CategoriaController(precoModel: i())))
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => CategoriaPage(categoria: args.data),
        ),
        ModuleRoute('/produto', module: ProdutoModule())
      ];
}
