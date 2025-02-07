// ignore_for_file: file_names

import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

// ignore: camel_case_types
class Juego extends StatefulWidget {
  const Juego({super.key});

  @override
  State<Juego> createState() => _JuegoState();
}

class _JuegoState extends State<Juego> {
  final int tamanioMatriz = 3;
  late List<List<bool>> matrizAImitar;
  late List<List<bool>> matrizJugador;
  int score = 0;
  late Timer temporizador;
  int tiempo = 30;

  @override
  void initState() {
    super.initState();
    _generarPatron();
    matrizJugador =
        List.generate(tamanioMatriz, (_) => List.filled(tamanioMatriz, false));
    temporizador = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (tiempo > 0) {
        setState(() {
          tiempo--;
        });
      } else {
        Navigator.pop(context);
        Navigator.pushNamed(context, '/screen/finalizarPartida');
        timer.cancel();
      }
    });
  }

  void _generarPatron() {
    final random = Random();
    matrizAImitar = List.generate(tamanioMatriz,
        (_) => List.generate(tamanioMatriz, (_) => random.nextBool()));
  }

  void _establecerMatrizJugador(int row, int col) {
    setState(() {
      matrizJugador[row][col] = !matrizJugador[row][col];
      _comprobar();
    });
  }

  void _comprobar() {
    if (matrizJugador.toString() == matrizAImitar.toString()) {
      setState(() {
        score++;
        _generarPatron();
        matrizJugador = List.generate(
            tamanioMatriz, (_) => List.filled(tamanioMatriz, false));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Imita el patron - Tiempo: $tiempo s')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Puntuación: $score', style: const TextStyle(fontSize: 24)),
          _crearMatriz(matrizAImitar, false),
          const SizedBox(height: 20),
          _crearMatriz(matrizJugador, true),
        ],
      ),
    );
  }

/*
clase que crea la matirz, se aprobecha en ambas, solo que la del jugador es interactuable, la otra no
 */
  Widget _crearMatriz(List<List<bool>> grid, bool isPlayerGrid) {
    return Column(
      children: List.generate(
        tamanioMatriz,
        (row) => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            tamanioMatriz,
            (col) => GestureDetector(
              onTap: isPlayerGrid
                  ? () => _establecerMatrizJugador(row, col)
                  : null,
              child: Container(
                width: 60,
                height: 60,
                margin: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: grid[row][col]
                      ? const Color.fromARGB(255, 5, 87, 163)
                      : const Color.fromARGB(255, 48, 56, 66),
                  border: Border.all(color: Colors.black),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

/*
 * cancela el timer para que no siga en segundo plano
 */
  @override
  void dispose() {
    temporizador.cancel();
    super.dispose();
  }
}
