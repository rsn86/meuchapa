import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'sos_controller.dart';

class SosPage extends StatefulWidget {
  final String title;
  const SosPage({Key key, this.title = "Sos"}) : super(key: key);

  @override
  _SosPageState createState() => _SosPageState();
}

class _SosPageState extends ModularState<SosPage, SosController> {
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
