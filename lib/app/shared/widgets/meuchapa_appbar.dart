import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../modules/home/home_controller.dart';

// ignore: avoid_classes_with_only_static_members
class MeuChapaAppBar {
  static final List<Widget> _actions = <Widget>[
    IconButton(
      icon: Icon(Icons.exit_to_app),
      tooltip: 'Sair',
      onPressed: Modular.get<HomeController>().logout,
    ),
  ];

  static AppBar getAppBar({@required String title, BuildContext context}) {
    return AppBar(
      title: Text(title),
      actions: _actions,
    );
  }
}
