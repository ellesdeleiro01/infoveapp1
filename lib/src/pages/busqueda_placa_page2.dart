import 'package:flutter/material.dart';
//import 'package:infoveapp1/src/bloc/provider.dart';

class PlacaPage2 extends StatelessWidget {
  Widget _placa() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Placa '),
      maxLength: 6,
      textCapitalization: TextCapitalization.characters,
    );
  }

  Widget _vigencia() {
    return DropdownButton(
      //keyboardType: TextInputType.number,
      //decoration: InputDecoration(labelText: 'Vigencia '),
      items: null,
      hint: Text('Vigencia'),
    );
  }

  Widget _boton() {
    return RaisedButton.icon(
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
        color: Colors.blue,
        textColor: Colors.white,
        label: Text('Buscar'),
        icon: Icon(Icons.search),
        onPressed: () {});
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
                  child: Column(children: <Widget>[
                    SizedBox(height: 30.0),
                    _placa(),
                    SizedBox(height: 30.0),
                    _vigencia(),
                    SizedBox(height: 30.0),
                    _boton(),
                  ]))),
        ));
  }
}