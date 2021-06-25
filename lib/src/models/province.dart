part of models;

class Province {
  Province._({
    required this.id,
    required this.region,
    required this.name,
  });

  factory Province.fromMap(Map<String, dynamic> data) =>
      Province._(
        id: data['id'],
        region: getRegion(data['region']),
        name: Translator.fromMap(data['name']),
      );

  final int id;
  final Region region;
  final Translator name;

  Map<String, dynamic> toMap() =>
      {
        'id': id,
        'region': region.translate.toMap(),
        'name': name.toMap(),
      };

  @override
  String toString({
    Locale locale = const Locale('en'),
  }) {
    final _name = name.toString(locale: locale);
    final _region = region.translate.toString(locale: locale);

    return "Province(id: $id, region: $_region, name: $_name)";
  }
}