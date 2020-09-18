import 'package:flutter/material.dart';


class PlacaPage extends StatelessWidget {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text('Consulta por placa y fecha'),
        ),
        leading: IconButton(
          tooltip: 'Atrás',
          icon: const Icon(Icons.arrow_back),
          onPressed: () =>
              Navigator.pushReplacementNamed(context, 'menu'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        ],
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
          ]),
    );

  }
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void setState(Null Function() param0) {}

}

