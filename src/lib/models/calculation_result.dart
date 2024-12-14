import 'package:equatable/equatable.dart';

class CalculationResult extends Equatable {
  final String expression;
  final String result;
  final bool isError;

  const CalculationResult({
    required this.expression,
    required this.result,
    this.isError = false,
  });

  factory CalculationResult.empty() {
    return const CalculationResult(
      expression: '',
      result: '0',
      isError: false,
    );
  }

  factory CalculationResult.error(String message) {
    return CalculationResult(
      expression: '',
      result: message,
      isError: true,
    );
  }

  CalculationResult copyWith({
    String? expression,
    String? result,
    bool? isError,
  }) {
    return CalculationResult(
      expression: expression ?? this.expression,
      result: result ?? this.result,
      isError: isError ?? this.isError,
    );
  }

  @override
  List<Object?> get props => [expression, result, isError];
}
