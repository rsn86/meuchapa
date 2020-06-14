import 'package:mobx/mobx.dart';

part 'sos_controller.g.dart';

class SosController = _SosControllerBase with _$SosController;

abstract class _SosControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
