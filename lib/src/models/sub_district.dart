part of models;

class SubDistrict {
  const SubDistrict._({
    required this.id,
    required this.name,
    required this.districtId,
    required this.zipCode,
  });

  factory SubDistrict.fromMap(Map<String, dynamic> data) =>
      SubDistrict._(
        id: data['id'] ?? '',
        zipCode: data['zip_code'] ?? '',
        name: Translator._fromMap(data['name'] ?? {}),
        districtId: data['district_id'] ?? '',
      );

  final String id;
  final String districtId;
  final Translator name;
  final String zipCode;

  Map<String, dynamic> toMap() =>
      {
        'id': id,
        'zip_code': zipCode,
        'name': name.toMap(),
        'district_id': districtId,
      };

  @override
  String toString({
    Locale locale = const Locale('en'),
  }) {
    final _name = name.toString(locale: locale);

    return "Sub-district(id: $id, zip_code: $zipCode, "
        "name: $_name, district_id: $districtId)";
  }
}