import 'package:flutter/material.dart';

class Puntuaciones extends StatefulWidget {
  const Puntuaciones({super.key, required this.title});

  final String title;

  @override
  State<Puntuaciones> createState() => _PuntuacionesState();
}

class _PuntuacionesState extends State<Puntuaciones> {
  final List<String> _puntuaciones = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF407BA7),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/titulos/puntuaciones.png',
              width: 250,
              height: 100,
            ),
            const SizedBox(height: 20),

            // Lista de puntuaciones
            Expanded(
              child: _puntuaciones.isEmpty
                  ? const Text(
                      "No hay puntuaciones aún",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    )
                  : ListView.builder(
                      itemCount: _puntuaciones.length,
                      itemBuilder: (context, index) {
                        return Card(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 5),
                          child: ListTile(
                            title: Text(
                              "Jugador ${index + 1}: ${_puntuaciones[index]} puntos",
                              style: const TextStyle(fontSize: 18),
                            ),
                          ),
                        );
                      },
                    ),
            ),

            const SizedBox(height: 20),

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
}
