import 'package:flutter/material.dart';
import 'package:flutter_app/ex18/routes/primeira_rota.dart';
import 'package:flutter_app/ex18/routes/segunda_rota.dart';


void main() => runApp(MeuAplicativo());

class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PrimeiraRoute(),
      routes: {
        PrimeiraRoute.routeName: (context) => PrimeiraRoute(),
        SegundaRoute.routeName: (context) => SegundaRoute(),
      },
    );
  }
}