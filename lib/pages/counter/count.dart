import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int _count = 1;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners(); // notifies widgets to rebuild
  }

  void decrement() {
    _count--;
    notifyListeners(); // notifies widgets to rebuild
  }
}
