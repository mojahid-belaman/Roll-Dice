import 'package:flutter/material.dart';
import 'package:first_app/gradiant_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        body: GradientContainer([
          Colors.deepPurple,
          Colors.purple,
        ]),
      ),
    ),
  );
}
