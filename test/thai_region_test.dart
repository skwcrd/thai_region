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
    });

    test('[id] get data return', () {
      final _data = _instance.getProvince(regionId: '1');
      expect(_data, isNotEmpty);
    });

    test('[id invalid] get data return', () {
      final _data = _instance.getProvince(regionId: '');
      expect(_data, isEmpty);
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