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
      });

      test('Check zip-code in data model', () {
        expect(
          _data.every((d) => d.zipCode.isNotEmpty), isTrue,
          reason: 'Check data zip-code in model is not empty');
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
      });

      test('Check zip-code in data model', () {
        expect(
          _data.every((d) => d.zipCode.isNotEmpty), isTrue,
          reason: 'Check data zip-code in model is not empty');
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
}