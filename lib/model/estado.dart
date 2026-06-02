import 'package:orbitalert/model/regiao_category.dart';
import 'package:orbitalert/model/evento_climatico.dart';

class Estado {
  final int id;
  final String title;
  final String description;
  final RegiaoCategory category;
  final EventoClimatico evento;
  
  Estado({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.evento,
  });
}
