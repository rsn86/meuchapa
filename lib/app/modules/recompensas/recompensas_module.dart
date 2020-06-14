import 'package:meuchapa/app/modules/recompensas/recompensas_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:meuchapa/app/modules/recompensas/recompensas_page.dart';

class RecompensasModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => RecompensasController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => RecompensasPage()),
      ];

  static Inject get to => Inject<RecompensasModule>.of();
}
