import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Splash'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  // Navigator.pushNamed(context, '/categoria');
                  // Recupera parametros pelo args
                  Modular.to.pushNamed("/categoria",
                      arguments: 'Categoria Selecionada');
                },
                child: const Text("Categoria Module"),
              ),
              TextButton(
                onPressed: () {
                  // Navigator.pushNamed(context, '/produto');
                  // Recupera parametros pelo Params
                  Modular.to.pushNamed(
                    "/produto/Rodrigo",
                  );
                },
                child: const Text("Produto Module"),
              ),
              TextButton(
                onPressed: () {
                  // Navigator.pushNamed(context, '/produto');
                  // Recupera parametros pelo Query Params
                  Modular.to.pushNamed(
                    "/produto/xyz?nome=Rodrigo",
                  );
                },
                child: const Text("Produto Query Param Module"),
              ),
              TextButton(
                onPressed: () {
                  Modular.to.pushNamed(
                    "/categoria/produto/xyz?nome=Rodrigo",
                  );
                },
                child: const Text("Produto dentro de categoria"),
              )
            ],
          ),
        ));
  }
}
