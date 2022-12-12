import 'package:flutter/material.dart';
import '../controller/controller.dart';

class SubtractScreen extends StatelessWidget {
  const SubtractScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int sub = 4;
    final counterState = CounterState.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Text('$sub - ${counterState.count} = ')),
        Container(
            color: Colors.green,
            width: 50,
            height: 50,
            child: Center(child: Text('${sub - counterState.count}'))),
      ],
    );
  }
}
