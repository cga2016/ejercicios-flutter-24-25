// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/drawer/DrawerNavegable.dart';
import 'package:flutter_application_1/tools/Tab2.dart';
import 'package:flutter_application_1/tools/galeriaDEImagenes.dart';

import '../tools/CreadorDeCabecera.dart';

/*Clase que se encarga de la construcción de la pantalla */
class Act8 extends StatefulWidget {
  const Act8({super.key});

  @override

  // ignore: library_private_types_in_public_api
  _Act8State createState() => _Act8State();
}

class _Act8State extends State<Act8> {
  @override
  Widget build(BuildContext context) {
    // barra superior
    return Scaffold(
      appBar: AppBar(
        title: Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          /* barra superior */
          child: AppBar(
            backgroundColor: Colors.white,
            // Nombre a la izquierda
            leading: Container(
              width: 5.0,
              padding: const EdgeInsets.symmetric(
                  horizontal: 0.0), // Ajusta el padding
              child: const Text(
                "alvarez˅",
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            // icono de la derecha que no hace nada
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            ],
          ),
        ),
      ),
      drawer: const DrawerNavegable(),
      /* Uso el DefaultTabController porque permite cambiar contenidos dentro de el body
      Permitiendome hacer lo que hay en la parte inferior, que cambia entre tes contenidos,
      usandose solo el primero, el que se mostraba en la base de la app */
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, _) {
            return [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    /*Se encarga de crear la cabecera de la app, 
                    todo lo que esta entre la AppBar y la parte inferior con la
                    selección de la galeria y las otras dos que son de decoración */
                    profileHeaderWidget(context),
                  ],
                ),
              ),
            ];
          },
          // cambios de pantalla inferiores
          body: const Column(
            children: <Widget>[
              Material(
                color: Color.fromARGB(255, 132, 128, 128),
                /*TabBar es una barra a la cual se le implementan tabulaciones, 
                otras paginas a las que cambiar cuando se selecciona su icono */
                child: TabBar(
                  labelColor: Colors.black,
                  indicatorWeight: 1,
                  indicatorColor: Colors.black,
                  tabs: [
                    // la lista de los iconos
                    Tab(
                      icon: Icon(
                        Icons.grid_on_sharp,
                        color: Colors.black,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.person_pin_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    // las diferentes tabulaciones de la parte inferior
                    Gallery(),
                    Tab2(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      /**
       * Barra inferior con iconos
       */
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: ""),
          NavigationDestination(icon: Icon(Icons.search), label: ""),
          NavigationDestination(icon: Icon(Icons.add_box_outlined), label: ""),
          NavigationDestination(icon: Icon(Icons.favorite), label: ""),
          NavigationDestination(icon: Icon(Icons.circle), label: ""),
        ],
      ),
    );
  }
}
