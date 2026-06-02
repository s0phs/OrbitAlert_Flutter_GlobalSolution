import 'package:orbitalert/model/regiao_category.dart';
import 'package:flutter/material.dart';

class CategoryBadge extends StatelessWidget {
  final RegiaoCategory category;

  const CategoryBadge({super.key, required this.category});

  Color _getColor(RegiaoCategory category) {
    switch (category) {
      case RegiaoCategory.norte:
        return const Color.fromARGB(255, 165, 198, 57);
      case RegiaoCategory.sul:
        return const Color.fromARGB(255, 124, 89, 206);
      case RegiaoCategory.sudeste:
        return const Color.fromARGB(255, 240, 215, 74);
      case RegiaoCategory.centroOeste:
        return const Color(0xFFEC7631);
      case RegiaoCategory.nordeste:
        return const Color.fromARGB(255, 185, 66, 66);
    }
  }

  @override
  Widget build(BuildContext context) {
    final color = _getColor(category);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        category.name.toUpperCase(),
        style: Theme.of(
          context,
        ).textTheme.labelMedium?.copyWith(color: Colors.white),
      ),
    );
  }
}
