import 'package:flutter/material.dart';
import 'package:scientific_calc/features/home/widgets/calculator_button.dart';
import 'package:scientific_calc/ui/themes/calculator_theme.dart';

class ScientificKeypad extends StatelessWidget {
  final Function(String) onButtonPressed;

  const ScientificKeypad({
    Key? key,
    required this.onButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CalculatorButton(
              text: 'sin',
              onPressed: () => onButtonPressed('sin('),
              backgroundColor: CalculatorTheme.functionColor,
              textStyle: CalculatorTheme.functionButtonTextStyle,
            ),
            CalculatorButton(
              text: 'cos',
              onPressed: () => onButtonPressed('cos('),
              backgroundColor: CalculatorTheme.functionColor,
              textStyle: CalculatorTheme.functionButtonTextStyle,
            ),
            CalculatorButton(
              text: 'tan',
              onPressed: () => onButtonPressed('tan('),
              backgroundColor: CalculatorTheme.functionColor,
              textStyle: CalculatorTheme.functionButtonTextStyle,
            ),
            CalculatorButton(
              text: 'π',
              onPressed: () => onButtonPressed('π'),
              backgroundColor: CalculatorTheme.functionColor,
            ),
          ],
        ),
        Row(
          children: [
            CalculatorButton(
              text: 'log',
              onPressed: () => onButtonPressed('log('),
              backgroundColor: CalculatorTheme.functionColor,
              textStyle: CalculatorTheme.functionButtonTextStyle,
            ),
            CalculatorButton(
              text: 'ln',
              onPressed: () => onButtonPressed('ln('),
              backgroundColor: CalculatorTheme.functionColor,
              textStyle: CalculatorTheme.functionButtonTextStyle,
            ),
            CalculatorButton(
              text: '√',
              onPressed: () => onButtonPressed('√('),
              backgroundColor: CalculatorTheme.functionColor,
            ),
            CalculatorButton(
              text: '^',
              onPressed: () => onButtonPressed('^'),
              backgroundColor: CalculatorTheme.functionColor,
            ),
          ],
        ),
        Row(
          children: [
            CalculatorButton(
              text: '(',
              onPressed: () => onButtonPressed('('),
              backgroundColor: CalculatorTheme.functionColor,
            ),
            CalculatorButton(
              text: ')',
              onPressed: () => onButtonPressed(')'),
              backgroundColor: CalculatorTheme.functionColor,
            ),
            CalculatorButton(
              text: '!',
              onPressed: () => onButtonPressed('!'),
              backgroundColor: CalculatorTheme.functionColor,
            ),
            CalculatorButton(
              text: 'DEL',
              onPressed: () => onButtonPressed('DEL'),
              backgroundColor: CalculatorTheme.functionColor,
            ),
          ],
        ),
      ],
    );
  }
}
