import 'package:flutter/material.dart';
import 'package:flutter_proyecto_final/routes/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Carlos paginas',
      initialRoute: AppRoutes.menuPrincipal,
      routes: AppRoutes.routes,
    );
  }
}
