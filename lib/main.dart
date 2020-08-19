import 'package:flutter/material.dart';
import 'package:infoveapp1/src/bloc/provider.dart';
import 'package:infoveapp1/src/pages/home_page.dart';
import 'package:infoveapp1/src/pages/login_pages.dart';

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
              'producto': (BuildContext context) => ProductoPage(),
            },
            theme: ThemeData(primaryColor: Colors.blue[700])));
  }
}
