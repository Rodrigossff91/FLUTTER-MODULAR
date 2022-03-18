import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_exemplo/app/categoria/modelo/preco_model.dart';

class CategoriaController implements Disposable {
  PrecoModel precoModel;
  CategoriaController({
    required this.precoModel,
  }) {
    print('CATEGORIA CONTROLLER${hashCode}');
    print('CATEGORIA CONTROLLER${precoModel.hashCode}');
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
