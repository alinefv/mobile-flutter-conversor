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

  GlobalKey<FormState> _formKey = GlobalKey <FormState>();

  void _resetFields (){
    celciusController.text = "";
    fahrenheitController.text = "";
  }

  void _converter(){
    double celcius = double.parse(celciusController.text);
    double fahrenheit = celcius * 1.8 + 32.0;
    fahrenheitController.text = fahrenheit.toStringAsFixed(4);
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
     onPressed: (){
       if (_formKey.currentState.validate()){
         _converter();
       }
     },
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

    TextFormField tempCelsius = TextFormField (
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: "Temperatura em Graus Celsius",
        labelStyle: styleDecoration,
    ),
      textAlign: TextAlign.center,
      style: styleField,
      controller: celciusController,
      validator: (value){
        if (value.isEmpty){
          return "Informe um Valor";
        }
      },
    );

    TextFormField tempFahrenheit = TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: "Temperatura em Graus Fahrenheit",
          labelStyle: styleDecoration,
      ),
      textAlign: TextAlign.center,
      style: styleField,
      controller: fahrenheitController,
      validator: (value){
        if (value.isEmpty){
          return "Informe um Valor";
        }
      },
    );

    Column colum = Column (
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        icon, tempCelsius, tempFahrenheit, padding,
      ],
    );

    Form form = Form(
      child: colum,
    key: _formKey,
    );

    SingleChildScrollView singleChildScrollView = SingleChildScrollView(
      child: form,
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