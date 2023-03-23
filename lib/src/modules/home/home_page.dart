import 'package:country_app/src/modules/country/store/country_store.dart';
import 'package:country_app/src/shared/models/country_model.dart';
import 'package:flutter/material.dart';

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
            return GridViewListWidget(value: value);
          }),
      // body: Center(
      //     child: ElevatedButton(
      //   child: const Text('teste'),
      //   onPressed: () {
      //     Navigator.of(context).pushNamed('/second');
      //   },
      // )),
    );
  }
}

class GridViewListWidget extends StatelessWidget {
  final List<CountryModel> value;

  const GridViewListWidget({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: value.length,
        itemBuilder: (context, index) {
          CountryModel counterModel = value[index];
          return SizedBox(
            height: 100,
            child: Card(
              child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                SizedBox(
                    height: 100,
                    child: Image.network(
                      counterModel.flagUrl,
                      fit: BoxFit.contain,
                    )),
                Text(counterModel.name),
              ]),
            ),
          );
        });
  }
}
