import 'package:flutter/material.dart';
import 'package:infoveapp1/src/bloc/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);

    return Scaffold(
      appBar: AppBar(title: Text('Home')),
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
