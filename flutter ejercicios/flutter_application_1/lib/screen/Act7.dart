// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../drawer/DrawerNavegable.dart';

class Act7 extends StatelessWidget {
  const Act7({super.key});
  @override
  Widget build(BuildContext context) {
    return const MyHomePage(
        title: 'Actividad 2 bottones descendentes y ascendentes');
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      drawer: const DrawerNavegable(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 4, 119, 213)),
                  ),
                  onPressed: () {
                    _menguar();
                  },
                  child: const Text('reducir'),
                ),
                TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 219, 247, 7)),
                  ),
                  onPressed: () {
                    _resetear();
                  },
                  child: const Text('formatear'),
                ),
                TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 0, 245, 65)),
                  ),
                  onPressed: () {
                    _incrementar();
                  },
                  child: const Text('aumentar'),
                )
              ],
            ),
            Text(
              '$_contador',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }

  void _incrementar() {
    setState(() {
      _contador++;
    });
  }

  void _menguar() {
    setState(() {
      if (_contador > 0) {
        _contador--;
      }
    });
  }

  void _resetear() {
    setState(() {
      _contador = 0;
    });
  }
}
