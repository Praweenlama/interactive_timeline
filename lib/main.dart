import 'package:flutter/material.dart';
// import 'package:interactive_timeline/pages/counter/count.dart';
import 'package:interactive_timeline/pages/home/home.dart';
// import 'package:provider/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(child: MainApp()),
    // ChangeNotifierProvider(
    //   create: (context) => Counter(),
    //   child: const MainApp(),
    // ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}
