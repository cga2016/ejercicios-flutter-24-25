// ignore_for_file: unused_element

import 'package:flutter/material.dart';

class Tutorial extends StatefulWidget {
  const Tutorial({super.key, required this.title});

  final String title;

  @override
  State<Tutorial> createState() => _TutorialState();
}

class _TutorialState extends State<Tutorial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF407BA7),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/titulos/titulo.png',
              width: 250,
              height: 100,
            ),
            Text(
              '\n \n \n \n \n ',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Text(
              'El juego consiste en buscar al pokemon correcto, '
              ' \n '
              '\n'
              'Tendras 5 intentos para poder adivinarlo,'
              '\n'
              '\n'
              "si lo adivinas se añadiran 30 segundos al temporizador,"
              "\n"
              '\n'
              " Si se queda sin vidas o se agota su tiempo se perderá "
              "\n"
              '\n'
              "¡Adivina todos los que puedas antes de perder!"
              '\n',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 18),
            ),
            FloatingActionButton.extended(
              label: const Text(
                " Regresar ",
                style: TextStyle(
                    fontSize: 25.20, color: Color.fromARGB(255, 255, 255, 255)),
              ),
              backgroundColor: const Color(0xFFFF002B),
              extendedPadding: const EdgeInsets.all(90),
              // child: Text("Nueva partida"),

              onPressed: () {
                _cambiarPantalla('/screen/menuPrincipal');
              },
              tooltip: 'vuelve a menu principal',
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

  void _cambiarPantalla(String ruta) {
    Navigator.pop(context);
    Navigator.pushNamed(context, ruta);
  }
}
