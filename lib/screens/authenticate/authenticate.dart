import 'package:brew_crew/screens/authenticate/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:brew_crew/screens/authenticate/register.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({super.key});


  @override
  // ignore: library_private_types_in_public_api
  _AuthenticateState createState() =>  _AuthenticateState();
}

class  _AuthenticateState extends State <Authenticate> {

  bool showSignIn = true;
  void toggleView () {
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