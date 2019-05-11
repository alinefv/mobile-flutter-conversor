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

    Icon icon = Icon(Icons.wb_sunny, size: 80, color: Colors.pinkAccent,);

    TextStyle styleDecoration = TextStyle(color: Colors.black, fontSize: 20);

    TextStyle styleField = TextStyle(color: Colors.pink);

    RaisedButton raisedButton = RaisedButton(
     onPressed: () {},
     child: Text("Calcular"),
     color: Colors.deepPurple
    );

    Container containerBtn = Container(
      height: 50.0,
      child: raisedButton,
    );

    TextField tempCelsius = TextField(keyboardType: TextInputType.number,
    decoration: InputDecoration(
        labelText: "Temperatura em Graus Celsius",
        labelStyle: styleDecoration,
    ),
      textAlign: TextAlign.center,
      style: styleField,
    );
    TextField tempFahrenheit = TextField(keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: "Temperatura em Graus Fahrenheit",
          labelStyle: styleDecoration,
      ),
      textAlign: TextAlign.center,
      style: styleField,
    );


    Column colum = Column (
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        icon, tempCelsius, tempFahrenheit, containerBtn,
      ],
    );

    Scaffold scaffold = Scaffold(
      appBar: appBar,
      backgroundColor: Colors.white,
      body: colum,
    );
    return scaffold;
  }
}