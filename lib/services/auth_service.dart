import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthService {
  final String _baseUrl = 'http://127.0.0.1:5000'; // Usa 10.0.2.2 si es Android emulator

  // Iniciar sesión
  Future<Map<String, dynamic>> loginUser(String email, String password) async {
    final url = Uri.parse('$_baseUrl/login');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'email': email,
        'contrasena': password,  // Cambiado a "contrasena"
      }),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Error al iniciar sesión: ${response.body}');
    }
  }

  // Registrar usuario
  Future<Map<String, dynamic>> createUser(
      String nombre, String email, String contrasena, String tipoUsuario) async {
    final url = Uri.parse('$_baseUrl/usuarios');

    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'nombre': nombre,
        'email': email,
        'contrasena': contrasena,  // Cambiado a "contrasena"
        'tipo_usuario': tipoUsuario,
      }),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Error al crear usuario: ${response.body}');
    }
  }
}
