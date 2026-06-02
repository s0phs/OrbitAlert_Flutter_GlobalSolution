import 'package:flutter/material.dart';
import 'package:orbitalert/model/estado.dart';
import 'package:orbitalert/model/evento_climatico.dart';
import 'package:orbitalert/ui/components/orbitalalert_topbar.dart';
import 'package:weather_icons/weather_icons.dart';

class EstadoDetailScreen extends StatelessWidget {
  final Estado estado;
  final VoidCallback onBackClick;

  const EstadoDetailScreen({
    super.key,
    required this.estado,
    required this.onBackClick,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OrbitalAlertTopBar(
        title: 'Detalhe',
        showBackButton: true,
        onBackClick: onBackClick,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                getEventoClimaticoIcon(estado.evento),

                const SizedBox(width: 12),

                Expanded(
                  child: Text(
                    estado.title,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            Text("Descrição", style: Theme.of(context).textTheme.titleMedium),

            const SizedBox(height: 8),

            Text(
              estado.description,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}

Widget getEventoClimaticoIcon(EventoClimatico evento) {
  switch (evento) {
    case EventoClimatico.chuva:
      return const BoxedIcon(WeatherIcons.rain, color: Colors.blue);

    case EventoClimatico.tempestade:
      return const BoxedIcon(
        WeatherIcons.thunderstorm,
        color: Colors.deepPurple,
      );

    case EventoClimatico.queimadas:
      return const BoxedIcon(WeatherIcons.fire, color: Color(0xFFFF5100));

    case EventoClimatico.calor:
      return const BoxedIcon(
        WeatherIcons.thermometer,
        color: Color(0xFFFF0000),
      );

    case EventoClimatico.enchente:
      return const BoxedIcon(WeatherIcons.flood, color: Color(0xFF063963));

    case EventoClimatico.seca:
      return const BoxedIcon(
        WeatherIcons.day_sunny,
        color: Color.fromARGB(255, 196, 51, 7),
      );
  }
}
