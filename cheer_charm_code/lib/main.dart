import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(const CheerCharmApp());
}

class CheerCharmApp extends StatelessWidget {
  const CheerCharmApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '☺️ CheerCharm ☺️',
      theme: ThemeData(
      ),
      home: const HomeScreen(),
    );
  }
}