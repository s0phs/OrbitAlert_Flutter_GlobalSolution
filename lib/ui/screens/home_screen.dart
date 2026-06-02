import 'package:orbitalert/data/fake_data.dart';
import 'package:orbitalert/model/regiao.dart';
import 'package:orbitalert/ui/components/orbitalalert_topbar.dart';
import 'package:orbitalert/ui/components/regiao_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String email;
  final VoidCallback onAboutClick;
  final ValueChanged<Regiao> onSpeakerClick;
  final VoidCallback onLogoutClick;

  const HomeScreen({
    super.key,
    required this.email,
    required this.onAboutClick,
    required this.onSpeakerClick,
    required this.onLogoutClick,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OrbitalAlertTopBar(
        title: 'OrbitAlert',
        actions: [
          IconButton(
            onPressed: onAboutClick,
            icon: const Icon(Icons.info),
            tooltip: 'Sobre',
          ),
          IconButton(
            onPressed: onLogoutClick,
            icon: const Icon(Icons.exit_to_app),
            tooltip: 'Logout',
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Olá, $email!',
              style: Theme.of(context).textTheme.headlineSmall,
            ),

            const SizedBox(height: 8),

            Text(
              'Bem-vindo ao app OrbitAlert.',
              style: Theme.of(context).textTheme.bodyLarge,
            ),

            const SizedBox(height: 24),

            Expanded(
              child: ListView.separated(
                itemCount: OrbitAlertRegioes.length + 1,
                separatorBuilder: (_, __) => const SizedBox(height: 16),
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Text(
                      'Regiões',
                      style: Theme.of(context).textTheme.titleLarge,
                    );
                  }

                  final talk = OrbitAlertRegioes[index - 1];

                  return RegiaoCard(
                    regiao: talk,
                    onClick: () => onSpeakerClick(talk),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
