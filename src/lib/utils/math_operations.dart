import 'dart:math' as math;

class MathOperations {
  static double evaluate(String expression) {
    try {
      // Basic arithmetic operations
      if (expression.contains('+')) {
        final parts = expression.split('+');
        return evaluate(parts[0]) + evaluate(parts[1]);
      }
      if (expression.contains('-', 1)) {
        final parts = expression.split('-');
        return evaluate(parts[0]) - evaluate(parts[1]);
      }
      if (expression.contains('*')) {
        final parts = expression.split('*');
        return evaluate(parts[0]) * evaluate(parts[1]);
      }
      if (expression.contains('/')) {
        final parts = expression.split('/');
        final divisor = evaluate(parts[1]);
        if (divisor == 0) throw Exception('Division by zero');
        return evaluate(parts[0]) / divisor;
      }

      // Scientific operations
      if (expression.startsWith('sin')) {
        return math
            .sin(evaluate(expression.substring(4, expression.length - 1)));
      }
      if (expression.startsWith('cos')) {
        return math
            .cos(evaluate(expression.substring(4, expression.length - 1)));
      }
      if (expression.startsWith('tan')) {
        return math
            .tan(evaluate(expression.substring(4, expression.length - 1)));
      }
      if (expression.startsWith('log')) {
        return math
                .log(evaluate(expression.substring(4, expression.length - 1))) /
            math.ln10;
      }
      if (expression.startsWith('ln')) {
        return math
            .log(evaluate(expression.substring(3, expression.length - 1)));
      }
      if (expression.startsWith('sqrt')) {
        return math
            .sqrt(evaluate(expression.substring(5, expression.length - 1)));
      }
      if (expression.contains('^')) {
        final parts = expression.split('^');
        return math.pow(evaluate(parts[0]), evaluate(parts[1])).toDouble();
      }
      if (expression.contains('!')) {
        final number = evaluate(expression.replaceAll('!', '')).toInt();
        return factorial(number).toDouble();
      }
      if (expression.contains('pi')) {
        return math.pi;
      }

      // Parse number
      return double.parse(expression);
    } catch (e) {
      throw Exception('Invalid expression');
    }
  }

  static int factorial(int n) {
    if (n < 0) throw Exception('Factorial not defined for negative numbers');
    if (n == 0 || n == 1) return 1;
    return n * factorial(n - 1);
  }
}
