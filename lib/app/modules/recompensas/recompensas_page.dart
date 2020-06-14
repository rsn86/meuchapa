import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'recompensas_controller.dart';

class RecompensasPage extends StatefulWidget {
  final String title;
  const RecompensasPage({Key key, this.title = "Recompensas"})
      : super(key: key);

  @override
  _RecompensasPageState createState() => _RecompensasPageState();
}

class _RecompensasPageState
    extends ModularState<RecompensasPage, RecompensasController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
