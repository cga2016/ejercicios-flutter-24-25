import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_proyecto_final/moodels/usuarios.dart'; // Asegurate que este sea el path correcto

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

// es asyn porque puede tardar en el resultado y future poque obtendra el resultado en el futuro
  Future<List<Usuario>> getUsuarios() async {
    try {
      final data = await _db.collection('user').get();
      // print(Usu);
      return data.docs.map((doc) => Usuario.fromMap(doc.data())).toList();
    } catch (e) {
      print("Error con los usuarios $e");
      return [];
    }
  }

  Future addUsuario(Usuario usuario) async {
    try {
      await _db.collection('user').add({
        'name': usuario.name,
        'correo': usuario.correo,
        'contraseña': usuario.contrasena,
      });
      print("Usuario añadido correctamente.");
    } catch (e) {
      print("Error al añadir el usuario: $e");
    }
  }
}
