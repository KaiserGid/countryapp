import 'package:country_app/src/app_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'src/app.dart';

void main() {
  runApp(ModularApp(
    module: AppModule(),
    child: const App(),
  ));
}
