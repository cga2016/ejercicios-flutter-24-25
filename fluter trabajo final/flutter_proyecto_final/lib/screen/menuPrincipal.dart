// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MenuPrincipal extends StatefulWidget {
  const MenuPrincipal({super.key, required this.title});

  final String title;

  @override
  State<MenuPrincipal> createState() => _MenuPrincipalState();
}

class _MenuPrincipalState extends State<MenuPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF407BA7),
      body: Center(
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            Image.asset(
              'assets/titulos/titulo.png',
              width: 250,
              height: 100,
            ),
            Text(
              '\n',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(),
                FloatingActionButton.extended(
                  label: const Text(
                    "        Jugar          ",
                    style: TextStyle(
                        fontSize: 25.20,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  backgroundColor: const Color(0xFFFF002B),
                  extendedPadding: const EdgeInsets.all(80),
                  // child: Text("Nueva partida"),
                  onPressed: _jugar,
                  tooltip:
                      'Crea una nueva partida: \n !CUIDADO¡ la antigua partida se borrara',
                ),
              ],
            ),
            /*FloatingActionButton(
              child: Text("Nueva partida"),
              onPressed: _nuevaPartida,
              tooltip:
                  'Crea una nueva partida: \n !CUIDADO¡ la antigua partida se borrara',
                  
            ),*/
            const Text("\n"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(),
                FloatingActionButton.extended(
                  label: const Text(
                    " Puntuaciones ",
                    style: TextStyle(
                        fontSize: 25.20,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  backgroundColor: const Color(0xFFFF002B),
                  extendedPadding: const EdgeInsets.all(90),
                  // child: Text("Nueva partida"),

                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/screen/puntuaciones');
                  },
                  tooltip: 'revisar las puntuaciones',
                ),
              ],
            ),
            const Text("\n"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(),
                FloatingActionButton.extended(
                  label: const Text(
                    "    Tutoriales     ",
                    style: TextStyle(
                        fontSize: 25.20,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  backgroundColor: const Color(0xFFFF002B),
                  extendedPadding: const EdgeInsets.all(90),
                  // child: Text("Nueva partida"),

                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/screen/tutorial');
                  },
                  tooltip: 'Guia para el juego y la app',
                ),
              ],
            ),
            const Text("\n"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(),
                FloatingActionButton.extended(
                  label: const Text(
                    "Gestor  cuenta",
                    style: TextStyle(
                        fontSize: 25.20,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  backgroundColor: const Color(0xFFFF002B),
                  extendedPadding: const EdgeInsets.all(90),
                  // child: Text("Nueva partida"),

                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/screen/gestorDeSesion');
                  },
                  tooltip: 'Menu para gestionar las cuantas',
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
          ),
        ],
      ),
    );
  }

  void _jugar() {
    Navigator.pop(context);
    Navigator.pushNamed(context, '/screen/juego');
  }
}
