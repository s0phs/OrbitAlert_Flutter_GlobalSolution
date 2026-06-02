import 'package:orbitalert/ui/components/orbitalalert_topbar.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  final VoidCallback onBackClick;

  const AboutScreen({
    super.key,
    required this.onBackClick,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OrbitalAlertTopBar(
        title: "Sobre",
        showBackButton: true,
        onBackClick: onBackClick,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "O que é o OrbitAlert?",
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            Image.asset('assets/images/orbita.png'),
            const SizedBox(height: 12),

            Text(
              "O OrbitAlert é uma plataforma mobile que utiliza dados climáticos e informações espaciais para monitorar regiões e gerar alertas ambientais em tempo real. A solução foi criada para ajudar pessoas, produtores rurais e pequenas cidades a acompanharem riscos ambientais de forma simples, rápida e acessível.",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}