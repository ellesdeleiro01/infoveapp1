import 'package:flutter/material.dart';
import 'package:infoveapp1/src/utils/utils.dart' as utils;
//import 'package:infoveapp1/src/bloc/provider.dart';
//import 'package:infoveapp1/src/pages/home_page.dart';

class DocumentoPage2 extends StatelessWidget {
  @override
  final formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    //final bloc = Provider.of(context);

    return Scaffold(
        appBar: AppBar(title: Text('Busqueda Por Documento')),
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(15.0),
              child: Form(
                  key: formKey,
                  child: Column(children: <Widget>[
                    SizedBox(height: 30.0),
                    _documento(),
                    SizedBox(height: 30.0),
                    _boton(),
                  ]))),
        ));
  }

  Widget _documento() {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(labelText: 'Documento '),
      validator: (value) {
        if (utils.isNumeric(value)) {
          return null;
        } else {
          return 'rellenar con Numeros';
        }
      },
    );
  }

  Widget _boton() {
    return RaisedButton.icon(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
      color: Colors.blue,
      textColor: Colors.white,
      label: Text('Buscar'),
      icon: Icon(Icons.search),
      onPressed: _submit,
    );
  }

  void _submit() async {
    if (!formKey.currentState.validate()) return;
  }
}
