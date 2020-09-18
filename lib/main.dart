import 'package:flutter/material.dart';
import 'package:infoveapp1/src/login_state.dart';
import 'package:provider/provider.dart';
//import 'package:infoveapp1/src/bloc/provider.dart';
import 'package:infoveapp1/src/pages/menu_page.dart';
import 'package:infoveapp1/src/pages/login_pages.dart';
import 'package:infoveapp1/src/pages/busqueda_documento_page.dart';
import 'package:infoveapp1/src/pages/busqueda_placa_page.dart';
import 'package:infoveapp1/src/pages/menu_page2.dart';
import 'package:infoveapp1/src/pages/prueba.dart';
import 'package:infoveapp1/src/pages/busqueda_documento_page2.dart';
import 'package:infoveapp1/src/pages/busqueda_placa_page2.dart';
import 'package:infoveapp1/src/pages/login2_pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LoginState>(
      builder: (BuildContext context) => LoginState(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: Color(0xFF2172af),
            scaffoldBackgroundColor: Colors.white,
            buttonColor: Color(0xFF2172af),
          ),
         //initialRoute: 'login2',
          routes: {
            '/': (BuildContext context) {
              var state = Provider.of<LoginState>(context);
              if (state.isLoggedIn()) {
                return MenuPage();
              }else{
                return LoginPage2();
              }
            },
            'Consulta por número de documento': (BuildContext context) => DocumentoPage(),
            'Consulta por placa y fecha': (BuildContext context) => PlacaPage(),
            //'login': (BuildContext context) => LoginPage(),
            //'login2': (BuildContext context) => LoginPage2(),
           'menu': (BuildContext context) => MenuPage(),
            //'menu2': (BuildContext context) => MenuPage2(),
           // 'consultNúmeroDocumento': (BuildContext context) =>
            //    DocumentoPage2(),
           // 'consultaPlacayFecha': (BuildContext context) => PlacaPage2(),
           // 'prueba': (BuildContext context) => AppBarBottomSample(),

          },
        ),
    );
  }
}
