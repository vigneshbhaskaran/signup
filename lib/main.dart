import 'package:flutter/material.dart';
import 'package:signup/signUpPage.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
home: Scaffold(
  backgroundColor: Color.fromARGB(255, 190, 219, 221),
  body: Menu(),
),

    );
  }
}
