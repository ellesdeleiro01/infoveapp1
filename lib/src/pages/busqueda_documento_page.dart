import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:infoveapp1/src/login_state.dart';
import 'package:provider/provider.dart';
import 'package:infoveapp1/src/utils/utils.dart' as utils;

class DocumentoPage extends StatefulWidget {
  @override
  _DocumentoPageState createState() => _DocumentoPageState();
}

class _DocumentoPageState extends State<DocumentoPage> {

  Widget _bottomAction(IconData icon, Function callback) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(icon),
      ),
      onTap: callback,
    );
  }

  @override
  final formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text('Consulta por número de documento'),
        ),
        leading: IconButton(
          tooltip: 'Atrás',
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pushReplacementNamed(context, 'menu'),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8.0,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _bottomAction(FontAwesomeIcons.home, () {
              Navigator.pushNamed(context, 'menu');
            }),
            _bottomAction(FontAwesomeIcons.chartPie, () {}),
            SizedBox(width: 48.0),
            _bottomAction(FontAwesomeIcons.wallet, () {}),
            _bottomAction(Icons.settings_power, () {
              Provider.of<LoginState>(context).logout();
            }),
          ],
        ),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return SafeArea(
      child: Column(children: <Widget>[
        SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(15.0),
              child: Form(
                  key: formKey,
                  child: Column(children: <Widget>[
                    SizedBox(height: 30.0),
                    _documento(),
                    SizedBox(height: 30.0),
                    _boton(),
                    SizedBox(height: 400.0),
                    Container(
                      width: 180,
                      child: RaisedButton.icon(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                          elevation: 10.0,
                          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
                          color: Color(0xFF2172af),
                          textColor: Colors.white,
                          label: Text('Cerrar sesión', style: TextStyle(fontSize: 14, color: Colors.white),),
                          icon: Icon(Icons.settings_power),
                          onPressed: () {Provider.of<LoginState>(context).logout();
                          Navigator.of(context).pop();}),
                    ),
                  ]))),
        ),
      ]),
    );
  }

  Widget _documento() {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(labelText: 'Documento '),
      validator: (value) {
        if (utils.isNumeric(value)) {
          return null;
        } else {
          return 'Ingrese un documento válido';
        }
      },
    );
  }

  Widget _boton() {
    return RaisedButton.icon(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      elevation: 10.0,
      padding: EdgeInsets.symmetric(horizontal: 70.0, vertical: 12.0),
      color: Color(0xFF2172af),
      textColor: Colors.white,
      label: Text('Buscar', style: TextStyle(fontSize: 18, color: Colors.white),),
      icon: Icon(Icons.search),
      onPressed: _submit,
    );
  }

  void _submit() async {
    if (!formKey.currentState.validate()) return;
  }
}
