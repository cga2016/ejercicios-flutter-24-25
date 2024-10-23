import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/Act2.dart';
import 'package:flutter_application_1/screen/screen1.dart';

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

            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const Act2()));
          },
        ),
        const Divider(
          color: Color.fromARGB(255, 52, 255, 2),
        ),
        ListTile(
          leading: const Icon(Icons.check_box_outlined),
          title: const Text("Ejercicio 3"),
          onTap: () {
            /*  Navigator.pop(context);

            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Ejercicio11()));*/
          },
        ),
        const Divider(
          // separador
          color: Color.fromARGB(255, 52, 255, 2),
        ),
        ListTile(
          leading: const Icon(Icons.check_box_outlined),
          title: const Text("Ejercicio 4"),
          onTap: () {
            /* // para que se cierre al clicar en la opción
            Navigator.pop(context);

            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Ejercicio12()));*/
          },
        ),
      ]);

  // construye el resto del drawer
  Widget buildHeader(BuildContext context) => Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
      );
}
