import 'package:flutter/material.dart';
import 'package:infoveapp1/src/bloc/provider.dart';
import 'package:infoveapp1/src/pages/home_page.dart';
import 'package:infoveapp1/src/pages/login_pages.dart';
import 'package:infoveapp1/src/pages/busqueda_documento_page.dart';
import 'package:infoveapp1/src/pages/busqueda_placa_page.dart';
import 'package:infoveapp1/src/pages/sugerencias_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Material App',
            initialRoute: 'home',
            routes: {
              'login': (BuildContext context) => LoginPage(),
              'home': (BuildContext context) => HomePage(),
              'documento': (BuildContext context) => DocumentoPage(),
              'placa': (BuildContext context) => PlacaPage(),
              'sugerencias': (BuildContext context) => SugerenciasPage(),
            },
            theme: ThemeData(primaryColor: Colors.blue[700])));
  }
}
