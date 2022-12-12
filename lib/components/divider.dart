import 'package:flutter/material.dart';
import '../controller/controller.dart';

class DividerScreen extends StatelessWidget {
  const DividerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterState = CounterState.of(context);
    int div = 6;
    num result = div / counterState.count;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Text('$div / ${counterState.count} = ')),
        Container(
            color: Colors.green,
            width: 50,
            height: 50,
            child: Center(child: Text(result.toStringAsFixed(2)))),
      ],
    );
  }
}
