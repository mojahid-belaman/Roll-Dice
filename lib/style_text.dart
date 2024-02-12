import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  const StyleText(this.str, {super.key});

  final String str;

  @override
  Widget build(context) {
    return Text(
      str,
      style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
          wordSpacing: 10,
          letterSpacing: 5,
          fontWeight: FontWeight.bold),
    );
  }
}
