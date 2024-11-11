// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'data.dart';

// Se encarga de crear la parte superior, lo que esta entre la barra superior y la parte inferior
Widget profileHeaderWidget(BuildContext context) {
  return Container(
    width: double.infinity,
    decoration: const BoxDecoration(color: Colors.white),
    child: Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                // foto de perfil
                radius: 40,
                foregroundImage: AssetImage('assets/1.png'),
                backgroundImage: AssetImage('assets/1.jpg'),
              ),

              // datos de seguidores y publicaciones etc
              Row(
                // esta parte forma los numeros de la parte superior derecha
                children: [
                  Column(
                    children: [
                      Text(
                        "1,026",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Publicacio...",
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 0.4,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      Text(
                        "859",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Seguidores",
                        style: TextStyle(
                          letterSpacing: 0.4,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      Text(
                        "211",
                        style: TextStyle(
                          letterSpacing: 0.4,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Seguidos",
                        style: TextStyle(
                          letterSpacing: 0.4,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              )
            ],
          ),
          // Texto de la parte superior izquierda bajo la foto de perfil
          const SizedBox(
            height: 8,
          ),
          const Text(
            "Fernando Álvarez del Vayo",
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w600,
              fontSize: 16,
              letterSpacing: 0.4,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          const Text(
            "\"Nunca sabes lo que te depara el futuro \"",
            style: TextStyle(
              letterSpacing: 0.4,
            ),
          ),
          const Text(
            "faqsandroid.com/",
            style: TextStyle(color: Color.fromARGB(255, 13, 85, 144)),
          ),
          const SizedBox(
            height: 20,
          ),
          actions(context),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            // la tira de imagenes circulares

            /**
             * 
             */
            height: 100,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: highlightItems.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                            radius: 38,
                            backgroundColor:
                                const Color.fromARGB(255, 255, 255, 255),
                            child: Container(
                              width: 100.0, // Ajusta el ancho según necesites
                              height: 100.0, // Ajusta la altura según necesites
                              decoration: BoxDecoration(
                                shape: BoxShape
                                    .circle, // Hace que el contenedor sea circular
                                image: DecorationImage(
                                  image: AssetImage(highlightItems[index].url),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Text(
                            highlightItems[index].title,
                            style: const TextStyle(fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 30,
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    ),
  );
}

// Este widget se encarga de generar el boton
Widget actions(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              side: const BorderSide(
            color: Color.fromARGB(255, 108, 108, 108),
          )),
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.only(left: 0),
            child: Text("Editar perfil",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                )),
          ),
        ),
      ),
    ],
  );
}
