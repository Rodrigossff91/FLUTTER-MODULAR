import 'package:flutter/material.dart';

class Produto2Page extends StatefulWidget {
  final String? nome;

  const Produto2Page({Key? key, this.nome}) : super(key: key);

  @override
  State<Produto2Page> createState() => _Produto2PageState();
}

class _Produto2PageState extends State<Produto2Page> {
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
            Text(widget.nome ?? "aaa")
          ],
        ),
      ),
    );
  }
}
