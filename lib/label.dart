class Label {
  final String en;
  final String ar;

  const Label({
    required this.en,
    required this.ar,
  });

  factory Label.fromJson(Map<String, dynamic> json) {
    return Label(
      en: json['en'],
      ar: json['ar'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'en': en,
      'ar': ar,
    };
  }
}
