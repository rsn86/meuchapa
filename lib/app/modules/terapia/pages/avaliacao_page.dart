// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../terapia_controller.dart';
import '../widgets/alternativas_widget.dart';
import '../widgets/pergunta_widget.dart';

class AvaliacaoPage extends StatefulWidget {
  final String title;
  final Function avancar;
  const AvaliacaoPage({Key key, this.title = "Meu Chapa", @required this.avancar}) : super(key: key);
  @override
  _AvaliacaoPageState createState() => _AvaliacaoPageState();
}

class _AvaliacaoPageState extends ModularState<AvaliacaoPage, TerapiaController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          PerguntaWidget(
            pergunta: Text(
              'Não preencha enquanto estiver dirigindo!!!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          PerguntaWidget(
            pergunta: Text(
              'Em uma escala de 1 a 5, quanto você está satisfeito com o seu trabalho atualmente?',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          AlternativasWidget(
            alternativas: <String, String>{
              '1': '1',
              '2': '2',
              '3': '3',
              '4': '4',
              '5': '5',
            },
          ),
          PerguntaWidget(
            pergunta: Text(
              'Em uma escala de 1 a 5, quanto você se sente seguro ao dirigir nas estradas?',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          AlternativasWidget(
            alternativas: <String, String>{
              '1': '1',
              '2': '2',
              '3': '3',
              '4': '4',
              '5': '5',
            },
          ),
          PerguntaWidget(
            pergunta: Text(
              'Você se sente solitário?',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          AlternativasWidget(
            alternativas: <String, String>{
              'Sim': '1',
              'Não': '0',
            },
          ),
          PerguntaWidget(
            pergunta: Text(
              'Obrigado pelas respostas. Agora eu sei como posso melhor te ajudar. Vamos cair na estrada!',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Center(
            child: RaisedButton(
              onPressed: widget.avancar,
              color: Colors.orange,
              child: const Text(
                'BELEZA',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
