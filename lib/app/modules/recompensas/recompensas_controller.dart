import 'package:mobx/mobx.dart';

part 'recompensas_controller.g.dart';

class RecompensasController = _RecompensasControllerBase
    with _$RecompensasController;

abstract class _RecompensasControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
