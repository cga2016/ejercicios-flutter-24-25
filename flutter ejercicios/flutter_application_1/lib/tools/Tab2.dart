// ignore: file_names
import 'package:flutter/material.dart';

// simplemente un mini contenido para no dejar vacio lo que hay en las tabulaciones
class Tab2 extends StatelessWidget {
  const Tab2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Pantalla vacia',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
