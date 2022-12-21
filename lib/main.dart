import 'package:flutter/material.dart';
import 'package:hello_flutter/pages/game/game_page.dart';

void main() { // entry point
  runApp(const MyApp());
}

// widget : วิตเจ็ต

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const GamePage(),
    );
  }
}