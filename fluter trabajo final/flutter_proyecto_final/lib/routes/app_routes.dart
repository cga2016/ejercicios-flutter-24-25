import 'package:flutter/material.dart';
import 'package:flutter_proyecto_final/screen/finalizarPartida.dart';
import 'package:flutter_proyecto_final/screen/juego.dart';
import 'package:flutter_proyecto_final/screen/menuPrincipal.dart';
import 'package:flutter_proyecto_final/screen/puntuaciones.dart';
import 'package:flutter_proyecto_final/screen/tutorial.dart';

class AppRoutes {
  // Definir nombres para las rutas
  static const String home = '/screen/Home';
  static const String menuPrincipal = '/screen/menuPrincipal';
  static const String juego = '/screen/juego';
  static const String finalizarPartida = '/screen/finalizarPartida';
  static const String puntuaciones = '/screen/puntuaciones';
  static const String tutorial = '/screen/tutorial';

  // Mapa de rutas
  static final Map<String, WidgetBuilder> routes = {
    //home: (context) => const HomeScreen(),
    menuPrincipal: (context) => const MenuPrincipal(title: 'Menu Principal'),
    juego: (context) => const Juego(),
    finalizarPartida: (context) => const FinalizarPartida(title: "title"),
    puntuaciones: (context) => const Puntuaciones(
          title: '',
        ),
    tutorial: (context) => const Tutorial(title: "title"),
  };

  static void addRoutes(Map<String, WidgetBuilder> newRoutes) {
    routes.addAll(newRoutes);
  }
}
