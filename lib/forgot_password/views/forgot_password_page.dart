import 'package:flutter/material.dart';
import 'package:sabor_app/forgot_password/views/forgot_password_view.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  static MaterialPageRoute route() => MaterialPageRoute(
        builder: (context) => const ForgotPasswordPage(),
      );

  @override
  Widget build(BuildContext context) {
    return const ForgotPasswordView();
  }
}
