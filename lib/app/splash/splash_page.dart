import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key key, this.title = "Splash"}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  ReactionDisposer _disposer;

  @override
  void initState() {
    super.initState();
    _disposer = autorun(
      (_) {
        //   final auth = Modular.get<AuthController>();
        //   if (auth.status == AuthStatus.loggedin) {
        //     Modular.to.pushReplacementNamed('/home');
        //   } else if (auth.status == AuthStatus.loggedout) {
        //     Modular.to.pushReplacementNamed('/login');
        //   } else if (auth.status == AuthStatus.loading) {
        Future.delayed(const Duration(milliseconds: 1200)).then(
          (_) => Modular.to.pushReplacementNamed('/login'),
        );
        // }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _disposer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: const <Widget>[
          Center(
            child: CircularProgressIndicator(),
          ),
        ],
      ),
    );
  }
}
