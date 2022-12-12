import 'package:flutter/material.dart';
import '../controller/controller.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterState = CounterState.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: counterState.decrementer,
          child: const Text("-"),
        ),
        Text('${counterState.count}'),
        ElevatedButton(
          onPressed: counterState.incrementer,
          child: const Text('+'),
        ),
      ],
    );
  }
}
