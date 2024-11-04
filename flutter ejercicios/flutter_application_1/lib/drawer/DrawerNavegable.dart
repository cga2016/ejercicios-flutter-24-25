import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/Act1.dart';
import 'package:flutter_application_1/screen/Act2.dart';
import 'package:flutter_application_1/screen/Act3.dart';
import 'package:flutter_application_1/screen/Act4.dart';
import 'package:flutter_application_1/screen/Act5.dart';
import 'package:flutter_application_1/screen/Act7.dart';
import 'package:flutter_application_1/screen/Act6.dart';

// Clase encargada de generar el drawer navegable
class DrawerNavegable extends StatelessWidget {
  const DrawerNavegable({Key? key}) : super(key: key);

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
          title: const Text("Ejercicio 1"),
          onTap: () {
            Navigator.pop(context);

            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Act1(title: '')));
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

            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Act2(
                      title: '',
                    )));
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

            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Act3(
                      title: '',
                    )));
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

            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Act4(
                      title: '',
                    )));
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

            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Act5(
                      title: '',
                    )));
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

            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Act6(
                      title: '',
                    )));
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

            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const Act7()));
          },
        ),
        const Divider(
          color: Color.fromARGB(255, 52, 255, 2),
        ),
      ]);

  // construye el resto del drawer
  Widget buildHeader(BuildContext context) => Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
      );
}
