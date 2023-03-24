import 'package:country_app/src/modules/country/datasource/dio_datasource.dart';
import 'package:country_app/src/modules/country/repository/country_repository.dart';
import 'package:country_app/src/shared/models/country_model.dart';
import 'package:flutter/material.dart';

class CountryStore extends ValueNotifier<List<CountryModel>> {
  CountryStore() : super(<CountryModel>[]);
  final DioDatasource datasource = DioDatasource();
  late final CountryRepository countryRepository = CountryRepository(datasource);

  void getCountrys() async {
    value = await countryRepository.countrys();
  }

  // ValueNotifier<List<CountryModel>> countrys = ValueNotifier<List<CountryModel>>([]);
}
