import 'package:flutter/material.dart';
import 'package:smaglator_web/sign_in.dart';
import 'package:smaglator_web/sign_up.dart';

class LoginAndSignUp extends StatefulWidget {
  const LoginAndSignUp({super.key});

  @override
  State<LoginAndSignUp> createState() => _LoginAndSignUpState();
}

class _LoginAndSignUpState extends State<LoginAndSignUp> {
  bool islogin = true;
  void togglePage() {
    setState(() {
      islogin = !islogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (islogin) {
      return SignIn(
        onPressed: togglePage,
      );
    } else {
      return SignUp(
        onPressed: togglePage,
      );
    }
  }
}
