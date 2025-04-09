// ignore_for_file: file_names

import 'package:flutter/material.dart';

class IniciarSesion extends StatefulWidget {
  const IniciarSesion({super.key, required this.title});

  final String title;

  @override
  State<IniciarSesion> createState() => _IniciarSesionState();
}

class _IniciarSesionState extends State<IniciarSesion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF407BA7),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/titulos/inicioSesion.png',
              width: 250,
              height: 100,
            ),
            const SizedBox(height: 30),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Correo',
                  labelStyle: const TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(58, 255, 255, 255),
                ),
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  labelStyle: const TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(60, 255, 255, 255),
                ),
                obscureText: true,
                style: const TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton.extended(
                  label: const Text(
                    "Logg in",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  backgroundColor: const Color(0xFFFF002B),
                  onPressed: () {
                    _cambiar('/screen/menuPrincipal');
                  },
                  tooltip: 'Volver al menú principal',
                ),
                const SizedBox(height: 30),
                const SizedBox(width: 30),
                FloatingActionButton.extended(
                  label: const Text(
                    "Regresar",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  backgroundColor: const Color(0xFFFF002B),
                  onPressed: () {
                    _cambiar('/screen/menuPrincipal');
                  },
                  tooltip: 'Volver al menú principal',
                ),
              ],
            )
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
