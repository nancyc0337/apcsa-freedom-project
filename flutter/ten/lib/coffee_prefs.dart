import 'package:flutter/material.dart';

class CoffeePrefs extends StatelessWidget {
  const CoffeePrefs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Strength: '),
            Text('3'),
            Image.asset('assets/coffee_beans.png', 
              width: 45,
            ),
            const Expanded(child: SizedBox()),
            const Text('+'),
          ]
        ),
        Row(
          children: [
            Text('Sugars: '),
            Text('3'),
            Image.asset('assets/sugar.jpg', 
              width: 45,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
            const Expanded(child: SizedBox()),
            const Text('+'),
          ]
        ),
      ]
    );
  }
}