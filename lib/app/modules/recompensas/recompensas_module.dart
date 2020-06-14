import 'package:flutter_modular/flutter_modular.dart';

import 'recompensas_controller.dart';
import 'recompensas_page.dart';

class RecompensasModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => RecompensasController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => const RecompensasPage()),
      ];

  static Inject get to => Inject<RecompensasModule>.of();
}
