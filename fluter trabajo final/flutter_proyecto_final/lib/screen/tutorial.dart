// ignore_for_file: file_names

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
      body: Center(
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            const Text(
              'Tap',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 25),
            ),
            Text(
              'Master',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              '\n',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Text(
              ' El juego consiste en imitar \n  los patrones mostrados'
              '\n'
              " en la parte superior "
              " tocando la matriz "
              "\n"
              "de la parte inferior",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }

  Widget _text(String text) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 8.0),
          Text(
            text,
          ),
        ],
      ),
    );
  }

  void _nuevaPartida() {}
}
