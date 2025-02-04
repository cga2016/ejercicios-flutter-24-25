// ignore_for_file: file_names

import 'package:flutter/material.dart';

// Clase encargada de generar el drawer navegable
class DrawerNavegable extends StatelessWidget {
  const DrawerNavegable({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          buildHeader(context),
          buildMenuItems(context),
        ],
      )),
    );
  }

  // construye los elementos de dentro del drawer
  Widget buildMenuItems(BuildContext context) => Column(children: [
        ListTile(
          leading: const Icon(Icons.check_box_outlined),
          title: const Text("Home"),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/screen/Home');
          },
        ),
        const Divider(
          // separación
          color: Color.fromARGB(255, 52, 255, 2),
        ),
        ListTile(
          leading: const Icon(Icons.check_box_outlined),
          title: const Text("Ejercicio 1"),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/screen/Act1');
          },
        ),
        const Divider(
          // separación
          color: Color.fromARGB(255, 52, 255, 2),
        ),
        ListTile(
          leading: const Icon(Icons.check_box_outlined),
          title: const Text("Ejercicio 2"),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/screen/Act2');
          },
        ),
        const Divider(
          color: Color.fromARGB(255, 52, 255, 2),
        ),
        ListTile(
          leading: const Icon(Icons.check_box_outlined),
          title: const Text("Ejercicio 3"),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/screen/Act3');
          },
        ),
        const Divider(
          color: Color.fromARGB(255, 52, 255, 2),
        ),
        ListTile(
          leading: const Icon(Icons.check_box_outlined),
          title: const Text("Ejercicio 4"),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/screen/Act4');
          },
        ),
        const Divider(
          color: Color.fromARGB(255, 52, 255, 2),
        ),
        ListTile(
          leading: const Icon(Icons.check_box_outlined),
          title: const Text("Ejercicio 5"),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/screen/Act5');
          },
        ),
        const Divider(
          color: Color.fromARGB(255, 52, 255, 2),
        ),
        ListTile(
          leading: const Icon(Icons.check_box_outlined),
          title: const Text("Ejercicio 6"),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/screen/Act6');
          },
        ),
        const Divider(
          color: Color.fromARGB(255, 52, 255, 2),
        ),
        ListTile(
          leading: const Icon(Icons.check_box_outlined),
          title: const Text("Ejercicio 7"),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/screen/Act7');
          },
        ),
        const Divider(
          color: Color.fromARGB(255, 52, 255, 2),
        ),
        ListTile(
          leading: const Icon(Icons.check_box_outlined),
          title: const Text("Aviso"),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/screen/Aviso');
          },
        ),
        const Divider(
          color: Color.fromARGB(255, 52, 255, 2),
        ),
        ListTile(
          leading: const Icon(Icons.check_box_outlined),
          title: const Text("Ejercicio 8"),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/screen/Act8');
          },
        ),
        const Divider(
          color: Color.fromARGB(255, 52, 255, 2),
        ),
        ListTile(
          leading: const Icon(Icons.check_box_outlined),
          title: const Text("Ejercicio 9"),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/screen/Act9');
          },
        ),
        const Divider(
          color: Color.fromARGB(255, 52, 255, 2),
        ),
        ListTile(
          leading: const Icon(Icons.check_box_outlined),
          title: const Text("Cambia Tema"),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/screen/tema_oscuro');
          },
        ),
        const Divider(
          color: Color.fromARGB(255, 52, 255, 2),
        ),
        ListTile(
          leading: const Icon(Icons.check_box_outlined),
          title: const Text("Ejercicio 10"),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/screen/Act10');
          },
        ),
        const Divider(
          color: Color.fromARGB(255, 52, 255, 2),
        ),
        ListTile(
          leading: const Icon(Icons.check_box_outlined),
          title: const Text("Ejercicio 11"),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/screen/Act11');
          },
        ),
        const Divider(
          color: Color.fromARGB(255, 52, 255, 2),
        ),
        ListTile(
          leading: const Icon(Icons.check_box_outlined),
          title: const Text("Ejercicio 12"),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/screen/Act12');
          },
        ),
        const Divider(
          color: Color.fromARGB(255, 52, 255, 2),
        )
      ]);

  // construye el resto del drawer
  Widget buildHeader(BuildContext context) => Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
      );
}
