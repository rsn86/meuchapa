import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../shared/auth/auth_controller.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  int currentTabIndex = 0;

  @action // ignore: use_setters_to_change_properties
  void updateCurrentIndex(int index) {
    currentTabIndex = index;
  }

  @action
  Future logout() async {
    await Modular.get<AuthController>().logout();
    Modular.to.pushReplacementNamed('/login');
  }
}
