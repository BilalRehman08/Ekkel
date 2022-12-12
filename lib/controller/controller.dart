import 'package:flutter/material.dart';
import '../../main.dart';

class CounterController extends StatefulWidget {
  const CounterController({super.key});
  @override
  State<CounterController> createState() => _CounterControllerState();
}

class _CounterControllerState extends State<CounterController> {
  int count = 7;

  void incrementer() {
    setState(() {
      count++;
    });
  }

  void decrementer() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CounterState(
      count: count,
      incrementer: incrementer,
      decrementer: decrementer,
      child: const MyApp(),
    );
  }
}

class CounterState extends InheritedWidget {
  const CounterState(
      {Key? key,
      required this.count,
      required this.incrementer,
      required this.decrementer,
      required Widget child})
      : super(key: key, child: child);

  final int count;
  final Function incrementer;
  final Function decrementer;

  @override
  bool updateShouldNotify(CounterState oldWidget) {
    return count != oldWidget.count;
  }

  static of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterState>();
  }
}
