import 'package:eldepizza/screens/forgot_password/components/body.dart';
import 'package:flutter/material.dart';

class ForgortPasswordScreen extends StatelessWidget {
  const ForgortPasswordScreen({super.key});
  static String routeName = '/forgot_password';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Forgot Password',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      body: const Body(),
    );
  }
}
