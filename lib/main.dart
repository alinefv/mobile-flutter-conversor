import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home()
));//Faz a criação da tela ainda vazia  só carrega a tela

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    AppBar appBar = AppBar(
      title: Text("Conversor de Temperatura"),
      centerTitle: true,
      backgroundColor: Colors.deepPurple,
      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {},),
      ],
    );

    Icon icon = Icon(Icons.wb_sunny, size: 120, color: Colors.blue,);

    Column colum = Column (
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        icon,
      ],
    );

    Scaffold scaffold = Scaffold(
      appBar: appBar,
      backgroundColor: Colors.white70,
      body: colum,
    );
    return scaffold;
  }
}