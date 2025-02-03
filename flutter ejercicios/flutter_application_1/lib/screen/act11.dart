import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_application_1/drawer/darawernavegable.dart';

class Act11 extends StatefulWidget {
  const Act11({super.key});

  @override
  State<Act11> createState() => _Act11State();
}

class _Act11State extends State<Act11> {
  final TextEditingController _controller = TextEditingController();
  final int _targetNumber = Random().nextInt(100) + 1;
  String _message = "Adivina un número entre 1 y 100";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Adivina un número entre el 1 y el 100 "),
      ),
      drawer: const DrawerNavegable(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _message,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Introduce un número",
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _comprobar,
              child: const Text("Comprobar"),
            ),
          ],
        ),
      ),
    );
  }

  void _comprobar() {
    final int? guess = int.tryParse(_controller.text);
    if (guess == null) {
      setState(() {
        _message = "Por favor, introduce un número válido.";
      });
      return;
    }
    if (guess < _targetNumber) {
      setState(() {
        _message = "El número es mayor.";
      });
    } else if (guess > _targetNumber) {
      setState(() {
        _message = "El número es menor.";
      });
    } else {
      setState(() {
        mostrarFinal(context);
      });
    }
  }

  void mostrarFinal(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text("¡¡Acertaste!!"),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }
}
