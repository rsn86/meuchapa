import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../terapia_controller.dart';

class ApresentacaoPage extends StatefulWidget {
  final String title;
  final Function avancar;
  const ApresentacaoPage({Key key, this.title = "Meu Chapa", @required this.avancar}) : super(key: key);
  @override
  _ApresentacaoPageState createState() => _ApresentacaoPageState();
}

class _ApresentacaoPageState extends ModularState<ApresentacaoPage, TerapiaController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 60,
          ),
          Center(
            child: Image.asset('assets/images/chapa.png'),
          ),
          const SizedBox(
            height: 1,
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: 375,
            // child: const Center(
            child: const Card(
              elevation: 1,
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                    'Olá, Chicão!\n\nSempre começaremos nosso bate-papo com algumas perguntas sobre o seu dia a dia. Fique tranquilo que é tudo confidencial!'),
              ),
              // ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Center(
            child: RaisedButton(
              onPressed: widget.avancar,
              color: Colors.blueAccent,
              child: const Text(
                'começar',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
