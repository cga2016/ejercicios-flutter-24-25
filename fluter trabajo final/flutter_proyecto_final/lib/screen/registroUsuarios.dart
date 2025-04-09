import 'package:flutter/material.dart';
import 'package:flutter_proyecto_final/moodels/usuarios.dart';
import 'package:flutter_proyecto_final/servicios/firebase.dart';

class RegistroUsuario extends StatefulWidget {
  const RegistroUsuario({super.key, required this.title});

  final String title;

  @override
  State<RegistroUsuario> createState() => _RegistroUsuarioState();
}

class _RegistroUsuarioState extends State<RegistroUsuario> {
  final TextEditingController _nickController = TextEditingController();
  final TextEditingController _correoController = TextEditingController();
  final TextEditingController _contrasenaController = TextEditingController();

  final FirestoreService firestoreService = FirestoreService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF407BA7),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/titulos/Registro.png',
              width: 250,
              height: 100,
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                controller: _nickController,
                decoration: InputDecoration(
                  labelText: 'Nick',
                  labelStyle: const TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(60, 255, 255, 255),
                ),
                style: const TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                controller: _correoController,
                decoration: InputDecoration(
                  labelText: 'Correo',
                  labelStyle: const TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(60, 255, 255, 255),
                ),
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                controller: _contrasenaController,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  labelStyle: const TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white24,
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
                    "Registrar",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  backgroundColor: const Color(0xFFFF002B),
                  onPressed: _registrarUsuario,
                  tooltip: 'Registrar usuario',
                ),
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

  void _registrarUsuario() async {
    final nick = _nickController.text.trim();
    final correo = _correoController.text.trim();
    final contrasena = _contrasenaController.text.trim();

    if (nick.isEmpty || correo.isEmpty || contrasena.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Por favor, completa todos los campos.')),
      );
      return;
    }

    final nuevoUsuario = Usuario(
      name: nick,
      correo: correo,
      contrasena: contrasena,
    );

    await firestoreService.addUsuario(nuevoUsuario);

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Usuario registrado correctamente.')),
    );

    _cambiar('/screen/menuPrincipal');
  }
}
