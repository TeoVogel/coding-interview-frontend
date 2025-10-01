import 'package:el_dorado/presentation/pages/exchange_rate_calculator/exchange_rate_calculator_screen.dart';
import 'package:el_dorado/presentation/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ElDoradoTheme.theme,
      home: ExchangeRateCalculatorScreen(),
    );
  }
}
