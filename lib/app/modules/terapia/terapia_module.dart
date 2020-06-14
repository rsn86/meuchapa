import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'terapia_controller.dart';
import 'terapia_page.dart';

// ignore: use_key_in_widget_constructors
class TerapiaModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        Bind((i) => TerapiaController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => const TerapiaPage()),
      ];

  @override
  Widget get view => const TerapiaPage();

  static Inject get to => Inject<TerapiaModule>.of();
}
