part of utils;

enum Region {
  unknown,
  central,
  north,
  northeast,
  south,
  east,
  west,
}

extension RegionDescription on Region {
  Translator get translate {
    switch (this) {
      case Region.unknown:
        return Translator.fromMap({
          'en': 'unknown',
          'th': 'ไม่ทราบ',
        });

      case Region.central:
        return Translator.fromMap({
          'en': 'central',
          'th': 'ภาคกลาง',
        });

      case Region.north:
        return Translator.fromMap({
          'en': 'north',
          'th': 'ภาคเหนือ',
        });

      case Region.northeast:
        return Translator.fromMap({
          'en': 'northeast',
          'th': 'ภาคตะวันออกเฉียงเหนือ',
        });

      case Region.south:
        return Translator.fromMap({
          'en': 'south',
          'th': 'ภาคใต้',
        });

      case Region.east:
        return Translator.fromMap({
          'en': 'east',
          'th': 'ภาคตะวันออก',
        });

      case Region.west:
        return Translator.fromMap({
          'en': 'west',
          'th': 'ภาคตะวันตก',
        });
    }
  }
}

extension RegionCompare on Region {
  bool get isUnknown =>
      this == Region.unknown;
  bool get isCentral =>
      this == Region.central;
  bool get isNorth =>
      this == Region.north;
  bool get isNortheast =>
      this == Region.northeast;
  bool get isSouth =>
      this == Region.south;
  bool get isEast =>
      this == Region.east;
  bool get isWest =>
      this == Region.west;

  bool get isNotUnknown =>
      this != Region.unknown;
  bool get isNotCentral =>
      this != Region.central;
  bool get isNotNorth =>
      this != Region.north;
  bool get isNotNortheast =>
      this != Region.northeast;
  bool get isNotSouth =>
      this != Region.south;
  bool get isNotEast =>
      this != Region.east;
  bool get isNotWest =>
      this != Region.west;
}