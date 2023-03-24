import 'package:country_app/src/modules/country/ui/country_detail.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CountryModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => CountryDetailPage(country: args.data)),
      ];
}
