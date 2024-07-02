import 'package:flutter/material.dart';
import 'package:sdgp_fludert/screens/welcome_screen.dart';
import 'package:sdgp_fludert/screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FLUDERT',
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      home: const WelcomeScreen(),
    );
  }
}
