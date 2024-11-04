import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/Act1.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Carlos pagina 1',
        home: Act1(
          title: 'actividad 1',
        ));
  }
}
