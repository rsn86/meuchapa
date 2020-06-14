import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'sos_controller.dart';
import 'sos_page.dart';

// ignore: use_key_in_widget_constructors
class SosModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SosController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => const SosPage()),
      ];

  @override
  Widget get view => const SosPage();

  static Inject get to => Inject<SosModule>.of();
}
