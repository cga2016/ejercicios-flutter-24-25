// ignore_for_file: library_private_types_in_public_api, file_names

import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/drawer/DrawerNavegable.dart';

class Act9 extends StatelessWidget {
  const Act9({super.key});

  @override
  Widget build(BuildContext context) {
    return const Act9Ej();
  }
}

class Act9Ej extends StatefulWidget {
  const Act9Ej({super.key});

  @override
  _Act9EjState createState() => _Act9EjState();
}

class _Act9EjState extends State<Act9Ej> {
  static const int tiempo = 2;
  bool pulsado = false;
  int puntuacion = 0;
  double x = 0;
  double y = 0;
  Timer? temporizador;
  final random = Random();

  @override
  void initState() {
    super.initState();
    startGame();
  }

  void startGame() {
    temporizador = Timer.periodic(const Duration(seconds: tiempo), (timer) {
      setState(() {
        moveImage();
        if (pulsado == true) {
          pulsado = false;
        } else {
          puntuacion -= 2;
        }
      });
    });
  }

  void moveImage() {
    setState(() {
      //Usa el tamaño de la pantalla para elegir unas cordenadas en ese tamaño
      x = random.nextDouble() * MediaQuery.of(context).size.width;
      y = random.nextDouble() * MediaQuery.of(context).size.height;
    });
  }

  void onImageTap() {
    setState(() {
      if (pulsado == false) {
        puntuacion += 1;
        pulsado = true;
      }
    });
  }

/*
Metodo para cerrar lo asociado al widget para cuando deje de usarse
*/
  @override
  void dispose() {
    temporizador?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Puntuación: $puntuacion'),
      ),
      drawer: const DrawerNavegable(),
      body: Stack(
        children: [
          Positioned(
            left: x,
            top: y,
            child: GestureDetector(
              onTap: onImageTap,
              child: Image.asset(
                'assets/8.jpg',
                width: 100,
                height: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
