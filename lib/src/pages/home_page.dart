//import 'dart:js';

import 'package:flutter/material.dart';
//import 'package:infoveapp1/src/bloc/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final bloc = Provider.of(context);

    return Scaffold(
      appBar: AppBar(title: Text('Inicio')),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Form(
            //key: formKey,
            child: Column(
              children: <Widget>[
                SizedBox(height: 110.0),
                _crearBoton(context),
                SizedBox(height: 50.0),
                _crearBoton2(context),
                SizedBox(height: 50.0),
                _crearBoton3(context)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _crearBoton(BuildContext context) {
  return RaisedButton(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 50.0),
      child: Text('Consulta por Documento'),
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5.0),
    ),
    color: Colors.blue,
    textColor: Colors.black,
    onPressed: () => Navigator.pushReplacementNamed(context, 'documento'),
  );
}

Widget _crearBoton2(BuildContext context) {
  return RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 50.0),
        child: Text('Consulta por Placa y Fecha'),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      color: Colors.blue,
      textColor: Colors.black,
      onPressed: () => Navigator.pushReplacementNamed(context, 'placa'));
}

Widget _crearBoton3(BuildContext context) {
  return RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 50.0),
        child: Text('Sugerencias y o peticiones'),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      color: Colors.blue,
      textColor: Colors.black,
      onPressed: (null));
}
