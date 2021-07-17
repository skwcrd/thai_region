import 'data/data.dart';
import 'models/models.dart';
import 'utils/utils.dart';

class ThaiRegion {
  ThaiRegion()
    : _data = List.unmodifiable(regionData);

  final List<Region> _data;

  List<Region> getRegion() =>
      List.unmodifiable([
        Region.central,
        Region.north,
        Region.northeast,
        Region.south,
        Region.east,
        Region.west,
      ]);

  List<Province> getProvince({ RegionType? region }) {
    if ( region == null ) {
      final _list = [
        for ( final _region in _data )
          ..._region.province,
      ]
      ..sort((a, b) => a.id.compareTo(b.id));

      return List.unmodifiable(_list);
    }

    for ( final _region in _data ) {
      if ( _region.type == region ) {
        return List.unmodifiable(_region.province);
      }
    }

    return const [];
  }

  List<District> getDistrict({ String? provinceId }) {
    if ( provinceId == null ) {
      final _list = [
        for ( final _region in _data )
          for ( final _province in _region.province )
            ..._province.district,
      ]
      ..sort((a, b) => a.id.compareTo(b.id));

      return List.unmodifiable(_list);
    }

    if ( (provinceId.length < 1) || (provinceId.length > 2) ) {
      return const [];
    }

    provinceId = provinceId.padLeft(2, '0');

    for ( final _region in _data ) {
      for ( final _province in _region.province ) {
        final _id = _province.id.padLeft(2, '0');

        if ( _id == provinceId ) {
          return List.unmodifiable(_province.district);
        }
      }
    }

    return const [];
  }

  List<SubDistrict> getSubDistrict({ String? districtId }) {
    if ( districtId == null ) {
      final _list = [
        for ( final _region in _data )
          for ( final _province in _region.province )
            for ( final _district in _province.district )
              ..._district.subDistrict,
      ]
      ..sort((a, b) => a.id.compareTo(b.id));

      return List.unmodifiable(_list);
    }

    if ( districtId.length != 4 ) {
      return const [];
    }

    for ( final _region in _data ) {
      for ( final _province in _region.province ) {
        for ( final _district in _province.district ) {
          if ( _district.id == districtId ) {
            return List.unmodifiable(_district.subDistrict);
          }
        }
      }
    }

    return const [];
  }

  Map<String, dynamic> toMap() =>
      {
        'data': _data.map(
          (d) => d.toAllMap()),
      };

  @override
  String toString() =>
      "ThaiRegion()";
}