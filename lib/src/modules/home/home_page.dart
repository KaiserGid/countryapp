import 'package:country_app/src/modules/country/store/country_store.dart';
import 'package:flutter/material.dart';

import '../../shared/widgets/gridview_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    CountryStore countryStore = CountryStore();

    countryStore.getCountrys();

    return Scaffold(
      appBar: AppBar(
        title: const Text('data'),
      ),
      body: ValueListenableBuilder(
          valueListenable: countryStore,
          builder: (context, value, child) {
            return GridViewListWidget(
              value: value,
              route: '/home/countryDetail',
            );
          }),
    );
  }
}
