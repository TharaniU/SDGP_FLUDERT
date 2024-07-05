import 'package:flutter/material.dart';
import 'package:sdgp_fludert/screens/signup_screen.dart';
import 'package:sdgp_fludert/theme/theme.dart';
import 'package:sdgp_fludert/widgets/welcome_button.dart';
import 'package:sdgp_fludert/screens/signin_screen.dart';
//import 'package:login_signup/widgets/custom_scaffold.dart';

import '../widgets/custom_scaffold.dart';

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
                        text: 'Welcome\n',
                        style: TextStyle(
                          fontSize: 45.0,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 5, 42, 121),
                        )),
                    TextSpan(
                        text: 'Enter your details and login to FLUDERT',
                        style: TextStyle(
                          color: Color.fromARGB(255, 5, 42, 121),
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
