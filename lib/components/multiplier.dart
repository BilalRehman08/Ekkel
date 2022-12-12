import 'package:flutter/material.dart';
import '../controller/controller.dart';

class MultiplierScreen extends StatelessWidget {
  const MultiplierScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int mul = -5;
    final counterState = CounterState.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Text('$mul * ${counterState.count} = ')),
        Container(
            color: Colors.green,
            width: 50,
            height: 50,
            child: Center(child: Text('${mul * counterState.count}'))),
      ],
    );
  }
}
