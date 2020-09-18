import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:infoveapp1/src/bloc/provider.dart';
import 'package:infoveapp1/src/pages/menu_page.dart';

class DocumentoPage extends StatefulWidget {
  @override
  _DocumentoPageState createState() => _DocumentoPageState();
}
PageController _controller;
int currentPage = 9;
class _DocumentoPageState extends State<DocumentoPage> {


  @override
  void initState() {
    super.initState();

    _controller = PageController(
      initialPage: currentPage,
      viewportFraction: 0.4,
    );
  }
}

Widget _bottomAction(IconData icon) {
  return InkWell(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(icon),
    ),
    onTap: () {},
  );
}

@override
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
          _bottomAction(FontAwesomeIcons.home),
          _bottomAction(FontAwesomeIcons.chartPie),
          SizedBox(width: 48.0),
          _bottomAction(FontAwesomeIcons.wallet),
          _bottomAction(Icons.settings),
        ],
      ),
    ),
    body: _body(),
  );
}

Widget _body() {
  return SafeArea(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[_selector(), Text('usuario'), Divider(), Text('pwd:')],
    ),
  );
}

Widget _pageItem(String name, int position) {
  var _alignment;
  final selected = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: Colors.blueGrey,
  );
  final unselected = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.normal,
    color: Colors.blueGrey.withOpacity(0.4),
  );

  if (position == currentPage) {
    _alignment = Alignment.center;
  } else if (position > currentPage) {
    _alignment = Alignment.centerRight;
  } else {
    _alignment = Alignment.centerLeft;
  }

  return Align(
    alignment: _alignment,
    child: Text(
      name,
      style: position == currentPage ? selected : unselected,
    ),
  );
}

Widget _selector() {
  return SizedBox.fromSize(
    size: Size.fromHeight(70.0),
    child: PageView(
      onPageChanged: (newPage) {
        setState(() {
          currentPage = newPage;
        });
      },
      controller: _controller,
      children: <Widget>[
        _pageItem("Enero", 0),
        _pageItem("Febrero", 1),
        _pageItem("Marzo", 2),
        _pageItem("Abril", 3),
        _pageItem("Mayo", 4),
        _pageItem("Junio", 5),
        _pageItem("Julio", 6),
        _pageItem("Agosto", 7),
        _pageItem("Septiembre", 8),
        _pageItem("Octubre", 9),
        _pageItem("Noviembre", 10),
        _pageItem("Diciembre", 11),
      ],
    ),
  );
}
