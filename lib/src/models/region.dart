part of models;

class Region {
  const Region._({
    required this.type,
    required Translator name,
    List<Province> province = const [],
  }) :  _name = name,
        _province = province;

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

  final RegionType type;
  final Translator _name;
  final List<Province> _province;

  String get id => "${type.index}";

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
      };

  @override
  String toString({
    Locale locale = const Locale('en'),
  }) {
    final _name = getName(locale: locale);

    return "Region(id: $id, name: $_name)";
  }
}