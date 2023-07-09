import 'package:flutter/material.dart';
import 'package:test1/calculator_screen.dart';
import 'package:test1/home_screen.dart';
import 'package:test1/login_screen.dart';
import 'package:test1/messenger_screen.dart';
import 'package:test1/test_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: CalculatorScreen1(),
    );
  }
}
