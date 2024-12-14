import 'package:flutter/material.dart';
import 'package:scientific_calc/ui/themes/calculator_theme.dart';

class CalculatorDisplay extends StatelessWidget {
  final String expression;
  final String result;
  final bool isError;

  const CalculatorDisplay({
    Key? key,
    required this.expression,
    required this.result,
    this.isError = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: CalculatorTheme.displayColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            expression,
            style: CalculatorTheme.expressionTextStyle,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 8),
          Text(
            result,
            style: CalculatorTheme.displayTextStyle.copyWith(
              color: isError
                  ? CalculatorTheme.errorColor
                  : CalculatorTheme.textColor,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
