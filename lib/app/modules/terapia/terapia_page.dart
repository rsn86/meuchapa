import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'terapia_controller.dart';

class TerapiaPage extends StatefulWidget {
  final String title;
  const TerapiaPage({Key key, this.title = "Terapia"}) : super(key: key);

  @override
  _TerapiaPageState createState() => _TerapiaPageState();
}

class _TerapiaPageState extends ModularState<TerapiaPage, TerapiaController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: const <Widget>[],
      ),
    );
  }
}
