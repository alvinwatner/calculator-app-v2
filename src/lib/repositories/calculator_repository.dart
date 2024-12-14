import 'package:stacked/stacked.dart';
import '../services/calculator_service.dart';
import '../app/app.locator.dart';
import '../models/calculation_result.dart';

class CalculatorRepository {
  final _calculatorService = locator<CalculatorService>();
  
  CalculatorRepository();

  // Calculate method that returns CalculationResult
  CalculationResult calculate(String expression) {
    return _calculatorService.calculate(expression);
  }

  // Method to validate expression
  bool isValidExpression(String expression) {
    return _calculatorService.isValidExpression(expression);
  }
}