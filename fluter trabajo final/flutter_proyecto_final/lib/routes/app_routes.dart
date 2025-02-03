import 'package:flutter/material.dart';
import 'package:flutter_proyecto_final/screen/menuPrincipal.dart';

class AppRoutes {
  // Definir nombres para las rutas
  static const String home = '/screen/Home';
  static const String menuPrincipal = '/screen/menuPrincipal';

  // Mapa de rutas
  static final Map<String, WidgetBuilder> routes = {
    menuPrincipal: (context) => const MenuPrincipal(title: 'menuPrincipal'),
  };

  static void addRoutes(Map<String, WidgetBuilder> newRoutes) {
    routes.addAll(newRoutes);
  }
}
