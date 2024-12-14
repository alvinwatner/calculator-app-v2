import 'package:flutter/material.dart';
import 'package:scientific_calc/ui/themes/calculator_theme.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final bool isWide;
  final TextStyle? textStyle;

  const CalculatorButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.isWide = false,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: isWide ? 2 : 1,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ElevatedButton(
          style: CalculatorTheme.calculatorButtonStyle.copyWith(
            backgroundColor: MaterialStateProperty.all(
              backgroundColor ?? CalculatorTheme.numberColor,
            ),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: textStyle ?? CalculatorTheme.buttonTextStyle,
          ),
        ),
      ),
    );
  }
}
