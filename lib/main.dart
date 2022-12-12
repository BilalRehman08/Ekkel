import 'package:flutter/material.dart';
import 'package:ekkel_test/components/counter.dart';
import 'package:ekkel_test/components/divider.dart';
import 'package:ekkel_test/components/subtract.dart';
import 'components/multiplier.dart';
import 'controller/controller.dart';

void main() {
  runApp(
    const MaterialApp(
      home: CounterController(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          MultiplierScreen(),
          SubtractScreen(),
          DividerScreen(),
          CounterScreen(),
        ],
      ),
    );
  }
}
