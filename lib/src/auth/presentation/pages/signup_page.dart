import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tdd_blog/core/theme/color_pallete.dart';
import 'package:tdd_blog/src/auth/presentation/bloc/auth_bloc.dart';
import 'package:tdd_blog/src/auth/presentation/pages/login_page.dart';
import 'package:tdd_blog/src/auth/presentation/widgets/auth_field.dart';

import '../widgets/auth_gredient_btn.dart';

class SignUpPage extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const SignUpPage(),
      );
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    nameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "Sign Up.",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                AuthField(hintText: "Email", controller: emailController),
                const SizedBox(height: 10),
                AuthField(
                  hintText: "Name",
                  controller: nameController,
                ),
                const SizedBox(height: 10),
                AuthField(hintText: "Password", controller: passwordController, isObscureText: true),
                const SizedBox(height: 30),
                AuthGredientBtn(
                  btnText: "Sign Up",
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      context.read<AuthBloc>().add(
                            AuthSignUp(
                              email: emailController.value.toString().trim(),
                              name: nameController.value.toString().trim(),
                              password: passwordController.value.toString().trim(),
                            ),
                          );
                    }
                  },
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      LoginPage.route(),
                    );
                  },
                  child: RichText(
                    text: TextSpan(
                      text: "Already have an account?",
                      style: Theme.of(context).textTheme.titleMedium,
                      children: [
                        TextSpan(
                          text: " Sign In",
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                color: AppPallete.gradient2,
                                fontWeight: FontWeight.bold,
                              ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
