import 'package:flutter/material.dart';
import 'package:infoveapp1/src/bloc/provider.dart';
import 'package:infoveapp1/src/pages/home_page.dart';

class DocumentoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);

    return Scaffold(
      appBar: AppBar(title: Text('Busqueda Por Documento'), actions: <Widget>[
        IconButton(
            icon: Icon(Icons.reply),
            onPressed: () {
              //para retroceder
              // Navigator.pop(context);
            })
      ]),
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
