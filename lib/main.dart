import 'package:flutter/material.dart';
import 'package:tdd_blog/src/auth/presentation/pages/signup_page.dart';
import 'package:tdd_blog/core/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TDD TUTORIEL',
      theme: AppTheme.darkThemeMode,
      home: SignUpPage(),
    );
  }
}
