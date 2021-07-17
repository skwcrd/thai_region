part of models;

extension RegionExtension on Region {
  List<Province> get province => _province;

  Region setData({
    List<Province>? data,
  }) =>
      Region._(
        type: type,
        name: _name,
        province: data
            ?.map((d) =>
              Province._(
                id: d.id,
                name: d._name,
                regionId: id,
                district: d.district,
              ))
            .toList(growable: false)
          ?? const [],
      );

  Map<String, dynamic> toAllMap() =>
      {
        'id': id,
        'name': _name.toMap(),
        'province': province.map((d) => d._toAllMap()),
      };
}

extension ProvinceExtension on Province {
  List<District> get district => _district;

  Province setData({
    List<District>? data,
  }) =>
      Province._(
        id: id,
        regionId: regionId,
        name: _name,
        district: data
            ?.map((d) =>
              District._(
                id: d.id,
                name: d._name,
                provinceId: id,
                subDistrict: d.subDistrict,
              ))
            .toList(growable: false)
          ?? const [],
      );

  Map<String, dynamic> _toAllMap() =>
      {
        'id': id,
        'name': _name.toMap(),
        'region_id': regionId,
        'district': district.map((d) => d._toAllMap()),
      };
}

extension DistrictExtension on District {
  List<SubDistrict> get subDistrict => _subDistrict;

  District setData({
    List<SubDistrict>? data,
  }) =>
      District._(
        id: id,
        name: _name,
        provinceId: provinceId,
        subDistrict: data
            ?.map((d) =>
              SubDistrict._(
                id: d.id,
                name: d._name,
                districtId: id,
                zipCode: d.zipCode,
              ))
            .toList(growable: false)
          ?? const [],
      );

  Map<String, dynamic> _toAllMap() =>
      {
        'id': id,
        'name': _name.toMap(),
        'province_id': provinceId,
        'sub_district': subDistrict.map((d) => d.toMap()),
      };
}