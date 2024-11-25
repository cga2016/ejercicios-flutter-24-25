// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../drawer/darawernavegable.dart';

class Aviso extends StatefulWidget {
  const Aviso({super.key, required this.title});

  final String title;

  @override
  State<Aviso> createState() => _AvisoState();
}

class _AvisoState extends State<Aviso> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Aviso sobre el Instagram'),
        ),
        drawer: const DrawerNavegable(),
        body: Container(
          height: 150,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 0, 0),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(100),
              bottomLeft: Radius.circular(100),
            ),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(170, 28, 2, 41),
                offset: Offset(50, 100),
                blurRadius: 5,
              ),
            ],
          ),
          alignment: Alignment.center,
          child: const Text(
            'En la pantalla de instagran,en post de añadir el drawer\n se ha modificado ligeramente el aspecto',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ));
  }
}
