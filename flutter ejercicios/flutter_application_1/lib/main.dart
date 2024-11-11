import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/Act1.dart';
import 'package:flutter_application_1/screen/Act2.dart';
import 'package:flutter_application_1/screen/Act3.dart';
import 'package:flutter_application_1/screen/Act4.dart';
import 'package:flutter_application_1/screen/Act5.dart';
import 'package:flutter_application_1/screen/Act6.dart';
import 'package:flutter_application_1/screen/Act7.dart';
import 'package:flutter_application_1/screen/Act8.dart';
import 'package:flutter_application_1/screen/Act9.dart';
import 'package:flutter_application_1/screen/Aviso.dart';
import 'package:flutter_application_1/screen/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Carlos paginas',
      initialRoute: '/screen/Home',
      routes: {
        '/screen/Home': (context) => const Home(
              title: 'Home',
            ),
        '/screen/Act1': (context) => const Act1(
              title: 'Act1',
            ),
        '/screen/Act2': (context) => const Act2(
              title: 'Act2',
            ),
        '/screen/Act3': (context) => const Act3(
              title: 'Act3',
            ),
        '/screen/Act4': (context) => const Act4(
              title: 'Act4',
            ),
        '/screen/Act5': (context) => const Act5(
              title: 'Act5',
            ),
        '/screen/Act6': (context) => const Act6(
              title: 'Act6',
            ),
        '/screen/Act7': (context) => const Act7(),
        '/screen/Aviso': (context) => const Aviso(
              title: 'Aviso',
            ),
        '/screen/Act8': (context) => const Act8(),
        '/screen/Act9': (context) => const Act9(),
      },
    );
  }
}
