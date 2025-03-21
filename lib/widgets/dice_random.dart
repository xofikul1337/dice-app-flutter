import 'dart:math';

import 'package:flutter/material.dart';

class DiceRandom extends StatefulWidget {
  const DiceRandom({super.key});

  @override
  State<DiceRandom> createState() => _DiceRandomState();
}

class _DiceRandomState extends State<DiceRandom> {
  int diceCount = 1;
  int diceCount2 = 1;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,

              children: [
                Text(
                  'Human',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      diceCount = Random().nextInt(6) + 1;
                      diceCount2 = Random().nextInt(6) + 1;
                    });

                


                  },
                  child: Image(
                    height: screenHeight * 0.3,
                    width: screenWidth * 0.3,
                    image: NetworkImage(
                      'https://xofikul1337.github.io/dice-app-flutter/dice/dice$diceCount.png',
                    ),
                  ),
                ),
                Text(
                  '$diceCount',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  'Computure',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Image(
                  height: screenHeight * 0.3,
                  width: screenWidth * 0.3,
                  image: NetworkImage(
                    'https://xofikul1337.github.io/dice-app-flutter/dice/dice$diceCount2.png',
                  ),
                ),
                Text(
                  '$diceCount2',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
