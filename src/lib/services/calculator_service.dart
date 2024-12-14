import 'package:scientific_calc/models/calculation_result.dart';
import 'package:scientific_calc/utils/calculator_utils.dart';
import 'package:scientific_calc/utils/math_operations.dart';

class CalculatorService {
  CalculationResult calculate(String expression) {
    try {
      if (expression.isEmpty) {
        return CalculationResult.empty();
      }

      final sanitizedExpression =
          CalculatorUtils.sanitizeExpression(expression);
      final result = MathOperations.evaluate(sanitizedExpression);

      return CalculationResult(
        expression: CalculatorUtils.beautifyExpression(expression),
        result: CalculatorUtils.formatNumber(result),
      );
    } catch (e) {
      return CalculationResult.error('Error');
    }
  }

  bool isValidExpression(String expression) {
    try {
      if (expression.isEmpty) return true;
      final sanitizedExpression =
          CalculatorUtils.sanitizeExpression(expression);
      MathOperations.evaluate(sanitizedExpression);
      return true;
    } catch (e) {
      return false;
    }
  }
}
