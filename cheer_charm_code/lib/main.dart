import 'package:cheer_charm_code/home_screen.dart';
import 'package:flutter/material.dart';

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
      home: const HomeScreen(),
    );
  }
}