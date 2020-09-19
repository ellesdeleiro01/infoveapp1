import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:infoveapp1/src/login_state.dart';


class PlacaPage2 extends StatelessWidget {
  int _currentIndex = 0;
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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        elevation: 10.0,
        padding: EdgeInsets.symmetric(horizontal: 70.0, vertical: 12.0),
        color: Color(0xFF2172af),
        textColor: Colors.white,
        label: Text('Buscar', style: TextStyle(fontSize: 18, color: Colors.white),),
        icon: Icon(Icons.search),
        onPressed: () {});
  }

  @override
  Widget build(BuildContext context) {
    //final bloc = Provider.of(context);

    return Scaffold(
        appBar: AppBar(title: Center(
          child: const Text('Consulta por placa'),
        ),
          leading: IconButton(
            tooltip: 'Atrás',
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pushReplacementNamed(context, 'menu'),
          ),),
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
                    SizedBox(height: 300.0),
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
        bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        fixedColor: Color(0xFF2172af),
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        selectedFontSize: 16,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Principal'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Buscar'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            title: Text('Cámara'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Mi Perfil'),
          ),
        ]
    ),
    );
  }
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void setState(Null Function() param0) {}
}