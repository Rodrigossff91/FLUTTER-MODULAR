import 'package:flutter_modular_exemplo/app/categoria/modelo/preco_model.dart';

class CategoriaController {
  PrecoModel precoModel;
  CategoriaController({
    required this.precoModel,
  }) {
    print('CATEGORIA CONTROLLER${hashCode}');
  }
}
