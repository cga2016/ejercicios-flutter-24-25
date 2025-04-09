import 'package:flutter/material.dart';
import 'package:flutter_proyecto_final/moodels/usuarios.dart';
import 'package:flutter_proyecto_final/routes/app_routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_proyecto_final/servicios/firebase.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    print("Firebase inicio ");

    // Ahora lanzamos la app SIN const para evitar errores con estado dinámico
    runApp(const MyApp(firebaseOk: true));
  } catch (e) {
    print("Error al abrir firebase $e");
    runApp(MyApp(firebaseOk: false, error: e.toString()));
  }
}

class MyApp extends StatefulWidget {
  final bool firebaseOk;
  final String? error;

  const MyApp({super.key, required this.firebaseOk, this.error});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final FirestoreService firestoreService = FirestoreService();

  @override
  void initState() {
    super.initState();

    if (widget.firebaseOk) {
      cargarUsuarios(); // Solo carga usuarios si Firebase está OK
    }
  }

  void cargarUsuarios() async {
    List usuarios = await firestoreService.getUsuarios();
    for (Usuario user in usuarios) {
      // ignore: avoid_print
      print(user.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Carlos paginas',
      home: widget.firebaseOk
          ? null
          : Scaffold(
              appBar: AppBar(title: const Text("Firebase Error")),
              body: Center(
                child: Text(
                  "error\n${widget.error}",
                  style: const TextStyle(color: Colors.red),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
      initialRoute: widget.firebaseOk ? AppRoutes.menuPrincipal : null,
      routes: AppRoutes.routes,
    );
  }
}
