import 'package:flutter/material.dart';
import 'package:flutter_app/ex18/routes/segunda_rota.dart';
import 'package:flutter_app/ex19/components/cartao.dart';
import 'package:flutter_app/ex19/rotas/segunda_rota.dart';
import 'package:flutter_app/ex19/models/transporte.dart';
import 'package:flutter_app/ex19/rotas/rota_generica.dart';


class PrimeiraRoute extends StatefulWidget {
  @override
  PrimeiraRouteState createState() => PrimeiraRouteState();
}

class PrimeiraRouteState extends State<PrimeiraRoute> {
  Transporte transporte = transportes[0];

  void selecionar(Transporte transporteEscolhido) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => RotaGenerica(
            transporte: transporteEscolhido,
          ),
        ),
      );

  List<PopupMenuItem<Transporte>> getListaItensMenu() {
    List<PopupMenuItem<Transporte>> lista;
    lista = transportes.skip(2).map(
      (Transporte transporte) {
        return PopupMenuItem<Transporte>(
          value: transporte,
          child: Text(transporte.titulo),
        );
      },
    ).toList();
    return lista;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.video_collection),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SegundaRoute()),
          ),
          tooltip: 'Coleção de Vídeos',
        ),
        title: Text('Primeira Rota'),
        actions: <Widget>[
          IconButton(
            icon: Icon(transportes[0].icone),
            onPressed: () => selecionar(transportes[0]),
          ),
          IconButton(
            icon: Icon(transportes[1].icone),
            onPressed: () => selecionar(transportes[1]),
          ),
          PopupMenuButton<Transporte>(
            onSelected: selecionar,
            itemBuilder: (BuildContext context) => getListaItensMenu(),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Cartao(this.transporte),
      ),
    );
  }
}