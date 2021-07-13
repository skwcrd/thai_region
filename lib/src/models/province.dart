part of models;

class Province {
  const Province._({
    required this.id,
    required this.name,
    required this.regionId,
    List<District> district = const [],
  }) : _district = district;

  factory Province.fromMap(Map<String, dynamic> data) =>
      Province._(
        id: data['id'] ?? '',
        name: Translator._fromMap(data['name'] ?? {}),
        regionId: data['region_id'] ?? '',
      );

  final String id;
  final String regionId;
  final Translator name;
  final List<District> _district;

  Map<String, dynamic> toMap() =>
      {
        'id': id,
        'name': name.toMap(),
        'region_id': regionId,
      };

  @override
  String toString({
    Locale locale = const Locale('en'),
  }) {
    final _name = name.toString(locale: locale);

    return "Province(id: $id, name: $_name, region_id: $regionId)";
  }
}