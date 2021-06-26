part of models;

class District {
  const District._({
    required this.id,
    required this.name,
    required this.provinceId,
    this.subDistrict = const [],
  });

  factory District.fromMap(Map<String, dynamic> data) =>
      District._(
        id: data['id'],
        name: Translator._fromMap(data['name']),
        provinceId: data['province_id'] ?? '',
      );

  final String id;
  final String provinceId;
  final Translator name;
  final List<SubDistrict> subDistrict;

  Map<String, dynamic> toMap() =>
      {
        'id': id,
        'name': name.toMap(),
        'province_id': provinceId,
      };

  @override
  String toString({
    Locale locale = const Locale('en'),
  }) {
    final _name = name.toString(locale: locale);

    return "District(id: $id, name: $_name, province_id: $provinceId)";
  }
}