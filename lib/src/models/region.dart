part of models;

class Region {
  const Region._({
    required RegionType type,
    required this.name,
    this.province = const [],
  }) : _type = type;

  static const Region central =
      Region._(
        type: RegionType.central,
        name: Translator._(
          en: 'Central',
          th: 'ภาคกลาง',
        ));

  static const north =
      Region._(
        type: RegionType.north,
        name: Translator._(
          en: 'North',
          th: 'ภาคเหนือ',
        ));

  static const northeast =
      Region._(
        type: RegionType.northeast,
        name: Translator._(
          en: 'Northeast',
          th: 'ภาคตะวันออกเฉียงเหนือ',
        ));

  static const south =
      Region._(
        type: RegionType.south,
        name: Translator._(
          en: 'South',
          th: 'ภาคใต้',
        ));

  static const east =
      Region._(
        type: RegionType.east,
        name: Translator._(
          en: 'East',
          th: 'ภาคตะวันออก',
        ));

  static const west =
      Region._(
        type: RegionType.west,
        name: Translator._(
          en: 'West',
          th: 'ภาคตะวันตก',
        ));

  final RegionType _type;
  final Translator name;
  final List<Province> province;

  String get id => "${_type.index}";

  Map<String, dynamic> toMap() =>
      {
        'id': id,
        'name': name.toMap(),
      };

  @override
  String toString({
    Locale locale = const Locale('en'),
  }) {
    final _name = name.toString(locale: locale);

    return "Region(id: $id, name: $_name)";
  }
}