import 'package:flutter_modular/flutter_modular.dart';

import 'terapia_controller.dart';
import 'terapia_page.dart';

class TerapiaModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => TerapiaController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => const TerapiaPage()),
      ];

  static Inject get to => Inject<TerapiaModule>.of();
}
