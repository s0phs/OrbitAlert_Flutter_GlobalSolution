import 'package:orbitalert/navigation/app_navigation.dart';
import 'package:orbitalert/navigation/app_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const OrbitalAlertApp());
}

class OrbitalAlertApp extends StatelessWidget {
  const OrbitalAlertApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OrbitAlert Navigation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      initialRoute: AppRoutes.splash,
      onGenerateRoute: AppNavigation.generateRoute,
    );
  }
}