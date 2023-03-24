import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/home/');

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,

      //routes conficuration
      routerDelegate: Modular.routerDelegate,
      routeInformationParser: Modular.routeInformationParser,

      //theme configuration
      theme: ThemeData(useMaterial3: true),
    );
  }
}
