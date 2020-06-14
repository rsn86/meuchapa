import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_controller.dart';
import 'app_widget.dart';
import 'modules/home/home_module.dart';
import 'modules/login/login_module.dart';
import 'modules/recompensas/recompensas_module.dart';
import 'modules/sos/sos_module.dart';
import 'modules/terapia/terapia_module.dart';
import 'shared/auth/auth_controller.dart';
import 'shared/auth/repositories/auth_repository_interface.dart';
import 'shared/auth/repositories/firebase_auth_repository.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind<IAuthRepository>((i) => FirebaseAuthRepository()),
        Bind((i) => AuthController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: LoginModule()),
        Router('/home', module: HomeModule()),
        Router('/terapia', module: TerapiaModule()),
        Router('/recompensas', module: RecompensasModule()),
        Router('/sos', module: SosModule()),
      ];

  @override
  Widget get bootstrap => const AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
