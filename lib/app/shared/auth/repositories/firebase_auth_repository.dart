import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_ui/firebase_auth_ui.dart' as ui;
import 'package:firebase_auth_ui/providers.dart';

import 'auth_repository_interface.dart';

class FirebaseAuthRepository implements IAuthRepository {
  @override
  Future<FirebaseUser> getPhoneLogin() async {
    await ui.FirebaseAuthUi.instance().launchAuth(
      [
        AuthProvider.phone(), // Login with Phone number
      ],
      tosUrl: "https://rsn86.github.io/meuchapa-site/politicas/termos_uso",
      privacyPolicyUrl: "https://rsn86.github.io/meuchapa-site/politicas/politica_privacidade",
    );
    return getUser();
  }

  @override
  Future<FirebaseUser> getUser() {
    return FirebaseAuth.instance.currentUser();
  }

  @override
  Future logout() {
    return FirebaseAuth.instance.signOut();
  }
}
