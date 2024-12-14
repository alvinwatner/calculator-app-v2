import 'package:scientific_calc/models/calculation_result.dart';
import 'package:scientific_calc/services/calculator_service.dart';

class CalculatorRepository {
  final CalculatorService _calculatorService;

  CalculatorRepository(this._calculatorService);

  CalculationResult calculate(String expression) {
    return _calculatorService.calculate(expression);
  }

  bool isValidExpression(String expression) {
    return _calculatorService.isValidExpression(expression);
  }
}
