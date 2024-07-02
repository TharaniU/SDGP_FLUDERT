import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SigninScreen> {
  final _fromSignInKey = GlobalKey<FormState>();
  bool rememberPassword = true;
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          const Expanded(
            flex: 1,
            child: SizedBox(
              height: 10,
            ),
          ),
          Expanded(
              flex: 7,
              child: Container(
                padding: const EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 20.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
                child: SingleChildScrollView(
                    child: Form(
                        key: _fromSignInKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Welcome Back',
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.w900,
                                color: lightColorScheme.primary,
                              ),
                            ),
                            const SizedBox(
                              height: 40.0,
                            ),
                            TextFormField(
                              validator: (value) {
                                if (value == null || value.isNotEmpty) {
                                  return 'Please enter your Email';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                label: const Text('Email'),
                                hintText: 'Enter Email',
                                hintStyle: const TextStyle(
                                  color: Colors.black26,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.black12,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 25.0,
                            ),
                            TextFormField(
                              obscureText: true,
                              obscuringCharacter: '*',
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter Password';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                label: const Text('Password'),
                                hintText: 'Enter Password',
                                helperStyle: const TextStyle(
                                  color: Colors.black26,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.black12,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 25.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                      value: rememberPassword,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          rememberPassword = value!;
                                        });
                                      },
                                      activeColor: lightColorScheme.primary,
                                    ),
                                    const Text(
                                      'Remember Me',
                                      style: TextStyle(
                                        color: Colors.black45,
                                      ),
                                    )
                                  ],
                                ),
                                GestureDetector(
                                  child: Text(
                                    'Forget Password?',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: lightClorScheme.primary,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ))),
              ))
        ],
      ),
    );
  }
}
