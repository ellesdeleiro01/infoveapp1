import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infoveapp1/src/models/proceso_model.dart';
//import 'package:infoveapp1/src/bloc/provider.dart';

class PlacaPage extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final Proceso proceso = new Proceso();
  Widget _placa() {
    return TextFormField(
      //gg
      initialValue: proceso.placa,
      decoration: InputDecoration(labelText: 'Placa '),
      onSaved: (value) => proceso.placa = value,
      validator: (value) {
        if (value.isEmpty) {
          return 'rellenar campos';
        }
        return null;
      },
      maxLength: 6,
      textCapitalization: TextCapitalization.characters,
    );
  }

  Widget _vigencia() {
    return TextFormField(
      //gg
      initialValue: proceso.vigencia.toString(),
      decoration: InputDecoration(labelText: 'vigencia '),
      onSaved: (value) => proceso.vigencia = int.parse(value),
      validator: (value) {
        if (value.isEmpty) {
          return 'rellenar campos';
        }
        return null;
      },
      textCapitalization: TextCapitalization.characters,
    );
  }
  /* Widget _vigencia() {
    return CupertinoPageScaffold(
        child: Container(
            child: CupertinoPicker(
                itemExtent: 50,
                onSelectedItemChanged: (int index) {
                  print(index);
                },
                children: <Widget>[
          Text('1999'),
          Text('2000'),
          Text('2002'),
          Text('2003'),
          Text('2004'),
          Text('2005'),
          Text('2006'),
          Text('2007'),
          Text('2008'),
          Text('2009'),
          Text('2010'),
          Text('2012'),
          Text('2013'),
        ])));
  }*/

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

  @override
  Widget build(BuildContext context) {
    //final bloc = Provider.of(context);

    return Scaffold(
        appBar: AppBar(title: Text('Busqueda Por Placa')),
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(15.0),
              child: Form(
                  key: formKey,
                  child: Column(children: <Widget>[
                    SizedBox(height: 30.0),
                    _placa(),
                    SizedBox(height: 60.0),
                    _vigencia(),
                    SizedBox(height: 30.0),
                    _boton(),
                  ]))),
        ));
  }

  void _submit() async {
    if (!formKey.currentState.validate()) return;
    formKey.currentState.save();
    print(proceso.placa);
    print(proceso.vigencia);
  }
}
