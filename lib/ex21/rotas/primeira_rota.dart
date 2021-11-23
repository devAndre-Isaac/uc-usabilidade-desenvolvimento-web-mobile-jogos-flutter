import 'package:flutter/material.dart';

class PrimeiraRoute extends StatefulWidget {
  @override
  PrimeiraRotaState createState() => PrimeiraRotaState();
}

class PrimeiraRotaState extends State<PrimeiraRoute> {
  @override
  Widget build(BuildContext context) {
    TextStyle estilo = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.green,
    );
    return Center(
      child: Text(
        'Primeira Rota',
        style: estilo,
      ),
    );
  }
}