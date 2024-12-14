import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:scientific_calc/features/home/home_viewmodel.dart';
import 'package:scientific_calc/features/home/widgets/calculator_display.dart';
import 'package:scientific_calc/features/home/widgets/calculator_keypad.dart';
import 'package:scientific_calc/ui/themes/calculator_theme.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: CalculatorTheme.backgroundColor,
      appBar: AppBar(
        title: const Text('Scientific Calculator'),
        backgroundColor: CalculatorTheme.backgroundColor,
        actions: [
          IconButton(
            icon: Icon(
              viewModel.showScientific ? Icons.science : Icons.calculate,
              color: CalculatorTheme.primaryColor,
            ),
            onPressed: viewModel.toggleScientific,
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              CalculatorDisplay(
                expression: viewModel.expression,
                result: viewModel.result,
                isError: viewModel.isError,
              ),
              const SizedBox(height: 16),
              Expanded(
                child: CalculatorKeypad(
                  onButtonPressed: viewModel.onButtonPressed,
                  showScientific: viewModel.showScientific,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();
}
