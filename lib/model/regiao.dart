import 'package:orbitalert/model/regiao_category.dart';

class Regiao {
  final int id;
  final String title;
  final DateTime time;
  final String description;
  final RegiaoCategory category;

  Regiao({
    required this.id,
    required this.title,
    required this.time,
    required this.description,
    required this.category,
  });
}
