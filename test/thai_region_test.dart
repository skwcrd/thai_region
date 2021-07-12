import 'package:flutter_test/flutter_test.dart';

import 'package:thai_region/thai_region.dart';

void main() {
  final ThaiRegion _instance = ThaiRegion();

  group('Region Test:', () {
    test('[default] get data return', () {
      final _data = _instance.getRegion();

      expect(
        _data, isNotEmpty,
        reason: 'Check data arrays is not empty');
    });
  });

  group('Province Test:', () {
    test('[default] get data return', () {
      final _data = _instance.getProvince();

      expect(
        _data, isNotEmpty,
        reason: 'Check data arrays is not empty');

      expect(
        _data.length, equals(77),
        reason: 'Check data array length is equal 77 objects');
    });

    test('[region central type] get data return', () {
      final _data = _instance.getProvince(
        region: RegionType.central);

      expect(
        _data, isNotEmpty,
        reason: 'Check data arrays is not empty');

      expect(
        _data.length, equals(22),
        reason: 'Check data array length is equal 22 objects');
    });

    test('[region north type] get data return', () {
      final _data = _instance.getProvince(
        region: RegionType.north);

      expect(
        _data, isNotEmpty,
        reason: 'Check data arrays is not empty');

      expect(
        _data.length, equals(9),
        reason: 'Check data array length is equal 9 objects');
    });

    test('[region northeast type] get data return', () {
      final _data = _instance.getProvince(
        region: RegionType.northeast);

      expect(
        _data, isNotEmpty,
        reason: 'Check data arrays is not empty');

      expect(
        _data.length, equals(20),
        reason: 'Check data array length is equal 20 objects');
    });

    test('[region south type] get data return', () {
      final _data = _instance.getProvince(
        region: RegionType.south);

      expect(
        _data, isNotEmpty,
        reason: 'Check data arrays is not empty');

      expect(
        _data.length, equals(14),
        reason: 'Check data array length is equal 14 objects');
    });

    test('[region east type] get data return', () {
      final _data = _instance.getProvince(
        region: RegionType.east);

      expect(
        _data, isNotEmpty,
        reason: 'Check data arrays is not empty');

      expect(
        _data.length, equals(7),
        reason: 'Check data array length is equal 7 objects');
    });

    test('[region west type] get data return', () {
      final _data = _instance.getProvince(
        region: RegionType.west);

      expect(
        _data, isNotEmpty,
        reason: 'Check data arrays is not empty');

      expect(
        _data.length, equals(5),
        reason: 'Check data array length is equal 5 objects');
    });
  });

  group('District Test:', () {
    test('[default] get data return', () {
      final _data = _instance.getDistrict();

      expect(
        _data, isNotEmpty,
        reason: 'Check data arrays is not empty');
    });

    test('[id] get data return', () {
      final _data1 = _instance.getDistrict(provinceId: '1');

      expect(
        _data1, isNotEmpty,
        reason: 'Check data arrays is not empty');

      final _data2 = _instance.getDistrict(provinceId: '01');

      expect(
        _data2, isNotEmpty,
        reason: 'Check data arrays is not empty');
    });

    test('[id invalid] get data return', () {
      final _data = _instance.getDistrict(provinceId: '');

      expect(
        _data, isEmpty,
        reason: 'Check data arrays is empty when provide province id incorrect');
    });
  });

  group('Sub-District Test:', () {
    test('[default] get data return', () {
      final _data = _instance.getSubDistrict();

      expect(
        _data, isNotEmpty,
        reason: 'Check data arrays is not empty');

      expect(
        _data.every((d) => d.zipCode.isNotEmpty), isTrue,
        reason: 'Check data zip code in model is not empty');
    });

    test('[id] get data return', () {
      final _data = _instance.getSubDistrict(districtId: '7708');

      expect(
        _data, isNotEmpty,
        reason: 'Check data arrays is not empty');
    });

    test('[id invalid] get data return', () {
      final _data = _instance.getSubDistrict(districtId: '');

      expect(
        _data, isEmpty,
        reason: 'Check data arrays is empty when provide district id incorrect');
    });
  });
}