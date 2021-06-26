part of utils;

enum RegionType {
  central,
  north,
  northeast,
  south,
  east,
  west,
}

extension RegionTypeCompare on RegionType {
  bool get isCentral =>
      this == RegionType.central;
  bool get isNorth =>
      this == RegionType.north;
  bool get isNortheast =>
      this == RegionType.northeast;
  bool get isSouth =>
      this == RegionType.south;
  bool get isEast =>
      this == RegionType.east;
  bool get isWest =>
      this == RegionType.west;

  bool get isNotCentral =>
      this != RegionType.central;
  bool get isNotNorth =>
      this != RegionType.north;
  bool get isNotNortheast =>
      this != RegionType.northeast;
  bool get isNotSouth =>
      this != RegionType.south;
  bool get isNotEast =>
      this != RegionType.east;
  bool get isNotWest =>
      this != RegionType.west;
}