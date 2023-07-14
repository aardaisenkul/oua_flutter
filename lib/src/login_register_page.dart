import 'package:flutter/material.dart';
import 'package:high_paw/src/loginPage.dart';
import 'package:high_paw/src/signup.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

bool showLoginPage = true;

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(
        onTap: togglePages,
      );
    } else {
      return SignUpPage(
        onTap: togglePages,
      );
    }
  }
}
