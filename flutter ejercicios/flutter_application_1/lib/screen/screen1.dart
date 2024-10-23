import 'package:flutter/material.dart';

import '../drawer/DrawerNavegable.dart';

class Act1 extends StatefulWidget {
  const Act1({super.key, required this.title});

  final String title;

  @override
  State<Act1> createState() => _Act1State();
}

class _Act1State extends State<Act1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                  _buildImageWithText(
                      "assets/images/flutter_logo.png", "Flutter")
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
                  _buildImageWithText(
                      "assets/images/flutter_logo.png", "carlos"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageWithText(String imageName, String text) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.asset(
            '$imageName', // Ruta de la imagen en tu proyecto
            width: 100,
            height: 100,
          ),
          SizedBox(height: 8.0),
          Text(
            text,
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
