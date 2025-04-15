class DrahimService {
  final String title;
  final String description;

  const DrahimService({
    required this.title,
    required this.description,
  });

  factory DrahimService.fromJson(Map<String, dynamic> json) {
    return DrahimService(
      title: json['title'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
    };
  }
}
