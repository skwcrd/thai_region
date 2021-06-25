part of utils;

enum Region {
  central,
  north,
  northeast,
  south,
  west,
  east,
}

extension RegionCompare on Region {
  bool get isCentral =>
      this == Region.central;
  bool get isNorth =>
      this == Region.north;
  bool get isNortheast =>
      this == Region.northeast;
  bool get isSouth =>
      this == Region.south;
  bool get isWest =>
      this == Region.west;
  bool get isEast =>
      this == Region.east;

  bool get isNotCentral =>
      this != Region.central;
  bool get isNotNorth =>
      this != Region.north;
  bool get isNotNortheast =>
      this != Region.northeast;
  bool get isNotSouth =>
      this != Region.south;
  bool get isNotWest =>
      this != Region.west;
  bool get isNotEast =>
      this != Region.east;
}