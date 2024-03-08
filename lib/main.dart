import 'package:first_flutter/pages/currency_convert_material.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Stateless widget does not have any states.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Build context has to be there to provide some main things.

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConvertMaterialPage(),
    );
  }
}