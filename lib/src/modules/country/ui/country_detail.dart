import 'package:country_app/src/shared/models/country_model.dart';
import 'package:flutter/material.dart';

class CountryDetailPage extends StatelessWidget {
  final CountryModel country;
  const CountryDetailPage({super.key, required this.country});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(country.name),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(country.flagUrl),
              Text('Capital do país: ${country.capital[0]}'),
              Text('Região: ${country.capital[0]}'),
              Text('Capital do país: ${country.region}'),
              Text('Capital do país: ${country.capital[0]}'),
              Text('Capital do país: ${country.capital[0]}'),
              Text('Capital do país: ${country.capital[0]}'),
              Text('Capital do país: ${country.capital[0]}'),
              Text('Capital do país: ${country.capital[0]}'),
              Text('Capital do país: ${country.capital[0]}'),
              Text('Capital do país: ${country.capital[0]}'),
              Text('Capital do país: ${country.capital[0]}'),
            ],
          ),
        ),
      ),
    );
  }
}
