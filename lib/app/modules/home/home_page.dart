import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../recompensas/recompensas_module.dart';
import '../sos/sos_module.dart';
import '../terapia/terapia_module.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller
  List tabs = [
    TerapiaModule(),
    RecompensasModule(),
    SosModule(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) {
          return tabs.elementAt(controller.currentTabIndex);
        },
      ),
      bottomNavigationBar: _bottomNavBar(),
    );
  }

  Widget _bottomNavBar() {
    return Observer(
      builder: (_) {
        return BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          backgroundColor: Colors.white70,
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.currentTabIndex,
          onTap: controller.updateCurrentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.thumb_up),
              title: Text('Meu Chapa'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              title: Text('Recompensas'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.security,
                color: Colors.red,
                size: 40,
              ),
              title: Text(
                'SOS',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
