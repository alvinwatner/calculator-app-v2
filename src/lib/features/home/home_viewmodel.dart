import 'package:scientific_calc/app/app.locator.dart';
import 'package:scientific_calc/features/home/calculator_repository.dart';
import 'package:scientific_calc/models/calculation_result.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  final _calculatorRepository = locator<CalculatorRepository>();

  String _expression = '';
  String _result = '0';
  bool _isError = false;
  bool _showScientific = false;

  String get expression => _expression;
  String get result => _result;
  bool get isError => _isError;
  bool get showScientific => _showScientific;

  void toggleScientific() {
    _showScientific = !_showScientific;
    notifyListeners();
  }

  void onButtonPressed(String value) {
    switch (value) {
      case 'C':
        _clear();
        break;
      case 'DEL':
        _delete();
        break;
      case '=':
        _calculate();
        break;
      case '±':
        _toggleSign();
        break;
      default:
        _appendValue(value);
    }
    notifyListeners();
  }

  void _clear() {
    _expression = '';
    _result = '0';
    _isError = false;
  }

  void _delete() {
    if (_expression.isNotEmpty) {
      _expression = _expression.substring(0, _expression.length - 1);
      if (_expression.isEmpty) {
        _result = '0';
      } else {
        _calculate(silent: true);
      }
    }
  }

  void _calculate({bool silent = false}) {
    if (_expression.isEmpty) return;

    final calculationResult = _calculatorRepository.calculate(_expression);
    _result = calculationResult.result;
    _isError = calculationResult.isError;

    if (!silent && !_isError) {
      _expression = _result;
    }
  }

  void _toggleSign() {
    if (_expression.startsWith('-')) {
      _expression = _expression.substring(1);
    } else {
      _expression = '-$_expression';
    }
    _calculate(silent: true);
  }

  void _appendValue(String value) {
    _expression += value;
    _calculate(silent: true);
  }
}
