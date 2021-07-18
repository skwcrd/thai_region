import 'dart:ui'
  show Locale;

import 'package:flutter_test/flutter_test.dart';

import 'package:thai_region/thai_region.dart'
  show
    ThaiRegion,
    RegionType;

void main() {
  final ThaiRegion _instance = ThaiRegion();

  group('Region tests', () {
    group('[Default] get data return', () {
      final _data = _instance.getRegion();

      test('Check data array', () {
        expect(
          _data, isNotEmpty,
          reason: 'Check data array is not empty');
      });

      test('Check data length', () {
        expect(
          _data.length, equals(6),
          reason: 'Check data array length is equal 6 objects');
      });

      test('Check name in data model', () {
        expect(
          _data.every((d) => d.name.check), isTrue,
          reason: 'Check data name in model is not empty');
        expect(
          _data.every((d) => d.getName().isNotEmpty), isTrue,
          reason: 'Check data name in model is not empty');
        expect(
          _data.every((d) => d.getName(locale: const Locale('th')).isNotEmpty), isTrue,
          reason: 'Check data name in model is not empty');
      });
    });
  });

  group('Province tests', () {
    group('[Default] get data return', () {
      final _data = _instance.getProvince();

      test('Check data array', () {
        expect(
          _data, isNotEmpty,
          reason: 'Check data array is not empty');
      });

      test('Check data length', () {
        expect(
          _data.length, equals(77),
          reason: 'Check data array length is equal 77 objects');
      });

      test('Check name in data model', () {
        expect(
          _data.every((d) => d.name.check), isTrue,
          reason: 'Check data name in model is not empty');
        expect(
          _data.every((d) => d.getName().isNotEmpty), isTrue,
          reason: 'Check data name in model is not empty');
        expect(
          _data.every((d) => d.getName(locale: const Locale('th')).isNotEmpty), isTrue,
          reason: 'Check data name in model is not empty');
      });
    });

    group('[Region central] get data return', () {
      final _data = _instance.getProvince(
        region: RegionType.central);

      test('Check data array', () {
        expect(
          _data, isNotEmpty,
          reason: 'Check data array is not empty');
      });

      test('Check data length', () {
        expect(
          _data.length, equals(22),
          reason: 'Check data array length is equal 22 objects');
      });

      test('Check name in data model', () {
        expect(
          _data.every((d) => d.name.check), isTrue,
          reason: 'Check data name in model is not empty');
        expect(
          _data.every((d) => d.getName().isNotEmpty), isTrue,
          reason: 'Check data name in model is not empty');
        expect(
          _data.every((d) => d.getName(locale: const Locale('th')).isNotEmpty), isTrue,
          reason: 'Check data name in model is not empty');
      });
    });

    group('[Region north] get data return', () {
      final _data = _instance.getProvince(
        region: RegionType.north);

      test('Check data array', () {
        expect(
          _data, isNotEmpty,
          reason: 'Check data array is not empty');
      });

      test('Check data length', () {
        expect(
          _data.length, equals(9),
          reason: 'Check data array length is equal 9 objects');
      });

      test('Check name in data model', () {
        expect(
          _data.every((d) => d.name.check), isTrue,
          reason: 'Check data name in model is not empty');
        expect(
          _data.every((d) => d.getName().isNotEmpty), isTrue,
          reason: 'Check data name in model is not empty');
        expect(
          _data.every((d) => d.getName(locale: const Locale('th')).isNotEmpty), isTrue,
          reason: 'Check data name in model is not empty');
      });
    });

    group('[Region northeast] get data return', () {
      final _data = _instance.getProvince(
        region: RegionType.northeast);

      test('Check data array', () {
        expect(
          _data, isNotEmpty,
          reason: 'Check data array is not empty');
      });

      test('Check data length', () {
        expect(
          _data.length, equals(20),
          reason: 'Check data array length is equal 20 objects');
      });

      test('Check name in data model', () {
        expect(
          _data.every((d) => d.name.check), isTrue,
          reason: 'Check data name in model is not empty');
        expect(
          _data.every((d) => d.getName().isNotEmpty), isTrue,
          reason: 'Check data name in model is not empty');
        expect(
          _data.every((d) => d.getName(locale: const Locale('th')).isNotEmpty), isTrue,
          reason: 'Check data name in model is not empty');
      });
    });

    group('[Region south] get data return', () {
      final _data = _instance.getProvince(
        region: RegionType.south);

      test('Check data array', () {
        expect(
          _data, isNotEmpty,
          reason: 'Check data array is not empty');
      });

      test('Check data length', () {
        expect(
          _data.length, equals(14),
          reason: 'Check data array length is equal 14 objects');
      });

      test('Check name in data model', () {
        expect(
          _data.every((d) => d.name.check), isTrue,
          reason: 'Check data name in model is not empty');
        expect(
          _data.every((d) => d.getName().isNotEmpty), isTrue,
          reason: 'Check data name in model is not empty');
        expect(
          _data.every((d) => d.getName(locale: const Locale('th')).isNotEmpty), isTrue,
          reason: 'Check data name in model is not empty');
      });
    });

    group('[Region east] get data return', () {
      final _data = _instance.getProvince(
        region: RegionType.east);

      test('Check data array', () {
        expect(
          _data, isNotEmpty,
          reason: 'Check data array is not empty');
      });

      test('Check data length', () {
        expect(
          _data.length, equals(7),
          reason: 'Check data array length is equal 7 objects');
      });

      test('Check name in data model', () {
        expect(
          _data.every((d) => d.name.check), isTrue,
          reason: 'Check data name in model is not empty');
        expect(
          _data.every((d) => d.getName().isNotEmpty), isTrue,
          reason: 'Check data name in model is not empty');
        expect(
          _data.every((d) => d.getName(locale: const Locale('th')).isNotEmpty), isTrue,
          reason: 'Check data name in model is not empty');
      });
    });

    group('[Region west] get data return', () {
      final _data = _instance.getProvince(
        region: RegionType.west);

      test('Check data array', () {
        expect(
          _data, isNotEmpty,
          reason: 'Check data array is not empty');
      });

      test('Check data length', () {
        expect(
          _data.length, equals(5),
          reason: 'Check data array length is equal 5 objects');
      });

      test('Check name in data model', () {
        expect(
          _data.every((d) => d.name.check), isTrue,
          reason: 'Check data name in model is not empty');
        expect(
          _data.every((d) => d.getName().isNotEmpty), isTrue,
          reason: 'Check data name in model is not empty');
        expect(
          _data.every((d) => d.getName(locale: const Locale('th')).isNotEmpty), isTrue,
          reason: 'Check data name in model is not empty');
      });
    });
  });

  group('District tests', () {
    group('[Default] get data return', () {
      final _data = _instance.getDistrict();

      test('Check data array', () {
        expect(
          _data, isNotEmpty,
          reason: 'Check data array is not empty');
      });

      test('Check name in data model', () {
        expect(
          _data.every((d) => d.name.check), isTrue,
          reason: 'Check data name in model is not empty');
        expect(
          _data.every((d) => d.getName().isNotEmpty), isTrue,
          reason: 'Check data name in model is not empty');
        expect(
          _data.every((d) => d.getName(locale: const Locale('th')).isNotEmpty), isTrue,
          reason: 'Check data name in model is not empty');
      });
    });

    group('[ID] get data return', () {
      group('ID pattern 1', () {
        final _data = _instance.getDistrict(provinceId: '1');

        test('Check data array', () {
          expect(
            _data, isNotEmpty,
            reason: 'Check data array is not empty');
        });

        test('Check name in data model', () {
          expect(
            _data.every((d) => d.name.check), isTrue,
            reason: 'Check data name in model is not empty');
          expect(
            _data.every((d) => d.getName().isNotEmpty), isTrue,
            reason: 'Check data name in model is not empty');
          expect(
            _data.every((d) => d.getName(locale: const Locale('th')).isNotEmpty), isTrue,
            reason: 'Check data name in model is not empty');
        });
      });

      group('ID pattern 2', () {
        final _data = _instance.getDistrict(provinceId: '01');

        test('Check data array', () {
          expect(
            _data, isNotEmpty,
            reason: 'Check data array is not empty');
        });

        test('Check name in data model', () {
          expect(
            _data.every((d) => d.name.check), isTrue,
            reason: 'Check data name in model is not empty');
          expect(
            _data.every((d) => d.getName().isNotEmpty), isTrue,
            reason: 'Check data name in model is not empty');
          expect(
            _data.every((d) => d.getName(locale: const Locale('th')).isNotEmpty), isTrue,
            reason: 'Check data name in model is not empty');
        });
      });
    });

    group('[ID invalid] get data return', () {
      group('ID invalid pattern 1', () {
        final _data = _instance.getDistrict(provinceId: '');

        test('Check data array', () {
          expect(
            _data, isEmpty,
            reason: 'Check data array is empty when provide province ID incorrect');
        });
      });

      group('ID invalid pattern 2', () {
        final _data = _instance.getDistrict(provinceId: '123');

        test('Check data array', () {
          expect(
            _data, isEmpty,
            reason: 'Check data array is empty when provide province ID incorrect');
        });
      });

      group('ID invalid pattern 3', () {
        final _data = _instance.getDistrict(provinceId: '0');

        test('Check data array', () {
          expect(
            _data, isEmpty,
            reason: 'Check data array is empty when provide province ID incorrect');
        });
      });
    });
  });

  group('Sub-District tests', () {
    group('[Default] get data return', () {
      final _data = _instance.getSubDistrict();

      test('Check data array', () {
        expect(
          _data, isNotEmpty,
          reason: 'Check data array is not empty');
      });

      test('Check name in data model', () {
        expect(
          _data.every((d) => d.name.check), isTrue,
          reason: 'Check data name in model is not empty');
        expect(
          _data.every((d) => d.getName().isNotEmpty), isTrue,
          reason: 'Check data name in model is not empty');
        expect(
          _data.every((d) => d.getName(locale: const Locale('th')).isNotEmpty), isTrue,
          reason: 'Check data name in model is not empty');
      });

      test('Check zip-code in data model', () {
        expect(
          _data.every((d) => d.zipCode.isNotEmpty), isTrue,
          reason: 'Check data zip-code in model is not empty');
        expect(
          _data.every((d) => d.zipCode.length == 5), isTrue,
          reason: 'Check data zip-code in model is characters length equal to 5 characters');
      });
    });

    group('[ID] get data return', () {
      final _data = _instance.getSubDistrict(districtId: '1001');

      test('Check data array', () {
        expect(
          _data, isNotEmpty,
          reason: 'Check data array is not empty');
      });

      test('Check name in data model', () {
        expect(
          _data.every((d) => d.name.check), isTrue,
          reason: 'Check data name in model is not empty');
        expect(
          _data.every((d) => d.getName().isNotEmpty), isTrue,
          reason: 'Check data name in model is not empty');
        expect(
          _data.every((d) => d.getName(locale: const Locale('th')).isNotEmpty), isTrue,
          reason: 'Check data name in model is not empty');
      });

      test('Check zip-code in data model', () {
        expect(
          _data.every((d) => d.zipCode.isNotEmpty), isTrue,
          reason: 'Check data zip-code in model is not empty');
        expect(
          _data.every((d) => d.zipCode.length == 5), isTrue,
          reason: 'Check data zip-code in model is characters length equal to 5 characters');
      });
    });

    group('[ID invalid] get data return', () {
      group('ID invalid pattern 1', () {
        final _data = _instance.getSubDistrict(districtId: '');

        test('Check data array', () {
          expect(
            _data, isEmpty,
            reason: 'Check data array is empty when provide district ID incorrect');
        });
      });

      group('ID invalid pattern 2', () {
        final _data = _instance.getSubDistrict(districtId: '123');

        test('Check data array', () {
          expect(
            _data, isEmpty,
            reason: 'Check data array is empty when provide district ID incorrect');
        });
      });

      group('ID invalid pattern 3', () {
        final _data = _instance.getSubDistrict(districtId: '12345');

        test('Check data array', () {
          expect(
            _data, isEmpty,
            reason: 'Check data array is empty when provide district ID incorrect');
        });
      });

      group('ID invalid pattern 4', () {
        final _data = _instance.getSubDistrict(districtId: '0000');

        test('Check data array', () {
          expect(
            _data, isEmpty,
            reason: 'Check data array is empty when provide district ID incorrect');
        });
      });
    });
  });

  group('Check ID', () {
    test('region ID', () {
      final _data = _instance.getRegion();

      expect(
        _data.every((d) => d.id.isNotEmpty), isTrue,
        reason: 'Check region ID is not empty');
      expect(
        _data.every((d) => d.id.length == 1), isTrue,
        reason: 'Check region ID is characters length equal to one character');
    });

    test('province ID', () {
      final _data = _instance.getProvince();

      expect(
        _data.every((d) => d.id.isNotEmpty), isTrue,
        reason: 'Check province ID is not empty');
      expect(
        _data.every((d) => d.id.length == 1 || d.id.length == 2), isTrue,
        reason: 'Check province ID is characters length equal to one or two characters');
    });

    test('district ID', () {
      final _data = _instance.getDistrict();

      expect(
        _data.every((d) => d.id.isNotEmpty), isTrue,
        reason: 'Check district ID is not empty');
      expect(
        _data.every((d) => d.id.length == 4), isTrue,
        reason: 'Check district ID is characters length equal to 4 characters');
    });

    test('sub-district ID', () {
      final _data = _instance.getSubDistrict();

      expect(
        _data.every((d) => d.id.isNotEmpty), isTrue,
        reason: 'Check sub-district ID is not empty');
      expect(
        _data.every((d) => d.id.length == 6), isTrue,
        reason: 'Check sub-district ID is characters length equal to 6 characters');
    });

    test('sub-district ID reference district ID', () {
      expect(
        _instance
          .getDistrict()
          .every((district) =>
            _instance
              .getSubDistrict(districtId: district.id)
              .every((subDistrict) =>
                subDistrict.id.startsWith(district.id))),
        isTrue,
        reason: 'Check district ID reference in sub-district ID');
    });
  });

  group('Check reference ID', () {
    test('province data', () {
      final _data = _instance.getProvince();

      expect(
        _data.every((d) => d.regionId.isNotEmpty), isTrue,
        reason: 'Check region ID is not empty');
    });

    test('district data', () {
      final _data = _instance.getDistrict();

      expect(
        _data.every((d) => d.provinceId.isNotEmpty), isTrue,
        reason: 'Check province ID is not empty');
    });

    test('sub-district data', () {
      final _data = _instance.getSubDistrict();

      expect(
        _data.every((d) => d.districtId.isNotEmpty), isTrue,
        reason: 'Check district ID is not empty');
    });

    test('all data', () {
      expect(
        _instance
          .getRegion()
          .every((region) =>
            _instance
              .getProvince(region: region.type)
              .every((province) =>
                region.id == province.regionId)),
        isTrue,
        reason: 'Check region ID equal to reference ID in province');

      expect(
        _instance
          .getProvince()
          .every((province) =>
            _instance
              .getDistrict(provinceId: province.id)
              .every((district) =>
                province.id == district.provinceId)),
        isTrue,
        reason: 'Check province ID equal to reference ID in district');

      expect(
        _instance
          .getDistrict()
          .every((district) =>
            _instance
              .getSubDistrict(districtId: district.id)
              .every((subDistrict) =>
                district.id == subDistrict.districtId)),
        isTrue,
        reason: 'Check district ID equal to reference ID in sub-district');
    });
  });
}