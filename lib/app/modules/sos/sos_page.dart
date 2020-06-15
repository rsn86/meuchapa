import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/widgets/meuchapa_appbar.dart';
import 'sos_controller.dart';

class SosPage extends StatefulWidget {
  final String title;
  const SosPage({Key key, this.title = "Meu Chapa"}) : super(key: key);

  @override
  _SosPageState createState() => _SosPageState();
}

class _SosPageState extends ModularState<SosPage, SosController> {
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
              backgroundColor: Colors.red,
              radius: 65,
              child: Text(
                'SOS',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 40,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Você está em uma via concessionalizada CCR\nAutoban, os serviços oferecidos são:',
          ),
          const SizedBox(
            height: 10,
          ),
          RaisedButton(
            color: Colors.blueGrey,
            onPressed: null,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              //side: BorderSide(color: Colors.red),
            ),
            padding: const EdgeInsets.only(left: 80, right: 80),
            child: const Text(
              "Emergência de saúde",
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
            child: const Text(
              "Emergência na estrada",
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
            padding: const EdgeInsets.only(left: 92, right: 92),
            child: const Text(
              "Paradas e Postos",
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
            padding: const EdgeInsets.only(left: 64, right: 64),
            child: const Text(
              "Acompanhamento médico",
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
