import 'package:flutter_modular/flutter_modular.dart';

import 'sos_controller.dart';
import 'sos_page.dart';

class SosModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SosController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => const SosPage()),
      ];

  static Inject get to => Inject<SosModule>.of();
}
