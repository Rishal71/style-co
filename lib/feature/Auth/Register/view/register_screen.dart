import 'package:flutter/material.dart';
import 'package:style_co/common/widgets/authBackround.dart';
import 'package:style_co/feature/Auth/Register/widget/registerField.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Register",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Container(width: double.infinity, child: RegisterFormWidget()),
          ],
        ),
      ),
    );
  }
}
