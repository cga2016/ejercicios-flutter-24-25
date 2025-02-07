import 'package:shared_preferences/shared_preferences.dart';

class ListaPuntuaciones {
  static List<String> _puntuaciones = [];

  // Método para agregar una nueva entrada a la lista
  static void agregarPuntuacion(String nombre, int puntuacion) {
    _puntuaciones.add("$nombre : $puntuacion");
  }

  // Método para obtener la lista completa de puntuaciones
  static List<String> obtenerPuntuaciones() {
    return _puntuaciones;
  }

  // Método para obtener una puntuación específica por índice
  static String? obtenerPuntuacion(int index) {
    if (index >= 0 && index < _puntuaciones.length) {
      return _puntuaciones[index];
    }
    return null;
  }

  // Método para guardar la lista de puntuaciones en SharedPreferences
  static Future<void> guardarPuntuaciones() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('puntuaciones', _puntuaciones);
  }

  // Método para recuperar la lista de puntuaciones desde SharedPreferences
  static Future<void> cargarPuntuaciones() async {
    final prefs = await SharedPreferences.getInstance();
    _puntuaciones = prefs.getStringList('puntuaciones') ?? [];
  }
}
