part of models;

class SubDistrict {
  const SubDistrict._({
    required this.id,
    required Translator name,
    required this.districtId,
    required this.zipCode,
  }) : _name = name;

  factory SubDistrict.fromMap(Map<String, dynamic> data) =>
      SubDistrict._(
        id: data['id'] ?? '',
        zipCode: data['zip_code'] ?? '',
        name: Translator._fromMap(data['name'] ?? {}),
        districtId: data['district_id'] ?? '',
      );

  final String id;
  final String districtId;
  final Translator _name;
  final String zipCode;

  @visibleForTesting
  Translator get name => _name;

  String getName({
    Locale locale = const Locale('en'),
  }) =>
      _name.toString(locale: locale);

  Map<String, dynamic> toMap() =>
      {
        'id': id,
        'zip_code': zipCode,
        'name': _name.toMap(),
        'district_id': districtId,
      };

  @override
  String toString({
    Locale locale = const Locale('en'),
  }) {
    final _name = getName(locale: locale);

    return "Sub-district(id: $id, zip_code: $zipCode, "
        "name: $_name, district_id: $districtId)";
  }
}