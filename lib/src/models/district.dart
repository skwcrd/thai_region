part of models;

class District {
  District._({
    required this.id,
    required this.name,
    required this.provinceId,
    required this.subDistrict,
  });

  factory District.fromMap(
    Map<String, dynamic> data, {
    List<SubDistrict>? subDistrict,
  }) =>
      District._(
        id: data['id'],
        name: Translator.fromMap(data['name']),
        provinceId: -1,
        subDistrict: subDistrict
            ?.map((d) =>
              SubDistrict._(
                id: d.id,
                name: d.name,
                districtId: data['id'],
              ))
            .toList(growable: false)
          ?? const [],
      );

  final int id;
  final int provinceId;
  final Translator name;
  final List<SubDistrict> subDistrict;

  Map<String, dynamic> toMap() =>
      {
        'id': id,
        'name': name.toMap(),
        'province_id': provinceId,
      };

  Map<String, dynamic> toAllMap() =>
      {
        'id': id,
        'name': name.toMap(),
        'province_id': provinceId,
        'sub_district': subDistrict.map((d) => d.toMap()),
      };

  @override
  String toString({
    Locale locale = const Locale('en'),
  }) {
    final _name = name.toString(locale: locale);

    return "District(id: $id, name: $_name, province_id: $provinceId)";
  }
}