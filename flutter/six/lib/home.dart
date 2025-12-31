import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Coffee Id'),
        backgroundColor: Colors.brown[200],
        centerTitle: true,
      ),
      body: const Text('hello'),
    );
  }
}