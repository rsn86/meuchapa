import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:meuchapa/app/modules/terapia/widgets/audio_player_widget.dart';

import '../terapia_controller.dart';
import '../widgets/pergunta_widget.dart';

class AudioPage extends StatefulWidget {
  final String title;
  const AudioPage({Key key, this.title = "Meu Chapa"}) : super(key: key);
  @override
  _AudioPageState createState() => _AudioPageState();
}

class _AudioPageState extends ModularState<AudioPage, TerapiaController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 10,
          ),
          const PerguntaWidget(
            pergunta: Text(
              'Chicão, vi que você tá estressado.\nOuve esse áudio aqui pra desestressar e ainda ganhar 20 pontos:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: 375,
            // child: const Center(
            child: const Card(
              margin: EdgeInsets.all(10),
              color: Colors.lightBlue,
              elevation: 1,
              child: Padding(
                padding: EdgeInsets.all(15),
                child: AudioPlayerWidget(
                  filePath: 'assets/audios/desestressando_estrada.mp3',
                  title: Text('Atenção Plena'),
                ),
              ),
              // ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: 375,
            // child: const Center(
            child: const Card(
              margin: EdgeInsets.all(10),
              color: Colors.lightGreen,
              elevation: 1,
              child: Padding(
                padding: EdgeInsets.all(15),
                child: AudioPlayerWidget(
                  filePath: 'assets/audios/desestressando_estrada.mp3',
                  title: Text('Desestressando na Estrada'),
                ),
              ),
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
