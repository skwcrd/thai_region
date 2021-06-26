part of models;

class SubDistrict {
  SubDistrict._({
    required this.id,
    required this.name,
    required this.districtId,
  });

  factory SubDistrict.fromMap(Map<String, dynamic> data) =>
      SubDistrict._(
        id: data['id'],
        name: Translator.fromMap(data['name']),
        districtId: -1,
      );

  final int id;
  final int districtId;
  final Translator name;

  Map<String, dynamic> toMap() =>
      {
        'id': id,
        'name': name.toMap(),
        'district_id': districtId,
      };

  @override
  String toString({
    Locale locale = const Locale('en'),
  }) {
    final _name = name.toString(locale: locale);

    return "Sub-district(id: $id, name: $_name, district_id: $districtId)";
  }
}