import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterModel extends ChangeNotifier {
  int count;

  CounterModel({required this.count});
  // CounterNotifier() : super(0); // Initialize with 0

  void increment() {
    count++;
    notifyListeners(); // notifies widgets to rebuild
  }

  void decrement() {
    count--;
    notifyListeners(); // notifies widgets to rebuild
  }
}
