import 'package:mobx/mobx.dart';

part 'terapia_controller.g.dart';

class TerapiaController = _TerapiaControllerBase with _$TerapiaController;

abstract class _TerapiaControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
