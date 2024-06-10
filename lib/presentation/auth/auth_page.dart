import 'package:flutter/material.dart';
import '../screen/login_screen.dart';
import '../screen/registration_screen.dart';

class AuthPage extends StatefulWidget {
  AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool _showScreen = true;
  void showScreen() {
    setState(() {
      _showScreen = !_showScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_showScreen) {
      return LoginScreen(showScreen);
    } else {
      return RegistrationScreen(showScreen);
    }
  }
}
