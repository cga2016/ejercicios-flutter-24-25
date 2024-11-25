// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../drawer/darawernavegable.dart';

class Act6 extends StatefulWidget {
  const Act6({super.key, required this.title});

  final String title;

  @override
  State<Act6> createState() => _Act6State();
}

class _Act6State extends State<Act6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo de filas y columnas animadas'),
      ),
      drawer: const DrawerNavegable(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildImageWithText("assets/images/flutter_logo.png", "Flutter")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildImageWithText("assets/images/flutter_logo.png", "Act"),
                _buildImageWithText("assets/images/flutter_logo.png", "1"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildImageWithText(
                    "assets/images/flutter_logo.png", "Ejercicio"),
                _buildImageWithText("assets/images/flutter_logo.png", "por"),
                _buildImageWithText("assets/images/flutter_logo.png", "carlos"),
              ],
            ),
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
