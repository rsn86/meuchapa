import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../terapia_controller.dart';

class AvaliacaoPage extends StatefulWidget {
  final String title;
  const AvaliacaoPage({Key key, this.title = "Meu Chapa"}) : super(key: key);
  @override
  _AvaliacaoPageState createState() => _AvaliacaoPageState();
}

class _AvaliacaoPageState extends ModularState<AvaliacaoPage, TerapiaController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const <Widget>[
          Center(
            child: Text('Avalição'),
          ),
        ],
      ),
    );
  }
}
