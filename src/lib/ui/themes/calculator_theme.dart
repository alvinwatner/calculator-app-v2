import 'package:flutter/material.dart';

class CalculatorTheme {
  static const Color primaryColor = Colors.blue;
  static const Color secondaryColor = Colors.orange;
  static const Color backgroundColor = Color(0xFF1C1C1C);
  static const Color displayColor = Color(0xFF2C2C2C);
  static const Color operatorColor = Color(0xFFFF9500);
  static const Color functionColor = Color(0xFF505050);
  static const Color numberColor = Color(0xFF323232);
  static const Color textColor = Colors.white;
  static const Color errorColor = Colors.red;

  static const TextStyle displayTextStyle = TextStyle(
    fontSize: 48,
    color: textColor,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle expressionTextStyle = TextStyle(
    fontSize: 24,
    color: Colors.grey,
  );

  static const TextStyle buttonTextStyle = TextStyle(
    fontSize: 24,
    color: textColor,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle functionButtonTextStyle = TextStyle(
    fontSize: 20,
    color: textColor,
    fontWeight: FontWeight.w500,
  );

  static ButtonStyle calculatorButtonStyle = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    padding: const EdgeInsets.all(20),
  );
}
