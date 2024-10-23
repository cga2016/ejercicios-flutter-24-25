import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/screen1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Flutter Carlos pagina 1',
        home: Act1(
          title: 'actividad 1',
        ));
  }
}
