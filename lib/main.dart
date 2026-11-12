
import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const WisataPantaiApp());
}

class WisataPantaiApp extends StatelessWidget {
  const WisataPantaiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wisata Pantai',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Roboto',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF087EAB),
        ),
      ),
      home: const HomePage(),
    );
  }
}
