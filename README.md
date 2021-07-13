# Region in Thailand

[![Tests](https://github.com/skwcrd/thai_region/actions/workflows/ci.yml/badge.svg)](https://github.com/skwcrd/thai_region/actions/workflows/ci.yml)

The flutter project for provide province, district, sub-district in thailand.

## Getting Started

This project is a starting point for a Dart [package](https://flutter.dev/developing-packages/), a library module containing code that can be shared easily across multiple Flutter or Dart projects.

For help getting started with Flutter, view our [online documentation](https://flutter.dev/docs), which offers tutorials, samples, guidance on mobile development, and a full API reference.

## Installation

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

last step import to the project:

```dart
import 'package:thai_region/thai_region.dart';
```
