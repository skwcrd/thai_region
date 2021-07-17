part of models;

class Translator {
  const Translator._({
    required this.en,
    required this.th,
  });

  factory Translator._fromMap(Map<String, dynamic> data) =>
      Translator._(
        en: data['en'] ?? '',
        th: data['th'] ?? '');

  final String en;
  final String th;

  @visibleForTesting
  bool get check =>
      en.isNotEmpty && th.isNotEmpty;

  Map<String, dynamic> toMap() =>
      {
        'en': en,
        'th': th,
      };

  @override
  String toString({
    Locale locale = const Locale('en'),
  }) =>
      (locale.languageCode == 'en') ? en : th;
}