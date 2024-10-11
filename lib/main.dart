 import 'package:auth_practice/modules/auth/changes_password.dart';
import 'package:auth_practice/modules/auth/code_validation.dart';
import 'package:auth_practice/modules/auth/login.dart';
import 'package:auth_practice/modules/auth/recover_password.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Login(),
        '/recover-password': (context) => const RecoverPassword(),
        '/change-password': (context) => const ChangePassword(),
        '/code-validation': (context) => const CodeValidation(),
      },
    );
  }
}