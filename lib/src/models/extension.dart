part of models;

extension RegionExtension on Region {
  Region setData({
    List<Province>? data,
  }) =>
      Region._(
        type: _type,
        name: name,
        province: data
            ?.map((d) =>
              Province._(
                id: d.id,
                name: d.name,
                regionId: id,
                district: d.district,
              ))
            .toList(growable: false)
          ?? const [],
      );

  Map<String, dynamic> toAllMap() =>
      {
        'id': _type.index,
        'name': name.toMap(),
        'province': province.map((d) => d._toAllMap()),
      };
}

extension ProvinceExtension on Province {
  Province setData({
    List<District>? data,
  }) =>
      Province._(
        id: id,
        regionId: regionId,
        name: name,
        district: data
            ?.map((d) =>
              District._(
                id: d.id,
                name: d.name,
                provinceId: id,
                subDistrict: d.subDistrict,
              ))
            .toList(growable: false)
          ?? const [],
      );

  Map<String, dynamic> _toAllMap() =>
      {
        'id': id,
        'name': name.toMap(),
        'region_id': regionId,
        'district': district.map((d) => d._toAllMap()),
      };
}

extension DistrictExtension on District {
  District setData({
    List<SubDistrict>? data,
  }) =>
      District._(
        id: id,
        name: name,
        provinceId: provinceId,
        subDistrict: data
            ?.map((d) =>
              SubDistrict._(
                id: d.id,
                name: d.name,
                districtId: id,
                zipCode: d.zipCode,
              ))
            .toList(growable: false)
          ?? const [],
      );

  Map<String, dynamic> _toAllMap() =>
      {
        'id': id,
        'name': name.toMap(),
        'province_id': provinceId,
        'sub_district': subDistrict.map((d) => d.toMap()),
      };
}