import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        child: Column(children: [
      Flexible(
          flex: 8,
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 40.0,
            ),
            child: Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: [
                    TextSpan(
                        text: 'Welcome',
                        style: TextStyle(
                          fontSize: 45.0,
                          fontWeight: FontWeight.w600,
                        )),
                    TextSpan(
                        text: 'Enter your details',
                        style: TextStyle(
                          fontSize: 20,
                        ))
                  ],
                ),
              ),
            ),
          )),
      Flexible(
          flex: 1,
          child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  const Expanded(
                    child: WelcomeButton(
                      buttonText: 'Sign In',
                      onTap: SignInScreen(),
                      color: Colors.transparent,
                      textColor: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: WelcomeButton(
                      buttonText: 'Sign Up',
                      onTap: const SignUpScreen(),
                      color: Colors.white,
                      textColor: lightColorScheme.primary,
                    ),
                  ),
                ],
              )))
    ]));
  }
}
