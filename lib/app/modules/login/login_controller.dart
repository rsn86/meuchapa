import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../shared/auth/auth_controller.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  @observable
  bool loading = false;

  @action
  Future loginWithPhone() async {
    try {
      loading = true;
      await Modular.get<AuthController>().loginWithPhone();
      Modular.to.pushReplacementNamed('/home');
    } catch (_) {
      loading = false;
    }
  }
}
