import 'package:flutter/material.dart';
import 'package:flutter_app/ex18/componentes/menu.dart';

class PrimeiraRoute extends StatelessWidget {
  static String routeName = '/primeira_rota';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira Rota'),
      ),
      drawer: Menu(),
      body: Center(
        child: const Text('Corpo'),
      ),
    );
  }
}