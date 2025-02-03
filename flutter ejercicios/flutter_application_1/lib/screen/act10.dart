// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/baraja.dart';
import 'package:flutter_application_1/models/Carta.dart';
import 'package:google_fonts/google_fonts.dart';
import '../drawer/darawernavegable.dart';

class Act10 extends StatefulWidget {
  const Act10({super.key, required this.title});

  final String title;

  @override
  State<Act10> createState() => _Act10State();
}

class _Act10State extends State<Act10> {
  double puntosMaquinaPorRonda = 0;
  double puntosJugadorPorRonda = 0;
  int victoriasMaquina = 0;
  int victoriasJugador = 0;
  int ronda = 0;
  String cartaObtenidaMaquina = "";
  String cartaObtenidaJugador = "";
  Baraja baraja = Baraja();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ejercicios Flutter act 10 (7 y media)"),
      ),
      drawer: const DrawerNavegable(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _text("ronda"),
                _text(""),
                _text(""),
                _text("$ronda"),
                _text("/5"),
              ],
            ),
            _text(""),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _text("Maquina"),
                _text(""),
                _text(""),
                _text("$puntosMaquinaPorRonda"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _text("carta obtenida:"),
                _text(""),
                _text(""),
                _text(cartaObtenidaMaquina),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _text("rondas ganadas"),
                _text(""),
                _text(""),
                _text("$victoriasMaquina"),
              ],
            ),
            _text(""),
            _text(""),
            _text(""),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _text("Jugador"),
                _text(""),
                _text(""),
                _text("$puntosJugadorPorRonda"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _text("carta obtenida"),
                _text(""),
                _text(""),
                _text(cartaObtenidaJugador),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _text("rondas ganadas"),
                _text(""),
                _text(""),
                _text("$victoriasJugador"),
              ],
            ),
            _text(""),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 0, 245, 65)),
                  ),
                  onPressed: () {
                    if (ronda < 5) {
                      setState(() {
                        Carta carta = pedirCarta();
                        cartaObtenidaJugador =
                            "${carta.numero} de ${carta.palo}";
                        puntosJugadorPorRonda += carta.valor;

                        // parte de la maquina
                        Carta carta2 = pedirCarta();
                        cartaObtenidaMaquina =
                            "${carta2.numero} de ${carta2.palo}";
                        puntosMaquinaPorRonda += carta2.valor;

                        if (puntosJugadorPorRonda > 7.5 &&
                            puntosMaquinaPorRonda > 7.5) {
                          mostrarFinalRonda(context, "Nadie, empate");
                          reiniciarRonda();
                        } else if (puntosMaquinaPorRonda > 7.5) {
                          mostrarFinalRonda(context, "Jugador");
                          reiniciarRonda();
                          ronda++;
                          victoriasJugador++;
                          verificarFinPartida();
                        } else if (puntosJugadorPorRonda > 7.5) {
                          mostrarFinalRonda(context, "Maquina");
                          reiniciarRonda();
                          victoriasMaquina++;
                          ronda++;
                          verificarFinPartida();
                        }
                      });
                    } else {}
                  },
                  child: const Text('Pedir'),
                ),
                TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 0, 245, 65)),
                  ),
                  onPressed: () {
                    if (ronda < 5) {
                      setState(() {
                        if (puntosMaquinaPorRonda < puntosJugadorPorRonda) {
                          mostrarFinalRonda(context, "Jugador");
                          reiniciarRonda();
                          ronda++;
                          victoriasJugador++;
                          verificarFinPartida();
                        } else if (puntosJugadorPorRonda >=
                            puntosMaquinaPorRonda) {
                          Carta carta2 = pedirCarta();
                          cartaObtenidaMaquina =
                              "${carta2.numero} de ${carta2.palo}";
                          puntosMaquinaPorRonda += carta2.valor as int;
                          if (puntosMaquinaPorRonda > puntosJugadorPorRonda &&
                              puntosMaquinaPorRonda < 7.5) {
                            mostrarFinalRonda(context, "Maquina");
                            reiniciarRonda();
                            victoriasMaquina++;
                            ronda++;
                            verificarFinPartida();
                          } else {
                            mostrarFinalRonda(context, "Jugador");
                            reiniciarRonda();
                            ronda++;
                            victoriasJugador++;
                            verificarFinPartida();
                          }
                        } else {
                          mostrarFinalRonda(context, "Maquina");
                          reiniciarRonda();
                          victoriasMaquina++;
                          ronda++;
                          verificarFinPartida();
                        }
                      });
                    } else {}
                  },
                  child: const Text('Plantarse'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _text(String text) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 8.0),
          Text(
            text,
            style: GoogleFonts.getFont('Lato'),
          ),
        ],
      ),
    );
  }

  Carta pedirCarta() {
    Carta carta = baraja.obtenerCartaAleatoria();
    return carta;
  }

/*
 * metodo al terminar una ronda
 */
  void reiniciarRonda() {
    setState(() {
      puntosMaquinaPorRonda = 0;
      puntosJugadorPorRonda = 0;
      cartaObtenidaJugador = "";
      cartaObtenidaMaquina = "";
      baraja.resetearBaraja();
    });
  }

  void terminarPartida(String text) {
    mostrarFinal(context, text);
  }

// a partir de aqui mensajes
  //mensaje alerta
  void mostrarFinal(BuildContext context, String text) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Se acabo'),
          content: SingleChildScrollView(
            child: Text(
              " Ganador $text",
              style: const TextStyle(fontSize: 60),
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Cerrar el AlertDialog
                Navigator.pop(context);
                Navigator.pushNamed(context, '/screen/Act8');
              },
              child: const Text('Cerrar'),
            ),
          ],
        );
      },
    );
  }

  void verificarFinPartida() {
    if (ronda >= 5) {
      if (victoriasJugador > victoriasMaquina) {
        terminarPartida("Jugador");
      } else if (victoriasMaquina > victoriasJugador) {
        terminarPartida("Maquina");
      }
    }
  }

//mensaje simple
  void mostrarFinalRonda(BuildContext context, String text) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text("Ronda ganada por $text"),
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
