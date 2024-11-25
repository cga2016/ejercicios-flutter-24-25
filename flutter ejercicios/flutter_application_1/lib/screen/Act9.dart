// ignore_for_file: library_private_types_in_public_api, file_names

import 'dart:async';
import 'dart:math';
import '../drawer/darawernavegable.dart';
import 'package:flutter/material.dart';

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
          if (puntuacion == 0) {
            mostrarAlertDialog(context);
          }
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

//mensaje alerta
  void mostrarAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('CUIDAO'),
          content: const SingleChildScrollView(
            child: Text(
              ' Has perdio, ¿continuar?',
              style: TextStyle(fontSize: 60),
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Cerrar el AlertDialog
                Navigator.pop(context);
                Navigator.pushNamed(context, '/screen/Act8');
              },
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                puntuacion = 0;
              },
              child: const Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }

//mensaje simple
  void mostrarSimpleDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('DISTRACCIÓN \n 8x7 = '),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop();
                mostrarSimpleDialog(context);
              },
              child: const Text('63'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('56'),
            ),
          ],
        );
      },
    );
  }

  void onImageTap() {
    setState(() {
      if (pulsado == false) {
        puntuacion += 1;
        pulsado = true;
        if (puntuacion != 0) {
          if (puntuacion % 5 == 0) {
            mostrarSimpleDialog(context);
          }
        }
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
