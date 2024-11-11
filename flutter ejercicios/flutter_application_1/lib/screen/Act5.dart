// ignore_for_file: file_names

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Retos flutter'),
      ),
      drawer: const DrawerNavegable(),
      body: Center(
          child: Container(
        height: 50,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 158, 12, 255),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(100),
            bottomLeft: Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(170, 28, 2, 41),
              offset: Offset(20, 50),
              blurRadius: 5,
            ),
          ],
        ),
        alignment: Alignment.center,
        child: const Text(
          'cabecera',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      )),
    );
  }
}
