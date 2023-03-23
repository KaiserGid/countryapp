import 'package:country_app/src/modules/country/country_detail.dart';
import 'package:country_app/src/modules/home/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePage()),
        ChildRoute('/second', child: (context, args) => const CountryDetailPage()),
      ];
}
