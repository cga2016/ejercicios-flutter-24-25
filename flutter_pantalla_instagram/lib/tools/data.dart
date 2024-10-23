// ignore: camel_case_types
import 'package:flutter/material.dart';

// clase que solo tiene texto, url y titulos
class ImagenIcono {
  String url; // Cambiado de String a IconData
  String title;

  ImagenIcono({required this.url, required this.title});
}

// lista de imagenes con los textos
List<ImagenIcono> highlightItems = [
  ImagenIcono(url: "12.jpg", title: "Nuevo"),
  ImagenIcono(url: "3.jpg", title: "Pilotando"),
  ImagenIcono(url: "6.jpg", title: "Praga y bu..."),
  ImagenIcono(url: "7.jpg", title: "Arquitectura"),
  ImagenIcono(url: "2.jpg", title: "Retratos"),
];

// sub clase pero con iconos
class Icono {
  IconData iconData;
  String title;

  Icono({required this.iconData, required this.title});
}
