import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/widgets/meuchapa_appbar.dart';
import 'recompensas_controller.dart';

class RecompensasPage extends StatefulWidget {
  final String title;
  const RecompensasPage({Key key, this.title = "Recompensas"}) : super(key: key);

  @override
  _RecompensasPageState createState() => _RecompensasPageState();
}

class _RecompensasPageState extends ModularState<RecompensasPage, RecompensasController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MeuChapaAppBar.getAppBar(title: widget.title),
      body: Column(
        children: const <Widget>[],
      ),
    );
  }
}
