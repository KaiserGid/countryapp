import 'package:country_app/src/modules/country/datasource/dio_datasource.dart';
import 'package:country_app/src/shared/models/country_model.dart';

class CountryRepository {
  final DioDatasource datasource;

  CountryRepository(this.datasource);

  Future<List<CountryModel>> countrys() async {
    List<CountryModel> countrys = await datasource.getAllCountrys();

    return countrys;
  }
}
