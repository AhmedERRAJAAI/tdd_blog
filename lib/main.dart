import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:tdd_blog/src/auth/presentation/pages/login_page.dart';
import 'package:tdd_blog/core/theme/theme.dart';
import 'core/secrets/app_secrets.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final supabase = await Supabase.initialize(url: AppSecrets.supabaseUrl, anonKey: AppSecrets.supabaseApi);
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
      home: const LoginPage(),
    );
  }
}
