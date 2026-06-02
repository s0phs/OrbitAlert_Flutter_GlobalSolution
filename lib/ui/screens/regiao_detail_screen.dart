import 'package:orbitalert/model/regiao.dart';
import 'package:orbitalert/model/regiao_category.dart';
import 'package:orbitalert/ui/components/orbitalalert_topbar.dart';
import 'package:flutter/material.dart';
import 'package:orbitalert/data/fake_data.dart';
import 'package:orbitalert/ui/screens/estado_detail_screen.dart';

class TalkDetailScreen extends StatelessWidget {
  final Regiao? regiao;
  final VoidCallback onBackClick;

  const TalkDetailScreen({
    super.key,
    required this.regiao,
    required this.onBackClick,
  });

  @override
  Widget build(BuildContext context) {
    final estadosDaRegiao = orbitAlertEstados.where((estado) => estado.category == regiao?.category).toList();

    return Scaffold(
      appBar: OrbitalAlertTopBar(
        title: 'Detalhe',
        showBackButton: true,
        onBackClick: onBackClick,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: regiao == null
            ? const Text('Nenhuma Região encontrada')
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    regiao!.title,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),

                  const SizedBox(height: 20),

                  Row(
                    children: [
                      ClipOval(
                        child: SizedBox(
                          width: 150,
                          height: 150,
                          child: Image.asset(
                            getCategoryImagePath(regiao!.category),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),

                  Text(
                    'Descrição',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),

                  const SizedBox(height: 8),

                  Text(
                    regiao!.description,
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium?.copyWith(height: 1.4),
                  ),

                  const SizedBox(height: 24),

                  Text(
                    'Estados monitorados',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),

                  const SizedBox(height: 12),

                  SizedBox(
                    height: 220,
                    child: ListView.separated(
                      itemCount: estadosDaRegiao.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 12),
                      itemBuilder: (context, index) {
                        final estado = estadosDaRegiao[index];

                        return Card(
                          child: ListTile(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => EstadoDetailScreen(
                                    estado: estado,
                                    onBackClick: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                              );
                            },
                            
                            leading: getEventoClimaticoIcon(estado.evento),
                            title: Text(estado.title),
                            subtitle: Text(
                              estado.description,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  const Spacer(),
                ],
              ),
      ),
    );
  }
}

String getCategoryImagePath(RegiaoCategory category) {
  switch (category) {
    case RegiaoCategory.norte:
      return 'assets/images/norte.jpg';

    case RegiaoCategory.sul:
      return 'assets/images/sul.png';

    case RegiaoCategory.sudeste:
      return 'assets/images/sudeste.png';

    case RegiaoCategory.centroOeste:
      return 'assets/images/centro-oeste.png';

    case RegiaoCategory.nordeste:
      return 'assets/images/nordeste.png';
  }
}
