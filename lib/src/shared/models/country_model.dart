import 'dart:convert';

class CountryModel {
  final String name;
  final String flagUrl;

  CountryModel(this.name, this.flagUrl);

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});
    result.addAll({'flagUrl': flagUrl});

    return result;
  }

  factory CountryModel.fromMap(Map<String, dynamic> map) {
    return CountryModel(
      map['name'] ?? '',
      map['flagUrl'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CountryModel.fromJson(String source) => CountryModel.fromMap(json.decode(source));
}
