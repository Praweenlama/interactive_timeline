// import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Used stae notifier provider to manage the state of the counter instead of using ChangeNotifierProvider
class CounterModel extends StateNotifier<int> {
  // int count;

  // CounterModel({required this.count});
  CounterModel() : super(0); // Initialize state to 0

  void increment() {
    state++;
    // notifyListeners(); // notifies widgets to rebuild
  }

  void decrement() {
    state--;
    // notifyListeners(); // notifies widgets to rebuild
  }
}
