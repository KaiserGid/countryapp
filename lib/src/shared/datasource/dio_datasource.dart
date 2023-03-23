import 'package:country_app/src/shared/models/country_model.dart';
import 'package:uno/uno.dart';

class DioDatasource {
  Uno uno = Uno();
  Future<List<CountryModel>> getAllCountrys() async {
    List<CountryModel> countrys = [];

    var response = await uno.get('https://restcountries.com/v3.1/all');
    List data = response.data;

    for (var map in data) {
      countrys.add(CountryModel(map['translations']['por']['common'], map['flags']['png']));
    }

    return countrys;
  }
}
