import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_exemplo/app/categoria/modelo/preco_model.dart';

class ProdutoPage extends StatefulWidget {
  final String? nome;

  const ProdutoPage({Key? key, this.nome}) : super(key: key);

  @override
  State<ProdutoPage> createState() => _ProdutoPageState();
}

class _ProdutoPageState extends State<ProdutoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //  Text(Modular.args.params["nome"] ?? "aaa")
            Text(widget.nome ?? "aaa"),
            TextButton(
                onPressed: () {
                  Modular.get<PrecoModel>();
                },
                child: const Text("Get preço"))
          ],
        ),
      ),
    );
  }
}
