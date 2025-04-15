import 'package:flutter/material.dart';
import 'screens/auth/login_screen.dart';
import 'screens/auth/create_account_screen.dart';
import 'screens/home_screen.dart'; // Importa la pantalla principal

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MusicApp',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/login', // Define la ruta inicial
      routes: {
        '/login': (context) => LoginScreen(),
        '/create_account': (context) => CreateAccountScreen(),
        '/home': (context) => HomeScreen(), // Ruta a la pantalla principal
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
