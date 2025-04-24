import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:interactive_timeline/pages/counter/riverpod_model.dart';
// import 'package:interactive_timeline/pages/counter/count.dart';

class MyCounter extends ConsumerWidget {
  const MyCounter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final counter = Provider.of<Counter>(context); // Access the state

    return Row(
      children: [
        SizedBox(width: 20),
        ElevatedButton(
          onPressed: () {
            // counter.increment();
            ref
                .read(riverpod)
                .increment(); // Access the state and call increment
          },
          child: Text("Increment Counter"),
        ),
        SizedBox(width: 20),
        ElevatedButton(
          onPressed: () {
            // counter.decrement();
            ref
                .read(riverpod)
                .decrement(); // Access the state and call decrement
          },
          child: Text("Decrement Counter"),
        ),
        SizedBox(width: 20),
        Text(
          // counter using the riverpod package
          "Counter: ${ref.watch(riverpod).count.toString()}",
          style: TextStyle(
            color: Colors.black,
            decoration: TextDecoration.none,
          ),
        ),
      ],
    );
  }
}
