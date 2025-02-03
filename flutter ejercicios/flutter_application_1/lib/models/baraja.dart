import 'dart:math';

import 'package:flutter_application_1/models/Carta.dart';

class Baraja {
  List<Carta> cartas = [];
  final List<Carta> cartasOriginales = [];
  final Random random = Random();

  Baraja() {
    _inicializarBaraja();
  }

  void _inicializarBaraja() {
    List<String> numeros = ['1', '2', '3', '4', '5', '6', '7', 'J', 'Q', 'K'];
    List<String> palos = ['Bastos', 'Monedas', 'Copas', 'Espadas'];

    cartas.clear();
    for (var palo in palos) {
      for (var numero in numeros) {
        double valor =
            (['J', 'Q', 'K'].contains(numero)) ? 0.5 : double.parse(numero);
        cartas.add(Carta(numero, valor, palo));
      }
    }
    cartasOriginales.clear();
    cartasOriginales.addAll(cartas);
  }

  Carta obtenerCartaAleatoria() {
    int index = random.nextInt(cartas.length);
    return cartas.removeAt(index);
  }

  void resetearBaraja() {
    cartas.clear();
    cartas.addAll(cartasOriginales);
  }

  void imprimirBaraja() {
    for (var carta in cartas) {
      print(carta);
    }
  }

  @override
  String toString() {
    return cartas.map((carta) => carta.toString()).join('\n');
  }
}
