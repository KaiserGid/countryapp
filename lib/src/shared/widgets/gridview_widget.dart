import 'package:flutter/material.dart';

import '../models/country_model.dart';

class GridViewListWidget extends StatelessWidget {
  final List<CountryModel> value;
  final String route;

  const GridViewListWidget({
    Key? key,
    required this.value,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: value.length,
        itemBuilder: (context, index) {
          CountryModel counterModel = value[index];
          return InkWell(
            onTap: () => Navigator.of(context).pushNamed(route, arguments: counterModel),
            child: SizedBox(
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
            ),
          );
        });
  }
}
