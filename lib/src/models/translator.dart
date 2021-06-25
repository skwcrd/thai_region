part of models;

class Translator {
  Translator._({
    required this.en,
    required this.th,
  });

  factory Translator.fromMap(Map<String, dynamic> data) =>
      Translator._(
        en: data['en'],
        th: data['th']);

  final String en;
  final String th;

  Map<String, dynamic> toMap() =>
      {
        'en': en,
        'th': th,
      };

  @override
  String toString({
    Locale locale = const Locale('en'),
  }) =>
      (locale.languageCode == 'th') ? th : en;
}