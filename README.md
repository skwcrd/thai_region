# Region in Thailand

[![Build Status](https://github.com/skwcrd/thai_region/actions/workflows/ci.yml/badge.svg)](https://github.com/skwcrd/thai_region/actions/workflows/ci.yml)

The flutter project for provide province, district, sub-district in thailand.

## Getting Started

Download or clone repository and add a dependency on the `thai_region` package in the `dependencies` section of pubspec.yaml (recommend use this):

```yaml
dependencies:
  thai_region:
    path: ../PATH_ROOT_DIRECTORY_PLUGIN/
```

or to get the experimental one:

```yaml
dependencies:
  thai_region:
    git:
      url: https://github.com/skwcrd/thai_region.git
      ref: main
```

and then run the shell.

```cmd
flutter pub get
```

For help getting started with Flutter, view our [online documentation](https://flutter.dev/docs), which offers tutorials, samples, guidance on mobile development, and a full API reference.

## Usage

Import package `thai_region.dart` to the project:

```dart
import 'package:thai_region/thai_region.dart';
```

### Create class object

Create instance `ThaiRegion` class:

  ```dart
  var thaiRegion = ThaiRegion();
  ```

### Get region

```dart
var region = thaiRegion.getRegion();
```

### Get province

```dart
var province = thaiRegion.getProvince();
```

Get by provide **RegionType**:

```dart
var province = thaiRegion.getProvince(region: RegionType.central);
```

### Get district

```dart
var district = thaiRegion.getDistrict();
```

Get by provide province ID:

```dart
var district = thaiRegion.getDistrict(provinceId: 'XX');
```

### Get sub-district

```dart
var subDistrict = thaiRegion.getSubDistrict();
```

Get by provide district ID:

```dart
var subDistrict = thaiRegion.getSubDistrict(districtId: 'XXXX');
```

### Method/Attribute in data models

| Method/Attribute | Params | Return | Return Type |
| ------------- | ------------- | ------------- | ------------- |
| id | None | Data ID | String |
| Reference ID (regionId, provinceId, districtId) | None | Reference ID | String |
| zipCode (For **SubDistrict** class only) | None | Postal code of each sub-district | String |
| getName(...) | locale (default: Locale('en')) | Localization name | String |
| toMap() | None | Map data models | Map<String, dynamic> |

## Changelog

Refer to the [Changelog](https://github.com/skwcrd/thai_region/blob/main/CHANGELOG.md) to get all release notes.
