import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_exemplo/app/categoria/modelo/categoria_controller.dart';

class CategoriaPage extends StatefulWidget {
  final String? categoria;

  const CategoriaPage({
    Key? key,
    this.categoria,
  }) : super(key: key);
  // categoria = Modular.args.data,

  @override
  State<CategoriaPage> createState() => _CategoriaPageState();
}

class _CategoriaPageState extends State<CategoriaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Categoria'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(widget.categoria ?? ""),
              ),
              TextButton(
                  onPressed: () {
                    var controller = Modular.get<CategoriaController>();
                  },
                  child: const Text("Get Controller"))
            ],
          ),
        ));
  }
}
