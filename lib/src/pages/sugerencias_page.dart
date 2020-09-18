import 'package:flutter/material.dart';
//import 'package:infoveapp1/src/bloc/provider.dart';
//import 'package:infoveapp1/src/pages/home_page.dart';

class SugerenciasPage extends StatelessWidget {
  @override
  final formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    //final bloc = Provider.of(context);

    return Scaffold(
        appBar: AppBar(title: Text('sugerencias y peticiones')),
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(15.0),
              child: Form(
                  key: formKey,
                  child: Column(children: <Widget>[
                    SizedBox(height: 30.0),
                    _asunto(),
                    SizedBox(height: 30.0),
                    _descripcion(),
                    SizedBox(height: 30.0),
                    _boton(),
                  ]))),
        ));
  }

  Widget _asunto() {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(labelText: 'Asunto '),
      validator: (value) {
        if (value.isEmpty) {
          return 'rellenar campos';
        }
        return null;
      },
    );
  }

  Widget _descripcion() {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(labelText: 'Descripcion '),
      validator: (value) {
        if (value.isEmpty) {
          return 'rellenar campos';
        }
        return null;
      },
    );
  }

  Widget _boton() {
    return RaisedButton.icon(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
      color: Colors.blue,
      textColor: Colors.white,
      label: Text('Enviar'),
      icon: Icon(Icons.search),
      onPressed: _submit,
    );
  }

  void _submit() async {
    if (!formKey.currentState.validate()) return;
  }
}
