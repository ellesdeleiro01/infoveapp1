import 'package:flutter/material.dart';
//import 'package:infoveapp1/src/bloc/login_bloc.dart';
//export 'package:infoveapp1/src/bloc/login_bloc.dart';
import 'package:infoveapp1/src/bloc/provider.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        _crearFondo(context),
        _loginForm(context),
      ],
    ));
  }

  Widget _loginForm(BuildContext context) {
    final bloc = Provider.of(context);
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SafeArea(
            child: Container(
              height: 180.0,
            ),
          ),
          Container(
            width: size.width * 0.85,
            margin: EdgeInsets.symmetric(vertical: 30.0),
            padding: EdgeInsets.symmetric(vertical: 50.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 3.0,
                      offset: Offset(0.0, 5.0),
                      spreadRadius: 3.0)
                ]),
            child: Column(
              children: <Widget>[
                Text('ingreso', style: TextStyle(fontSize: 20.0)),
                SizedBox(height: 60.0),
                _crearUsr(bloc),
                SizedBox(height: 30.0),
                _crearPwd(bloc),
                SizedBox(height: 30.0),
                _crearBoton(bloc)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _crearUsr(LoginBloc bloc) {
    return StreamBuilder(
      stream: bloc.usrStream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                icon: Icon(Icons.accessibility, color: Colors.blue),
                hintText: 'example@example.com',
                labelText: 'Correo',
                counterText: snapshot.data,
                errorText: snapshot.error),
            onChanged: bloc.changeUsr,
          ),
        );
      },
    );
  }

  Widget _crearPwd(LoginBloc bloc) {
    return StreamBuilder(
      stream: bloc.pwdStream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
                icon: Icon(Icons.keyboard, color: Colors.blue),
                hintText: 'contraseña',
                labelText: 'Contraseña',
                //counterText: snapshot.data,
                errorText: snapshot.error),
            onChanged: bloc.changePwd,
          ),
        );
      },
    );
  }

  Widget _crearBoton(LoginBloc bloc) {
    return StreamBuilder(
      stream: bloc.formValidStream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return RaisedButton(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
              child: Text('Entrar'),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            elevation: 0.0,
            color: Colors.blue,
            textColor: Colors.black,
            onPressed: snapshot.hasData ? () => _login(bloc, context) : null);
      },
    );
  }

  _login(LoginBloc bloc, BuildContext context) {
    print('================');
    print('usr: ${bloc.usr}');
    print('Password: ${bloc.pwd}');
    print('================');

    Navigator.pushReplacementNamed(context, 'home');
  }

  Widget _crearFondo(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final Fondo = Container(
      height: size.height * 0.7,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: <Color>[
        Color.fromRGBO(52, 126, 249, 1.0),
        Color.fromRGBO(52, 126, 249, 1.0),
      ])),
    );

    return Stack(
      children: <Widget>[
        Fondo,
      ],
    );
  }
}
