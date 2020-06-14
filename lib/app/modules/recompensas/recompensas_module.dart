import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'recompensas_controller.dart';
import 'recompensas_page.dart';

// ignore: use_key_in_widget_constructors
class RecompensasModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        Bind((i) => RecompensasController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => const RecompensasPage()),
      ];

  @override
  Widget get view => const RecompensasPage();

  static Inject get to => Inject<RecompensasModule>.of();
}
