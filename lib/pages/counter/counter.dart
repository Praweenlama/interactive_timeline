import 'package:flutter/material.dart';
import 'package:interactive_timeline/pages/counter/count.dart';
import 'package:provider/provider.dart';

class MyCounter extends StatelessWidget {
  const MyCounter({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context); // Access the state

    return Row(
      children: [
        SizedBox(width: 20),
        ElevatedButton(
          onPressed: () {
            counter.increment();
          },
          child: Text("Increment Counter"),
        ),
        SizedBox(width: 20),
        ElevatedButton(
          onPressed: () {
            counter.decrement();
          },
          child: Text("Decrement Counter"),
        ),
        SizedBox(width: 20),
        Text(
          "Counter: ${counter.count}",
          style: TextStyle(
            color: Colors.black,
            decoration: TextDecoration.none,
          ),
        ),
      ],
    );
  }
}
