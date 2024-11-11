// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../drawer/DrawerNavegable.dart';

class Act2 extends StatefulWidget {
  const Act2({super.key, required this.title});

  final String title;

  @override
  State<Act2> createState() => _Act2State();
}

class _Act2State extends State<Act2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicio 2'),
      ),
      drawer: const DrawerNavegable(),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildImageWithText("assets/images/flutter_logo.png", "Ejercicio"),
            _buildImageWithText("assets/images/flutter_logo.png", "Ejercicio"),
            _buildImageWithText("assets/images/flutter_logo.png", "Ejercicio"),
          ],
        ),
      ),
    );
  }

  Widget _buildImageWithText(String imageName, String text) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.asset(
            imageName, // Ruta de la imagen en tu proyecto
            width: 100,
            height: 100,
          ),
          const SizedBox(height: 8.0),
          Text(
            text,
            style: const TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
