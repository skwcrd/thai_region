library thai_region;

import 'src/models/models.dart';

part 'src/data.dart';

class ThaiRegion {
  List<Region> getRegion() {
    return [
      for ( final _region in _dataRegion )
        _region,
    ];
  }

  List<Province> getProvince({ String? regionId }) {
    if ( regionId == null ) {
      return [
        for ( final _region in _dataRegion )
          ..._region.province,
      ]
      ..sort((a, b) => a.id.compareTo(b.id));
    }

    for ( final _region in _dataRegion ) {
      if ( _region.id == regionId ) {
        return List.from(_region.province);
      }
    }

    return const [];
  }

  List<District> getDistrict({ String? provinceId }) {
    if ( provinceId == null ) {
      return [
        for ( final _region in _dataRegion )
          for ( final _province in _region.province )
            ..._province.district,
      ]
      ..sort((a, b) => a.id.compareTo(b.id));
    }

    provinceId = provinceId.padLeft(2, '0');

    for ( final _region in _dataRegion ) {
      for ( final _province in _region.province ) {
        if ( _province.id == provinceId ) {
          return List.from(_province.district);
        }
      }
    }

    return const [];
  }

  List<SubDistrict> getSubDistrict({ String? districtId }) {
    if ( districtId == null ) {
      return [
        for ( final _region in _dataRegion )
          for ( final _province in _region.province )
            for ( final _district in _province.district )
              ..._district.subDistrict,
      ]
      ..sort((a, b) => a.id.compareTo(b.id));
    }

    for ( final _region in _dataRegion ) {
      for ( final _province in _region.province ) {
        for ( final _district in _province.district ) {
          if ( _district.id == districtId ) {
            return List.from(_district.subDistrict);
          }
        }
      }
    }

    return const [];
  }
}