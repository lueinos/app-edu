import 'package:app_educacional/views/fase1.dart';
import 'package:app_educacional/views/fase2.dart';
import 'package:app_educacional/views/fase2intro.dart';
import 'package:app_educacional/views/fase3.dart';
import 'package:app_educacional/views/fase3intro.dart';
import 'package:app_educacional/views/fase4.dart';
import 'package:app_educacional/views/fase4intro.dart';
import 'package:app_educacional/views/home.dart';
import 'package:app_educacional/views/fase1intro.dart';
import 'package:app_educacional/views/paginainicial.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => HomePage());
      case "/home":
        return MaterialPageRoute(builder: (_) => Home());
      case "/fase_1_intro":
        return MaterialPageRoute(builder: (_) => Fase1Intro());
      case "/fase_1":
        return MaterialPageRoute(builder: (_) => Fase1());
      case "/fase_2_intro":
        return MaterialPageRoute(builder: (_) => Fase2Intro());
      case "/fase_2":
        return MaterialPageRoute(builder: (_) => Fase2());
      case "/fase_3_intro":
        return MaterialPageRoute(builder: (_) => Fase3Intro());
      case "/fase_3":
        return MaterialPageRoute(builder: (_) => Fase3());
      case "/fase_4_intro":
        return MaterialPageRoute(builder: (_) => Fase4Intro());
      case "/fase_4":
        return MaterialPageRoute(builder: (_) => Fase4());
      default:
        _erroRota();
    }

    throw '';
  }

  static Route<dynamic> _erroRota() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Erro Rota"),
        ),
        body: const Text("Tela não encontrada"),
      );
    });
  }
}
