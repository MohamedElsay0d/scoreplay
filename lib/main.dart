import 'package:flutter/material.dart';

import 'screens/homepage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title : "ScorePlay" ,
      home: homepage() ,
    );
  }
}
