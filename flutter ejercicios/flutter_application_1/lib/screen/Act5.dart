import 'package:flutter/material.dart';

import '../drawer/DrawerNavegable.dart';

class Act5 extends StatefulWidget {
  const Act5({super.key, required this.title});

  final String title;

  @override
  State<Act5> createState() => _Act5State();
}

class _Act5State extends State<Act5> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Retos flutter'),
        ),
        drawer: const DrawerNavegable(),
        body: Center(
            child: Container(
          height: 130,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFF57B3FC),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50),
              bottomLeft: Radius.circular(50),
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0xAA6EB1E6),
                offset: Offset(9, 9),
                blurRadius: 6,
              ),
            ],
          ),
          alignment: Alignment.center,
          child: const Text(
            'I am a header',
            style: TextStyle(
              fontSize: 38,
              color: Colors.white,
            ),
          ),
        )),
      ),
    );
  }

  Widget _buildImageWithText(String imageName, String text) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.asset(
            imageName, // Ruta de la imagen en tu proyecto
            width: 100,
            height: 100,
          ),
          const SizedBox(height: 8.0),
          Text(
            text,
            style: const TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
