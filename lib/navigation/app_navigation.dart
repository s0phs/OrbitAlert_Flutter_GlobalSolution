import 'package:orbitalert/model/regiao.dart';
import 'package:orbitalert/navigation/app_routes.dart';
import 'package:orbitalert/ui/screens/about_screen.dart';
import 'package:orbitalert/ui/screens/home_screen.dart';
import 'package:orbitalert/ui/screens/login_screen.dart';
import 'package:orbitalert/ui/screens/intro_screen.dart';
import 'package:orbitalert/ui/screens/splash_screen.dart';
import 'package:orbitalert/ui/screens/regiao_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppNavigation {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(
          builder: (context) => SplashScreen(
            onNavigateToLogin: () {
              Navigator.pushReplacementNamed(context, AppRoutes.intro);
            },
          ),
        );

      case AppRoutes.intro:
        return MaterialPageRoute(
          builder: (context) => IntroScreen(
            onFinish: () {
              Navigator.pushNamed(context, AppRoutes.login);
            },
          ),
        );

      case AppRoutes.login:
        return MaterialPageRoute(
          builder: (context) => LoginScreen(
            onLoginClick: (email) {
              Navigator.pushNamedAndRemoveUntil(
                context,
                AppRoutes.home,
                (routes) => false, //para remover todas as telas da pilha
                arguments: email,
              );
            },
          ),
        );

      case AppRoutes.home:
        final String email = settings.arguments as String? ?? '';
        return MaterialPageRoute(
          builder: (context) => HomeScreen(
            email: email,
            onAboutClick: () {
              Navigator.pushNamed(context, AppRoutes.about);
            },

            onSpeakerClick: (talk) {
              Navigator.pushNamed(context, AppRoutes.detail, arguments: talk);
            },

            onLogoutClick: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                AppRoutes.login,
                (routes) => false,
              );
            },
          ),
        );

      case AppRoutes.detail:
        final talk = settings.arguments as Regiao?;
        return MaterialPageRoute(
          builder: (context) => TalkDetailScreen(
            regiao: talk,
            onBackClick: () {
              Navigator.pop(context);
            },
          ),
        );

      case AppRoutes.about:
        return MaterialPageRoute(
          builder: (context) => AboutScreen(
            onBackClick: () {
              Navigator.pop(context);
            },
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (_) =>
              Scaffold(body: Center(child: Text("Página não encontrada"))),
        );
    }
  }
}
