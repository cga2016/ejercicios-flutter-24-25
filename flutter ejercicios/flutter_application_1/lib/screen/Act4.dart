// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../drawer/darawernavegable.dart';

class Act4 extends StatefulWidget {
  const Act4({super.key, required this.title});

  final String title;

  @override
  State<Act4> createState() => _Act4State();
}

class _Act4State extends State<Act4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo de iconos en una'),
      ),
      drawer: const DrawerNavegable(),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.add_card_outlined,
                  color: Colors.black,
                ),
                Icon(
                  Icons.vignette,
                  color: Colors.black,
                ),
                Icon(
                  Icons.safety_check_outlined,
                  color: Colors.black,
                ),
                Icon(
                  Icons.javascript_rounded,
                  color: Colors.black,
                ),
                Icon(
                  Icons.macro_off,
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
