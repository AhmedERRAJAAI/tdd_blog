import 'package:flutter/material.dart';
import 'package:tdd_blog/core/theme/color_pallete.dart';

class AuthGredientBtn extends StatelessWidget {
  final String btnText;
  final VoidCallback onPressed;
  const AuthGredientBtn({super.key, required this.btnText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [
            AppPallete.gradient1,
            AppPallete.gradient3
          ], begin: Alignment.bottomLeft, end: Alignment.topRight),
          borderRadius: BorderRadius.circular(8)),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(fixedSize: const Size(395, 55), backgroundColor: Colors.transparent, shadowColor: Colors.transparent),
        child: Text(
          btnText,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
