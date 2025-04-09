import 'package:flutter/material.dart';

class GestorDeSesion extends StatefulWidget {
  const GestorDeSesion({super.key, required this.title});

  final String title;

  @override
  State<GestorDeSesion> createState() => _GestorDeSesionState();
}

class _GestorDeSesionState extends State<GestorDeSesion> {
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
              'assets/titulos/GestorSesion.png',
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
                    "       Registro        ",
                    style: TextStyle(
                        fontSize: 25.20,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  backgroundColor: const Color(0xFFFF002B),
                  extendedPadding: const EdgeInsets.all(80),
                  // child: Text("Nueva partida"),
                  onPressed: () {
                    _cambiar('/screen/registroUsuarios');
                  },
                  tooltip: 'Crea un usuario ',
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
                    "       Logg in      ",
                    style: TextStyle(
                        fontSize: 25.20,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  backgroundColor: const Color(0xFFFF002B),
                  extendedPadding: const EdgeInsets.all(90),
                  // child: Text("Nueva partida"),

                  onPressed: () {
                    _cambiar('/screen/iniciarSesion');
                  },
                  tooltip: 'ir a iniciar sesion',
                ),
              ],
            ),
            const Text("\n"),
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

  void _cambiar(String ruta) {
    Navigator.pop(context);
    Navigator.pushNamed(context, ruta);
  }
}
