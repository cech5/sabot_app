import 'package:flutter/material.dart';
import 'package:sabor_app/login/views/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: LoginPage());

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginForm(),
    );
  }
}
