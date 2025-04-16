import 'package:drahim_services/label.dart';

class DrahimService {
  final int id;
  final Label title;
  final Label description;

  const DrahimService({
    required this.id,
    required this.title,
    required this.description,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title.toJson(),
      'description': description.toJson(),
    };
  }
}
