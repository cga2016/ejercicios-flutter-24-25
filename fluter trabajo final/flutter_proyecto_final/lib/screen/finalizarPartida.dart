// ignore_for_file: file_names

import 'package:flutter/material.dart';

class FinalizarPartida extends StatefulWidget {
  const FinalizarPartida({super.key, required this.title});

  final String title;

  @override
  State<FinalizarPartida> createState() => _FinalizarPartidaState();
}

class _FinalizarPartidaState extends State<FinalizarPartida> {
  final List<String> _puntuaciones = []; // Lista de puntuaciones

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF407BA7),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/titulos/finPartida.png',
              width: 250,
              height: 100,
            ),
            const Text(
              '¿Quieres añadir tu puntuación?',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40),
            ),
            const SizedBox(height: 20),

            // Lista de puntuaciones
            Expanded(
              child: _puntuaciones.isEmpty
                  ? const Text(
                      "No hay puntuaciones aún",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )
                  : ListView.builder(
                      itemCount: _puntuaciones.length,
                      itemBuilder: (context, index) {
                        return const Card(
                          margin:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          child: ListTile(
                            title: Text(
                              "Jugador 1  50 puntos",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        );
                      },
                    ),
            ),

            const SizedBox(height: 20),

            // Botón para agregar una puntuación de prueba
            ElevatedButton(
              onPressed: () {
                _addPuntuacion();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF002B),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              child: const Text(
                "Añadir puntuación",
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),

            const SizedBox(height: 20),

            // Botón de regresar
            FloatingActionButton.extended(
              label: const Text(
                "Regresar",
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 255, 255, 255)),
              ),
              backgroundColor: const Color(0xFFFF002B),
              onPressed: () {
                _cambiar('/screen/menuPrincipal');
              },
              tooltip: 'Volver al menú principal',
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  void _cambiar(String ruta) {
    Navigator.pop(context);
    Navigator.pushNamed(context, ruta);
  }

  void _addPuntuacion() {
    setState(() {
      _puntuaciones.add((10 + _puntuaciones.length * 5).toString());
    });
  }
}
