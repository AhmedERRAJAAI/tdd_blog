import 'package:flutter/material.dart';
import 'package:tdd_blog/core/color_pallete.dart';

class AuthGredientBtn extends StatelessWidget {
  final String btnText;
  const AuthGredientBtn({super.key, required this.btnText});

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
        onPressed: () {},
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
