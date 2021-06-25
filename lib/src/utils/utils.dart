library utils;

import '../models/models.dart'
  show Translator;

part 'region.dart';

Region getRegion(int? i) {
  switch (i) {
    case 1:
      return Region.north;
    case 2:
      return Region.central;
    case 3:
      return Region.northeast;
    case 4:
      return Region.west;
    case 5:
      return Region.east;
    case 6:
      return Region.south;
  }

  return Region.unknown;
}