import 'package:flutter/material.dart';

class Juego extends StatefulWidget {
  const Juego({super.key});

  @override
  State<Juego> createState() => _JuegoState();
}

class _JuegoState extends State<Juego> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF407BA7),
      appBar: AppBar(
        title: const Text('Adivina al Pokémon'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Center(
              child: Text(
                "Vidas: 1/5",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Buscador',
                labelStyle: const TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: const Color.fromARGB(58, 255, 255, 255),
              ),
              keyboardType: TextInputType.text,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("        ",
                  style: TextStyle(fontSize: 18, color: Colors.white)),
              Text(" T1", style: TextStyle(fontSize: 18, color: Colors.white)),
              Text(" T2", style: TextStyle(fontSize: 18, color: Colors.white)),
              Text(" EV", style: TextStyle(fontSize: 18, color: Colors.white)),
              Text(" GEN", style: TextStyle(fontSize: 18, color: Colors.white)),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _crearCubo(Colors.red),
              _crearCubo(Colors.red),
              _crearCubo(Colors.yellow),
              _crearCubo(Colors.yellow),
              _crearCubo(Colors.green),
            ],
          ),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Puntuación:',
                  style: TextStyle(fontSize: 24, color: Colors.white)),
              Text('Tiempo:',
                  style: TextStyle(fontSize: 24, color: Colors.white)),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 150,
                height: 40,
                child: FloatingActionButton.extended(
                  label: const Text("Menu",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 255, 255, 255))),
                  backgroundColor: const Color(0xFFFF002B),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/screen/menuPrincipal');
                  },
                  tooltip: 'Ir al menú principal',
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(
                width: 150,
                height: 40,
                child: FloatingActionButton.extended(
                  label: const Text("Finalizar",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 255, 255, 255))),
                  backgroundColor: const Color(0xFFFF002B),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/screen/finalizarPartida');
                  },
                  tooltip: 'Finalizar partida',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _crearCubo(Color color) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.white, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
