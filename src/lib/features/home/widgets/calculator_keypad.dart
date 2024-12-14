import 'package:flutter/material.dart';
import 'package:scientific_calc/features/home/widgets/basic_keypad.dart';
import 'package:scientific_calc/features/home/widgets/scientific_keypad.dart';

class CalculatorKeypad extends StatelessWidget {
  final Function(String) onButtonPressed;
  final bool showScientific;

  const CalculatorKeypad({
    Key? key,
    required this.onButtonPressed,
    required this.showScientific,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (showScientific) ...[
          ScientificKeypad(onButtonPressed: onButtonPressed),
          const SizedBox(height: 8),
        ],
        BasicKeypad(onButtonPressed: onButtonPressed),
      ],
    );
  }
}
