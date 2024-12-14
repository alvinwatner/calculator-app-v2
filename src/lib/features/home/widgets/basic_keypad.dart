import 'package:flutter/material.dart';
import 'package:scientific_calc/features/home/widgets/calculator_button.dart';
import 'package:scientific_calc/ui/themes/calculator_theme.dart';

class BasicKeypad extends StatelessWidget {
  final Function(String) onButtonPressed;

  const BasicKeypad({
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
              text: 'C',
              onPressed: () => onButtonPressed('C'),
              backgroundColor: CalculatorTheme.functionColor,
            ),
            CalculatorButton(
              text: '±',
              onPressed: () => onButtonPressed('±'),
              backgroundColor: CalculatorTheme.functionColor,
            ),
            CalculatorButton(
              text: '%',
              onPressed: () => onButtonPressed('%'),
              backgroundColor: CalculatorTheme.functionColor,
            ),
            CalculatorButton(
              text: '÷',
              onPressed: () => onButtonPressed('÷'),
              backgroundColor: CalculatorTheme.operatorColor,
            ),
          ],
        ),
        Row(
          children: [
            CalculatorButton(
              text: '7',
              onPressed: () => onButtonPressed('7'),
            ),
            CalculatorButton(
              text: '8',
              onPressed: () => onButtonPressed('8'),
            ),
            CalculatorButton(
              text: '9',
              onPressed: () => onButtonPressed('9'),
            ),
            CalculatorButton(
              text: '×',
              onPressed: () => onButtonPressed('×'),
              backgroundColor: CalculatorTheme.operatorColor,
            ),
          ],
        ),
        Row(
          children: [
            CalculatorButton(
              text: '4',
              onPressed: () => onButtonPressed('4'),
            ),
            CalculatorButton(
              text: '5',
              onPressed: () => onButtonPressed('5'),
            ),
            CalculatorButton(
              text: '6',
              onPressed: () => onButtonPressed('6'),
            ),
            CalculatorButton(
              text: '-',
              onPressed: () => onButtonPressed('-'),
              backgroundColor: CalculatorTheme.operatorColor,
            ),
          ],
        ),
        Row(
          children: [
            CalculatorButton(
              text: '1',
              onPressed: () => onButtonPressed('1'),
            ),
            CalculatorButton(
              text: '2',
              onPressed: () => onButtonPressed('2'),
            ),
            CalculatorButton(
              text: '3',
              onPressed: () => onButtonPressed('3'),
            ),
            CalculatorButton(
              text: '+',
              onPressed: () => onButtonPressed('+'),
              backgroundColor: CalculatorTheme.operatorColor,
            ),
          ],
        ),
        Row(
          children: [
            CalculatorButton(
              text: '0',
              onPressed: () => onButtonPressed('0'),
              isWide: true,
            ),
            CalculatorButton(
              text: '.',
              onPressed: () => onButtonPressed('.'),
            ),
            CalculatorButton(
              text: '=',
              onPressed: () => onButtonPressed('='),
              backgroundColor: CalculatorTheme.operatorColor,
            ),
          ],
        ),
      ],
    );
  }
}
