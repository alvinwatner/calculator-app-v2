class CalculatorUtils {
  static bool isOperator(String value) {
    return ['+', '-', '×', '÷', '^', '%'].contains(value);
  }

  static bool isFunction(String value) {
    return ['sin', 'cos', 'tan', 'log', 'ln', '√', '!'].contains(value);
  }

  static String formatNumber(double number) {
    if (number == number.toInt()) {
      return number.toInt().toString();
    }
    return number.toString();
  }

  static String sanitizeExpression(String expression) {
    return expression
        .replaceAll('×', '*')
        .replaceAll('÷', '/')
        .replaceAll('π', 'pi')
        .replaceAll('√', 'sqrt');
  }

  static bool isScientificOperator(String value) {
    return ['sin', 'cos', 'tan', 'log', 'ln', '√', 'π', '!', '^']
        .contains(value);
  }

  static String beautifyExpression(String expression) {
    return expression
        .replaceAll('*', '×')
        .replaceAll('/', '÷')
        .replaceAll('pi', 'π')
        .replaceAll('sqrt', '√');
  }
}
