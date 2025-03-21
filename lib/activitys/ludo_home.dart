import 'package:flutter/material.dart';
import 'package:ludo_app/widgets/dice_random.dart';

class LudoHome extends StatelessWidget {
  const LudoHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  backgroundColor: Colors.blue.shade400,
  title: Text('Ludo App',style: TextStyle(color: Colors.white),),),
body: Column(
  children: [
    DiceRandom()
  ],
),

    );
  }
}
