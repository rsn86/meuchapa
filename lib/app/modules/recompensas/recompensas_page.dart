import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/widgets/meuchapa_appbar.dart';
import 'recompensas_controller.dart';

class RecompensasPage extends StatefulWidget {
  final String title;
  const RecompensasPage({Key key, this.title = "Meu Chapa"}) : super(key: key);

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
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Center(
            child: CircleAvatar(
              backgroundColor: Colors.yellow,
              radius: 65,
              child: Text(
                'Você tem\n20\nPontos',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                  fontSize: 22,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          RaisedButton(
            color: Colors.blueGrey,
            onPressed: null,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              //side: BorderSide(color: Colors.red),
            ),
            padding: const EdgeInsets.only(left: 80, right: 80),
            child: Text(
              "Como ganhar pontos",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          RaisedButton(
            color: Colors.blueGrey,
            onPressed: null,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              //side: BorderSide(color: Colors.red),
            ),
            padding: const EdgeInsets.only(left: 75, right: 75),
            child: Text(
              "Lista de Recompensas",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          RaisedButton(
            color: Colors.blueGrey,
            onPressed: null,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              //side: BorderSide(color: Colors.red),
            ),
            padding: const EdgeInsets.only(left: 97, right: 97),
            child: Text(
              "Como Funciona",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
