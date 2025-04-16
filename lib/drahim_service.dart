import 'package:drahim_services/label.dart';

class DrahimService {
  final Label title;
  final Label description;

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
