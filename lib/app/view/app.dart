import 'package:flutter/material.dart';
import 'package:sabor_app/forgot_password/views/forgot_password_page.dart';
// import 'package:sabor_app/counter/counter.dart';
import 'package:sabor_app/l10n/l10n.dart';
import 'package:sabor_app/login/views/login_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
        fontFamily: 'Poppins',
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const ForgotPasswordPage(),
    );
  }
}
