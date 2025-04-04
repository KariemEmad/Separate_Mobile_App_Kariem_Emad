import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/authenticate/register.dart';
import 'package:flutter_application_1/screens/authenticate/sign_in.dart';

// authenticate file is the wrapper foe Sign in & Register

class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;
  void toggleView() {
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return SignIn(toggleView: toggleView);
    } else {
      return Register(toggleView: toggleView);
    }
  }
}
