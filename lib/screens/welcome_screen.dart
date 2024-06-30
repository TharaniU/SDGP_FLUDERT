import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset('assests/images/background.jpeg'),
          FittedBox(
            clipBehavior: Clip.hardEdge
          ),
          body: SafeArea(
          child: Text('Welcome to Quickly'.toTitleCase)
          ),
        ],
      ),
    );
  }
}