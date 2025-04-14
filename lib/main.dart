import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador Modular',
      theme: AppTheme.themeData,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
