import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  galeria createState() => galeria();
}

// ignore: camel_case_types
class galeria extends State<Gallery> {
  List<String> imageUrls = [
    // lista de imagenes
    'assets/1.png',
    'assets/2.jpg',
    'assets/3.jpg',
    'assets/4.jpg',
    'assets/5.jpg',
    'assets/6.jpg',
    'assets/7.jpg',
    'assets/8.jpg',
    'assets/9.jpg',
  ];
// se encarga de hacer la lista de las imagenes inferior
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 1.0,
        children: imageUrls.map(_ConstructorDeImagenes).toList(),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget _ConstructorDeImagenes(String url) => Builder(
        builder: (context) => GestureDetector(
          child: Image.asset(url, fit: BoxFit.cover),
        ),
      );
}
