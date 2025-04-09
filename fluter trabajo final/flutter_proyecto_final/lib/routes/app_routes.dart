import 'package:flutter/material.dart';

import 'package:flutter_proyecto_final/screen/screen.dart';

class AppRoutes {
  // Definir nombres para las rutas
  static const String home = '/screen/Home';
  static const String menuPrincipal = '/screen/menuPrincipal';
  static const String juego = '/screen/juego';
  static const String finalizarPartida = '/screen/finalizarPartida';
  static const String puntuaciones = '/screen/puntuaciones';
  static const String tutorial = '/screen/tutorial';
  static const String iniciarSesion = '/screen/iniciarSesion';
  static const String registroUsuario = '/screen/registroUsuarios';
  static const String gestorDeSesion = '/screen/gestorDeSesion';

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
    iniciarSesion: (context) => const IniciarSesion(title: "title"),
    registroUsuario: (context) => const RegistroUsuario(title: "title"),
    gestorDeSesion: (context) => const GestorDeSesion(title: "title"),
  };

  static void addRoutes(Map<String, WidgetBuilder> newRoutes) {
    routes.addAll(newRoutes);
  }
}
