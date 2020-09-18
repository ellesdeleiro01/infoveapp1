import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flare_dart/actor.dart';
//import 'package:infoveapp1/src/bloc/provider.dart';
import 'package:infoveapp1/src/login_state.dart';
import 'package:provider/provider.dart';

class LoginPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'BIENVENIDO',
            style: TextStyle(fontFamily: 'RussoOne', fontSize: 24.0),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(50.0),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Container(
                      width: 250,
                      height: 250,
                      child: FlareActor(
                        "assets/Infoveapp.flr",
                        animation: "Info",
                      ),
                    ),
                  ),
            Image(
              image: AssetImage('images/diamond.png'),
                  RaisedButton(
                    child: Text("Ingresar"),
                    onPressed: () => Provider.of<LoginState>(context).login(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
