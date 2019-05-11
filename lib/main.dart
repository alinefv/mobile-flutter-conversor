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
    return Container();
  }
}