import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _fromSignupKey = GlobalKey<FormState>();
  bool agreePersonalData = true;
  @override
  Widget build(BuildContext context) {
    return CustomScffold(
      child: Column(
        children: [
          const Expanded(
            flex: 1,
            child: SizedBox(
              height: 10,
            ),
          )
        ],
      )
    )
  }
}
