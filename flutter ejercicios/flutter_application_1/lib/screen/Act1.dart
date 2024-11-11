// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ejercicios Flutter act 1"),
      ),
      drawer: const DrawerNavegable(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _text("Carlos"),
                _text("Gil Albañil"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "thttps://github.com/cga2016/ejercicios-flutter-24-25.git",
                  style: GoogleFonts.kronaOne(),
                ),
              ],
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
            style: GoogleFonts.getFont('Lato'),
          ),
        ],
      ),
    );
  }
}
