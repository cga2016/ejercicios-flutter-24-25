import 'package:flutter/material.dart';

import '../drawer/darawernavegable.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        drawer: const DrawerNavegable(),
        body: Container(
          height: 50,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 0, 0),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(100),
              bottomLeft: Radius.circular(100),
            ),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(170, 28, 2, 41),
                offset: Offset(20, 50),
                blurRadius: 5,
              ),
            ],
          ),
          alignment: Alignment.center,
          child: const Text(
            'Usa el drawer para acceder al resto de instancias',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ));
  }
}
