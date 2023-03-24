import 'dart:convert';

class CountryModel {
  final String name;
  final String flagUrl;
  final List capital;
  final String region;
  final String subregion;
  final String urlMaps;
  final int population;
  final List continents;
  final List<String> languages;

  CountryModel({
    required this.name,
    required this.flagUrl,
    required this.capital,
    required this.region,
    required this.subregion,
    required this.urlMaps,
    required this.population,
    required this.continents,
    required this.languages,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});
    result.addAll({'flagUrl': flagUrl});
    result.addAll({'nativeName': capital});

    return result;
  }

  factory CountryModel.fromMap(Map<String, dynamic> map) {
    return CountryModel(
      name: map['translations']['por']['common'] ?? '',
      flagUrl: map['flags']['png'] ?? '',
      region: map['region'] ?? '',
      capital: map['capital'] ?? [],
      subregion: map['subregion'] ?? '',
      urlMaps: map['maps']['googleMaps'] ?? '',
      population: map['population'] ?? '',
      continents: map['continents'] ?? [],
      languages: map['languages'] ?? [],
    );
  }

  String toJson() => json.encode(toMap());

  factory CountryModel.fromJson(String source) => CountryModel.fromMap(json.decode(source));
}
