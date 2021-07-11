import 'package:flutter_test/flutter_test.dart';

import 'package:thai_region/thai_region.dart';

void main() {
  final ThaiRegion _instance = ThaiRegion();

  group('Region Test:', () {
    test('[default] get data return', () {
      final _data = _instance.getRegion();
      expect(_data, isNotEmpty);
    });
  });

  group('Province Test:', () {
    test('[default] get data return', () {
      final _data = _instance.getProvince();

      expect(_data, isNotEmpty);
      expect(_data.length, equals(77));
    });

    test('[region central type] get data return', () {
      final _data = _instance.getProvince(
        region: RegionType.central);

      expect(_data, isNotEmpty);
      expect(_data.length, equals(22));
    });

    test('[region north type] get data return', () {
      final _data = _instance.getProvince(
        region: RegionType.north);

      expect(_data, isNotEmpty);
      expect(_data.length, equals(9));
    });

    test('[region northeast type] get data return', () {
      final _data = _instance.getProvince(
        region: RegionType.northeast);

      expect(_data, isNotEmpty);
      expect(_data.length, equals(20));
    });

    test('[region south type] get data return', () {
      final _data = _instance.getProvince(
        region: RegionType.south);

      expect(_data, isNotEmpty);
      expect(_data.length, equals(14));
    });

    test('[region east type] get data return', () {
      final _data = _instance.getProvince(
        region: RegionType.east);

      expect(_data, isNotEmpty);
      expect(_data.length, equals(7));
    });

    test('[region west type] get data return', () {
      final _data = _instance.getProvince(
        region: RegionType.west);

      expect(_data, isNotEmpty);
      expect(_data.length, equals(5));
    });
  });

  group('District Test:', () {
    test('[default] get data return', () {
      final _data = _instance.getDistrict();
      expect(_data, isNotEmpty);
    });

    test('[id] get data return', () {
      final _data1 = _instance.getDistrict(provinceId: '1');
      expect(_data1, isNotEmpty);

      final _data2 = _instance.getDistrict(provinceId: '01');
      expect(_data2, isNotEmpty);
    });

    test('[id invalid] get data return', () {
      final _data = _instance.getDistrict(provinceId: '');
      expect(_data, isEmpty);
    });
  });

  group('Sub-District Test:', () {
    test('[default] get data return', () {
      final _data = _instance.getSubDistrict();
      expect(_data, isNotEmpty);
    });

    test('[id] get data return', () {
      final _data = _instance.getSubDistrict(districtId: '7708');
      expect(_data, isNotEmpty);
    });

    test('[id invalid] get data return', () {
      final _data = _instance.getSubDistrict(districtId: '');
      expect(_data, isEmpty);
    });
  });
}