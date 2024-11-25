import 'package:flutter/material.dart';
import 'package:flutter_application_1/drawer/darawernavegable.dart';

class Temas extends StatelessWidget {
  final bool isDarkMode;
  final ValueChanged<bool> toggleTheme;

  const Temas({super.key, required this.isDarkMode, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tema Personalizado',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.light_outlined : Icons.light_rounded),
            onPressed: () {
              toggleTheme(!isDarkMode); // Cambiar el tema
            },
          ),
        ],
      ),
      drawer: const DrawerNavegable(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Texto de prueba',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
