// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../drawer/darawernavegable.dart';

class Act3 extends StatefulWidget {
  const Act3({super.key, required this.title});

  final String title;

  @override
  State<Act3> createState() => _Act3State();
}

class _Act3State extends State<Act3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicio3'),
      ),
      drawer: const DrawerNavegable(),
      body: Center(
        child: Column(
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
