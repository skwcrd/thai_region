part of models;

class Province {
  const Province._({
    required this.id,
    required Translator name,
    required this.regionId,
    List<District> district = const [],
  }) :  _name = name,
        _district = district;

  factory Province.fromMap(Map<String, dynamic> data) =>
      Province._(
        id: data['id'] ?? '',
        name: Translator._fromMap(data['name'] ?? {}),
        regionId: data['region_id'] ?? '',
      );

  final String id;
  final String regionId;
  final Translator _name;
  final List<District> _district;

  @visibleForTesting
  Translator get name => _name;

  String getName({
    Locale locale = const Locale('en'),
  }) =>
      _name.toString(locale: locale);

  Map<String, dynamic> toMap() =>
      {
        'id': id,
        'name': _name.toMap(),
        'region_id': regionId,
      };

  @override
  String toString({
    Locale locale = const Locale('en'),
  }) {
    final _name = getName(locale: locale);

    return "Province(id: $id, name: $_name, region_id: $regionId)";
  }
}