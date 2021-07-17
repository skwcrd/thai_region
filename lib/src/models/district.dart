part of models;

class District {
  const District._({
    required this.id,
    required Translator name,
    required this.provinceId,
    List<SubDistrict> subDistrict = const [],
  }) :  _name = name,
        _subDistrict = subDistrict;

  factory District.fromMap(Map<String, dynamic> data) =>
      District._(
        id: data['id'] ?? '',
        name: Translator._fromMap(data['name'] ?? {}),
        provinceId: data['province_id'] ?? '',
      );

  final String id;
  final String provinceId;
  final Translator _name;
  final List<SubDistrict> _subDistrict;

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
        'province_id': provinceId,
      };

  @override
  String toString({
    Locale locale = const Locale('en'),
  }) {
    final _name = getName(locale: locale);

    return "District(id: $id, name: $_name, province_id: $provinceId)";
  }
}