import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_exemplo/app/categoria/categoria_module.dart';
import 'package:flutter_modular_exemplo/app/produto/produto_page.dart';

class ProdutoModule extends Module {
  @override
  List<Module> get imports => [CategoriaModule()];

  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/:nome',
      child: (context, args) => ProdutoPage(nome: Modular.args.params['nome']),
    ),
    ChildRoute(
      '/xyz',
      child: (context, args) =>
          ProdutoPage(nome: Modular.args.queryParams['nome']),
    )
  ];
}
