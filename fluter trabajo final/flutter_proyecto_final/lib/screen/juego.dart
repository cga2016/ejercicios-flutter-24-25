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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(),
                FloatingActionButton.extended(
                  label: const Text(
                    "Jugar",
                    style: TextStyle(fontSize: 20),
                  ),
                  backgroundColor: const Color.fromRGBO(128, 255, 219, 1),
                  extendedPadding: const EdgeInsets.all(80),
                  // child: Text("Nueva partida"),
                  onPressed: _nuevaPartida,
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
                    "Puntuaciones",
                    style: TextStyle(fontSize: 25.20),
                  ),
                  backgroundColor: const Color.fromRGBO(128, 255, 219, 1),
                  extendedPadding: const EdgeInsets.all(90),
                  // child: Text("Nueva partida"),

                  onPressed: () {},
                  tooltip: 'Continua la partida que fue creada',
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
                    "Tutoriales",
                    style: TextStyle(fontSize: 25.20),
                  ),
                  backgroundColor: const Color.fromRGBO(128, 255, 219, 1),
                  extendedPadding: const EdgeInsets.all(90),
                  // child: Text("Nueva partida"),

                  onPressed: () {},
                  tooltip: 'Continua la partida que fue creada',
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

  void _nuevaPartida() {}
}
