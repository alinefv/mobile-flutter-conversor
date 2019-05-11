import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home()
));//Faz a criação da tela ainda vazia  só carrega a tela

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController celciusController = TextEditingController();
  TextEditingController fahrenheitController = TextEditingController();

  void _resetFields (){
    celciusController.text = "";
    fahrenheitController.text = "";
  }

  @override
  Widget build(BuildContext context) {

    AppBar appBar = AppBar(
      title: Text("Conversor de Temperatura"),
      centerTitle: true,
      backgroundColor: Colors.deepPurple,
      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.refresh),
            onPressed: _resetFields,),
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
      height: 200.0,
      child: raisedButton,
    );

    Padding padding = Padding(
        padding:EdgeInsets.only(top: 20.0),
        child: containerBtn,
    );

    TextField tempCelsius = TextField(keyboardType: TextInputType.number,
    decoration: InputDecoration(
        labelText: "Temperatura em Graus Celsius",
        labelStyle: styleDecoration,
    ),
      textAlign: TextAlign.center,
      style: styleField,
      controller: celciusController,
    );

    TextField tempFahrenheit = TextField(keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: "Temperatura em Graus Fahrenheit",
          labelStyle: styleDecoration,
      ),
      textAlign: TextAlign.center,
      style: styleField,
      controller: fahrenheitController,
    );

    Column colum = Column (
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        icon, tempCelsius, tempFahrenheit, padding,
      ],
    );

    SingleChildScrollView singleChildScrollView = SingleChildScrollView(
      child: colum,
      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
    );

    Scaffold scaffold = Scaffold(
      appBar: appBar,
      backgroundColor: Colors.white,
      body: singleChildScrollView,
    );
    return scaffold;
  }
}