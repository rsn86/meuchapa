import 'package:flutter_modular/flutter_modular.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';

import 'repositories/auth_repository_interface.dart';

part 'auth_controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

abstract class _AuthControllerBase with Store {
  final IAuthRepository _authRepository = Modular.get();

  @observable
  FirebaseUser user;

  _AuthControllerBase() {
    _authRepository.getUser().then(_setUser);
  }

  @action // ignore: use_setters_to_change_properties
  void _setUser(FirebaseUser value) {
    user = value;
  }

  @action
  Future<FirebaseUser> loginWithPhone() async {
    return user = await _authRepository.getPhoneLogin();
  }

  @action
  Future logout() {
    user = null;
    return _authRepository.logout();
  }
}
