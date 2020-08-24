import 'package:flutter/material.dart';
import 'package:infoveapp1/src/bloc/provider.dart';

class PlacaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);

    return Scaffold(
      appBar: AppBar(title: Text('Busqueda Por Documento')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('usr: ${bloc.usr}'),
          Divider(),
          Text('pwd: ${bloc.pwd}')
        ],
      ),
    );
  }
}
