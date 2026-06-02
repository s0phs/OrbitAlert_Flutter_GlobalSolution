import 'package:orbitalert/model/regiao.dart';
import 'package:orbitalert/ui/components/category_badge.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RegiaoCard extends StatelessWidget {
  final Regiao regiao;
  final VoidCallback onClick;

  const RegiaoCard({super.key, required this.regiao, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: onClick,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CategoryBadge(category: regiao.category),

              const SizedBox(height: 8),

              Text(
                regiao.title,
                style: Theme.of(context).textTheme.titleMedium,
              ),

              const SizedBox(height: 8),

              Row(
                children: [
                  const Icon(Icons.schedule),
                  const SizedBox(width: 6),
                  Text(
                    "Última atualização às: ",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    DateFormat('HH:mm').format(regiao.time),
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
