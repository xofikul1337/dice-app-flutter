import 'package:flutter/material.dart';
import 'package:ludo_app/activitys/ludo_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LudoHome() ,
    );
  }
}
