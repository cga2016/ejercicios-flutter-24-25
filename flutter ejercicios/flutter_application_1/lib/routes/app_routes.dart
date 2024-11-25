import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/screen.dart';

class AppRoutes {
  // Definir nombres para las rutas
  static const String home = '/screen/Home';
  static const String act1 = '/screen/Act1';
  static const String act2 = '/screen/Act2';
  static const String act3 = '/screen/Act3';
  static const String act4 = '/screen/Act4';
  static const String act5 = '/screen/Act5';
  static const String act6 = '/screen/Act6';
  static const String act7 = '/screen/Act7';
  static const String aviso = '/screen/Aviso';
  static const String act8 = '/screen/Act8';
  static const String act9 = '/screen/Act9';

  // Mapa de rutas
  static final Map<String, WidgetBuilder> routes = {
    home: (context) => const Home(title: 'Home'),
    act1: (context) => const Act1(title: 'Act1'),
    act2: (context) => const Act2(title: 'Act2'),
    act3: (context) => const Act3(title: 'Act3'),
    act4: (context) => const Act4(title: 'Act4'),
    act5: (context) => const Act5(title: 'Act5'),
    act6: (context) => const Act6(title: 'Act6'),
    act7: (context) => const Act7(),
    aviso: (context) => const Aviso(title: 'Aviso'),
    act8: (context) => const Act8(),
    act9: (context) => const Act9(),
  };

  static void addRoutes(Map<String, WidgetBuilder> newRoutes) {
    routes.addAll(newRoutes);
  }
}
