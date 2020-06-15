import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/widgets/meuchapa_appbar.dart';
import 'pages/apresentacao_page.dart';
import 'pages/audio_page.dart';
import 'pages/avaliacao_page.dart';
import 'terapia_controller.dart';

class TerapiaPage extends StatefulWidget {
  final String title;
  const TerapiaPage({Key key, this.title = "Meu Chapa"}) : super(key: key);

  @override
  _TerapiaPageState createState() => _TerapiaPageState();
}

class _TerapiaPageState extends ModularState<TerapiaPage, TerapiaController> {
  //use 'controller' variable to access controller

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MeuChapaAppBar.getAppBar(title: widget.title),
      body: PageView(
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: <Widget>[
          ApresentacaoPage(
            avancar: () => pageController.jumpToPage(1),
          ),
          AvaliacaoPage(
            avancar: () => pageController.jumpToPage(2),
          ),
          const AudioPage(),
        ],
      ),
    );
  }
}
